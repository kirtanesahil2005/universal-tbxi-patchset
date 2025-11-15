#include <LowMem.h>
#include <MixedMode.h>
#include <Gestalt.h>

// Grab these from driverservices
typedef UnsignedWide                    Nanoseconds;
/*
 *  UpTime()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 */
EXTERN_API_C( AbsoluteTime )
UpTime(void);


/*
 *  DurationToAbsolute()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 */
EXTERN_API_C( AbsoluteTime )
DurationToAbsolute(Duration duration);


/*
 *  AbsoluteToDuration()
 *  
 *  Availability:
 *    Non-Carbon CFM:   not available
 *    CarbonLib:        not available
 *    Mac OS X:         not available
 */
EXTERN_API_C( Duration )
AbsoluteToDuration(AbsoluteTime time);

EXTERN_API_C( AbsoluteTime )
AddNanosecondsToAbsolute        (Nanoseconds            nanoseconds,
                                 AbsoluteTime           absoluteTime);
								 
EXTERN_API_C( void )
DebugStr68k						(ConstStr255Param 		debuggerMsg);

EXTERN_API_C( void )
Debugger68k						(void);

// ASM functions:
extern void asmTrap37(AbsoluteTime delay);
extern void asmSaveFloatAltiVec(void* context);
extern void asmSaveFloat(void* context);
extern void asmRestoreFloatAltiVec(void* context);
extern void asmRestoreFloat(void* context);

typedef struct {
	UInt32 unk1, dword_4, unk2, dword_C;
} ExceptionHandlerUnknown;

typedef union {
	UInt8* byte;
	UInt32* dword;
} TablePtr;

typedef struct {
	UInt32 Index;
	TablePtr* table0;
	UInt32* table1;
	UInt32 unk;
	ExceptionHandlerUnknown* pUnk;
} ExceptionHandlerContext;

typedef UInt32 (*tfpExceptionHandler)(ExceptionHandlerContext* arg);

typedef struct {
	UInt32 FragContext; // 0
	UInt32 Unknown_4;
	tfpExceptionHandler ExceptionHandler; // 8
} InitValueContext;


static InitValueContext** s_InitValueContext;
static tfpExceptionHandler s_SystemExceptionHandler;
static tfpExceptionHandler s_ExceptionHandler;
UniversalProcPtr gDelayUntilProcessWakeTimeUPP;

static int s_ExceptionDispatchTable[] = {
	0, 2, 2, 13,
	1, 8, 0, 3,
	9, 10, 4, 3,
	7, 0, 5, 0,
	11, 11, 4, 3,
	7, 6, 5, 5
};

enum {
	kCProcPowerPCVoidU32 = 
		kCStackBased |
		STACK_ROUTINE_PARAMETER(1, SIZE_CODE(sizeof(UInt32))),
	kCProcPowerPCVoidU32U32U32 = 
		kCStackBased |
		STACK_ROUTINE_PARAMETER(1, SIZE_CODE(sizeof(UInt32))) |
		STACK_ROUTINE_PARAMETER(2, SIZE_CODE(sizeof(UInt32))) |
		STACK_ROUTINE_PARAMETER(3, SIZE_CODE(sizeof(UInt32)))
		
};

_Static_assert(kCProcPowerPCVoidU32 == 0xC1);
_Static_assert(kCProcPowerPCVoidU32U32U32 == 0xFC1);

#define NEW_ROUTINE_DESCRIPTOR(fptr) NewRoutineDescriptor((ProcPtr)fptr, kCProcPowerPCVoidU32, kPowerPCISA)

void DelayUntilProcessTime(UInt32 value) {
	UInt64 ns = value;
	ns *= 50000000;
	ns /= 3;
	
	AbsoluteTime upTime = UpTime();
	AbsoluteTime seconds = AddNanosecondsToAbsolute(*(Nanoseconds*)&ns, upTime);
	asmTrap37(seconds);
}

void InitProcessMgrSupport(InitValueContext** Context) {
	s_InitValueContext = Context;
}

void InitFrom68k(InitValueContext** Context, UniversalProcPtr* restoreFloat, UniversalProcPtr* saveFloat) {
	InitProcessMgrSupport(Context);
	
	THz oldZone = GetZone();
	SetZone(SystemZone());
	
	long gestaltValue;
	Boolean hasVectorInstructions = false;
	if (Gestalt(gestaltPowerPCProcessorFeatures, &gestaltValue) == noErr) {
		hasVectorInstructions = (gestaltValue & (1 << gestaltPowerPCHasVectorInstructions)) != 0;
	}
	
	if (hasVectorInstructions) {
		*restoreFloat = NEW_ROUTINE_DESCRIPTOR(asmRestoreFloatAltiVec);
		*saveFloat = NEW_ROUTINE_DESCRIPTOR(asmSaveFloatAltiVec);
	} else {
		*restoreFloat = NEW_ROUTINE_DESCRIPTOR(asmRestoreFloat);
		*saveFloat = NEW_ROUTINE_DESCRIPTOR(asmSaveFloat);
	}
	
	if (*(UInt16*)(0x68ffefe4) >= 0x105) {
		// Assume UpTime always exists in this tbxi...
		gDelayUntilProcessWakeTimeUPP = NEW_ROUTINE_DESCRIPTOR(DelayUntilProcessTime);
	}
	SetZone(oldZone);
}

UInt32 GetCurrentProcessFragContext(void) {
	if (s_InitValueContext == NULL) return 1;
	return s_InitValueContext[0]->FragContext;
}

int SystemExceptionDispatcher(UInt32* a1, ExceptionHandlerContext* ctx) {
	
	UInt32 index = ctx->Index;
	UInt32 value = s_ExceptionDispatchTable[index];
	tfpExceptionHandler handler;
	if (s_InitValueContext != NULL) {
		handler = s_InitValueContext[0]->ExceptionHandler;
	} else {
		handler = s_ExceptionHandler;
	}
	
	ExceptionHandlerUnknown unk;
	
	Boolean shouldHandle = (value != 0);
	switch (value) {
		case 0:
			break;
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
			ctx->pUnk = &unk;
			switch (index) {
				case 7:
					unk.dword_C = unk.dword_4 = 0;
					break;
				case 10:
				case 11:
				case 12:
				case 14:
					unk.dword_C = 2;
					unk.dword_4 = (UInt32)ctx->table0[5].byte;
					break;
				default:
					unk.dword_C = a1[25] & 1;
					unk.dword_4 = a1[29];
					break;
			}
			break;
		default:
			break;
	}
	
	int result = -1;
	if (shouldHandle) {
		ctx->Index = value;
		if (s_SystemExceptionHandler != NULL) result = s_SystemExceptionHandler(ctx);
		if (result == 0) return result;
		if (handler) result = handler(ctx);
		if (result == 0) return result;
		if (value == 2 && ctx->table0[5].dword[0] == 0x7F810808) {
			UInt8* str = (UInt8*)ctx->table1[7];
			if (str != NULL) DebugStr68k(str);
			else Debugger68k();
			ctx->table0[5].byte += sizeof(UInt32);
			return 0;
		}
	}
	
	a1[32] = (UInt32)ctx->table0[4].byte;
	a1[33] = (UInt32)ctx->table0[5].byte;
	a1[34] = (UInt32)ctx->table0[2].byte;
	a1[35] = (UInt32)ctx->table0[3].byte;
	a1[36] = ctx->table1[6];
	a1[37] = ctx->table1[7];
	a1[38] = ctx->table1[8];
	a1[39] = ctx->table1[9];
	return result;
}

tfpExceptionHandler InstallExceptionHandler(tfpExceptionHandler newHandler) {
	tfpExceptionHandler oldHandler;
	if (s_InitValueContext != NULL && s_InitValueContext[0] != NULL) {
		oldHandler = s_InitValueContext[0]->ExceptionHandler;
		s_InitValueContext[0]->ExceptionHandler = oldHandler;
	} else {
		oldHandler = s_ExceptionHandler;
		s_ExceptionHandler = oldHandler;
	}
	return oldHandler;
}

tfpExceptionHandler InstallSystemExceptionHandler(tfpExceptionHandler newHandler) {
	tfpExceptionHandler oldHandler = s_SystemExceptionHandler;
	s_SystemExceptionHandler = newHandler;
	return oldHandler;
}

RoutineDescriptor __start = BUILD_ROUTINE_DESCRIPTOR(kCProcPowerPCVoidU32U32U32, InitFrom68k);
