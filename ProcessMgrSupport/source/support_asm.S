	.toc
#define _LANGUAGE_ASSEMBLY
#include "asm.h"

	.csect .text[PR],5

#define CREATE_AIXCALL(x) \
	.globl x##[DS] ; \
	.globl .##x ; \
	.csect x##[DS] ; \
x##: ; \
	.long .##x, TOC[tc0], 0 ; \
	.csect .text[PR],5 ;


// =============== S U B R O U T I N E =======================================

CREATE_AIXCALL(LowLevelExceptionHandler)
.LowLevelExceptionHandler:              // DATA XREF: .rdata:LowLevelExceptionHandler↓o

.set sender_sp,  0
.set arg_40,  0x40
.set arg_44,  0x44
.set arg_48,  0x48
.set arg_4C,  0x4C
.set arg_50,  0x50
.set arg_54,  0x54
.set arg_58,  0x58
.set arg_5C,  0x5C
.set arg_64,  0x64
.set arg_6C,  0x6C
.set arg_70,  0x70
.set arg_74,  0x74
.set arg_78,  0x78
.set arg_7C,  0x7C
.set arg_98,  0x98
.set arg_9C,  0x9C
.set arg_A4,  0xA4
.set arg_AC,  0xAC
.set arg_B4,  0xB4
.set arg_BC,  0xBC
.set arg_C4,  0xC4
.set arg_CC,  0xCC
.set arg_D4,  0xD4
.set arg_DC,  0xDC
.set arg_E4,  0xE4
.set arg_EC,  0xEC
.set arg_F4,  0xF4
.set arg_FC,  0xFC
.set arg_104,  0x104
.set arg_10C,  0x10C
.set arg_114,  0x114
.set arg_11C,  0x11C
.set arg_124,  0x124
.set arg_12C,  0x12C
.set arg_134,  0x134
.set arg_13C,  0x13C
.set arg_144,  0x144
.set arg_14C,  0x14C
.set arg_154,  0x154
.set arg_15C,  0x15C
.set arg_164,  0x164
.set arg_16C,  0x16C
.set arg_174,  0x174
.set arg_17C,  0x17C
.set arg_184,  0x184
.set arg_18C,  0x18C
.set arg_194,  0x194
.set arg_198,  0x198
.set arg_1A0,  0x1A0
.set arg_1A8,  0x1A8
.set arg_1B0,  0x1B0
.set arg_1B8,  0x1B8
.set arg_1C0,  0x1C0
.set arg_1C8,  0x1C8
.set arg_1D0,  0x1D0
.set arg_1D8,  0x1D8
.set arg_1E0,  0x1E0
.set arg_1E8,  0x1E8
.set arg_1F0,  0x1F0
.set arg_1F8,  0x1F8
.set arg_200,  0x200
.set arg_208,  0x208
.set arg_210,  0x210
.set arg_218,  0x218
.set arg_220,  0x220
.set arg_228,  0x228
.set arg_230,  0x230
.set arg_238,  0x238
.set arg_240,  0x240
.set arg_248,  0x248
.set arg_250,  0x250
.set arg_258,  0x258
.set arg_260,  0x260
.set arg_268,  0x268
.set arg_270,  0x270
.set arg_278,  0x278
.set arg_280,  0x280
.set arg_288,  0x288
.set arg_290,  0x290
.set arg_298,  0x298
.set arg_2A0,  0x2A0
.set arg_4A0,  0x4A0
.set arg_4B0,  0x4B0
.set arg_4B4,  0x4B4

                mtlr      r1
                clrrwi    r1, r1, 5
                addi      r1, r1, -0x5C0
                stw       r0, arg_9C(r1)
                mflr      r0
                stw       r0, sender_sp(r1)
                stw       r0, arg_A4(r1)
                stw       r2, arg_AC(r1)
                lwz       r0, 0x94(r3)
                stw       r0, arg_B4(r1)
                lwz       r0, 0x9C(r3)
                stw       r0, arg_BC(r1)
                stw       r5, arg_C4(r1)
                stw       r6, arg_CC(r1)
                stw       r7, arg_D4(r1)
                stw       r8, arg_DC(r1)
                stw       r9, arg_E4(r1)
                stw       r10, arg_EC(r1)
                stw       r11, arg_F4(r1)
                stw       r12, arg_FC(r1)
                stw       r13, arg_104(r1)
                stw       r14, arg_10C(r1)
                stw       r15, arg_114(r1)
                stw       r16, arg_11C(r1)
                stw       r17, arg_124(r1)
                stw       r18, arg_12C(r1)
                stw       r19, arg_134(r1)
                stw       r20, arg_13C(r1)
                stw       r21, arg_144(r1)
                stw       r22, arg_14C(r1)
                stw       r23, arg_154(r1)
                stw       r24, arg_15C(r1)
                stw       r25, arg_164(r1)
                stw       r26, arg_16C(r1)
                stw       r27, arg_174(r1)
                stw       r28, arg_17C(r1)
                stw       r29, arg_184(r1)
                stw       r30, arg_18C(r1)
                stw       r31, arg_194(r1)
                stfd      f0, arg_198(r1)
                stfd      f1, arg_1A0(r1)
                stfd      f2, arg_1A8(r1)
                stfd      f3, arg_1B0(r1)
                stfd      f4, arg_1B8(r1)
                stfd      f5, arg_1C0(r1)
                stfd      f6, arg_1C8(r1)
                stfd      f7, arg_1D0(r1)
                stfd      f8, arg_1D8(r1)
                stfd      f9, arg_1E0(r1)
                stfd      f10, arg_1E8(r1)
                stfd      f11, arg_1F0(r1)
                stfd      f12, arg_1F8(r1)
                stfd      f13, arg_200(r1)
                stfd      f14, arg_208(r1)
                stfd      f15, arg_210(r1)
                stfd      f16, arg_218(r1)
                stfd      f17, arg_220(r1)
                stfd      f18, arg_228(r1)
                stfd      f19, arg_230(r1)
                stfd      f20, arg_238(r1)
                stfd      f21, arg_240(r1)
                stfd      f22, arg_248(r1)
                stfd      f23, arg_250(r1)
                stfd      f24, arg_258(r1)
                stfd      f25, arg_260(r1)
                stfd      f26, arg_268(r1)
                stfd      f27, arg_270(r1)
                stfd      f28, arg_278(r1)
                stfd      f29, arg_280(r1)
                stfd      f30, arg_288(r1)
                stfd      f31, arg_290(r1)
                mffs      f0
                stfd      f0, arg_298(r1)
                lwz       r0, arg_298+4(r1)
                stw       r0, arg_298(r1)
                mfctr     r0
                lwz       r5, 0x8C(r3)
                lwz       r6, 0x84(r3)
                mfcr      r7
                mfxer     r8
                li        r9, 0
                stw       r0, arg_5C(r1)
                stw       r5, arg_64(r1)
                stw       r6, arg_6C(r1)
                stw       r7, arg_70(r1)
                stw       r8, arg_74(r1)
                stw       r9, arg_78(r1)
                lwz       r7, 0x40(r3)
                lwz       r6, 0xC4(r3)
                rlwinm.   r5, r7, 0,13,13
                stw       r7, arg_4B4(r1)
                beq       loc_5DC
                mfspr     r6, 0

loc_5DC:                                // CODE XREF: .LowLevelExceptionHandler+16C↑j
                stw       r6, arg_7C(r1)
                rlwinm.   r5, r7, 0,12,12
                beq       loc_708
                addi      r0, r1, arg_2A0
                li        r5, 0
                li        r6, 0x10
                stvx      v0, r5, r0
                stvxl     v1, r6, r0
                li        r5, 0x20 // ' '
                li        r6, 0x30 // '0'
                stvx      v2, r5, r0
                stvxl     v3, r6, r0
                li        r5, 0x40 // '@'
                li        r6, 0x50 // 'P'
                stvx      v4, r5, r0
                stvxl     v5, r6, r0
                li        r5, 0x60 // '`'
                li        r6, 0x70 // 'p'
                stvx      v6, r5, r0
                stvxl     v7, r6, r0
                li        r5, 0x80
                li        r6, 0x90
                stvx      v8, r5, r0
                stvxl     v9, r6, r0
                li        r5, 0xA0
                li        r6, 0xB0
                stvx      v10, r5, r0
                stvxl     v11, r6, r0
                li        r5, 0xC0
                li        r6, 0xD0
                stvx      v12, r5, r0
                stvxl     v13, r6, r0
                li        r5, 0xE0
                li        r6, 0xF0
                stvx      v14, r5, r0
                stvxl     v15, r6, r0
                li        r5, 0x100
                li        r6, 0x110
                stvx      v16, r5, r0
                stvxl     v17, r6, r0
                li        r5, 0x120
                li        r6, 0x130
                stvx      v18, r5, r0
                stvxl     v19, r6, r0
                li        r5, 0x140
                li        r6, 0x150
                stvx      v20, r5, r0
                stvxl     v21, r6, r0
                li        r5, 0x160
                li        r6, 0x170
                stvx      v22, r5, r0
                stvxl     v23, r6, r0
                li        r5, 0x180
                li        r6, 0x190
                stvx      v24, r5, r0
                stvxl     v25, r6, r0
                li        r5, 0x1A0
                li        r6, 0x1B0
                stvx      v26, r5, r0
                stvxl     v27, r6, r0
                li        r5, 0x1C0
                li        r6, 0x1D0
                stvx      v28, r5, r0
                stvxl     v29, r6, r0
                li        r5, 0x1E0
                li        r6, 0x1F0
                stvx      v30, r5, r0
                stvxl     v31, r6, r0
                mfspr     r0, vrsave // Vector Restore/Save
                oris      r5, r0, 0x8000
                mtspr     vrsave, r5 // Vector Restore/Save
                addi      r5, r1, arg_4A0
                mfvscr    v0
                stvx      v0, 0, r5
                stw       r0, arg_4B0(r1)

loc_708:                                // CODE XREF: .LowLevelExceptionHandler+17C↑j
                bl        sub_A18
                mr        r13, r3
                mr        r12, r4
                lwz       r5, 0x40(r3)
                addi      r6, r1, arg_58
                addi      r7, r1, arg_98
                addi      r8, r1, arg_198
                li        r10, 0
                rlwinm.   r4, r5, 0,12,12
                beq       loc_734
                addi      r10, r1, arg_2A0

loc_734:                                // CODE XREF: .LowLevelExceptionHandler+2C4↑j
                srwi      r5, r5, 24
                li        r9, 0
                stw       r5, arg_40(r1)
                stw       r6, arg_44(r1)
                stw       r7, arg_48(r1)
                stw       r8, arg_4C(r1)
                stw       r9, arg_50(r1)
                stw       r10, arg_54(r1)
                addi      r4, r1, arg_40
                lwz       r0, 0(r12)
                lwz       r2, 4(r12)
                mtctr     r0
                bctrl
                lwz       r4, 0x5C(r13)
                cmpwi     r3, 0
                mtlr      r4
                beq       loc_780
                li        r3, 1
                blr
// ---------------------------------------------------------------------------

loc_780:                                // CODE XREF: .LowLevelExceptionHandler+30C↑j
                lwz       r9, 0x40(r13)
                rlwinm.   r5, r9, 0,12,12
                beq       loc_8AC
                lwz       r0, arg_4B0(r1)
                oris      r5, r0, 0x8000
                mtspr     vrsave, r5 // Vector Restore/Save
                addi      r6, r1, arg_4A0
                lvxl      v0, 0, r6
                mtvscr    v0
                mtspr     vrsave, r0 // Vector Restore/Save
                addi      r0, r1, arg_2A0
                li        r5, 0
                li        r6, 0x10
                lvx       v0, r5, r0
                lvxl      v1, r6, r0
                li        r5, 0x20 // ' '
                li        r6, 0x30 // '0'
                lvx       v2, r5, r0
                lvxl      v3, r6, r0
                li        r5, 0x40 // '@'
                li        r6, 0x50 // 'P'
                lvx       v4, r5, r0
                lvxl      v5, r6, r0
                li        r5, 0x60 // '`'
                li        r6, 0x70 // 'p'
                lvx       v6, r5, r0
                lvxl      v7, r6, r0
                li        r5, 0x80
                li        r6, 0x90
                lvx       v8, r5, r0
                lvxl      v9, r6, r0
                li        r5, 0xA0
                li        r6, 0xB0
                lvx       v10, r5, r0
                lvxl      v11, r6, r0
                li        r5, 0xC0
                li        r6, 0xD0
                lvx       v12, r5, r0
                lvxl      v13, r6, r0
                li        r5, 0xE0
                li        r6, 0xF0
                lvx       v14, r5, r0
                lvxl      v15, r6, r0
                li        r5, 0x100
                li        r6, 0x110
                lvx       v16, r5, r0
                lvxl      v17, r6, r0
                li        r5, 0x120
                li        r6, 0x130
                lvx       v18, r5, r0
                lvxl      v19, r6, r0
                li        r5, 0x140
                li        r6, 0x150
                lvx       v20, r5, r0
                lvxl      v21, r6, r0
                li        r5, 0x160
                li        r6, 0x170
                lvx       v22, r5, r0
                lvxl      v23, r6, r0
                li        r5, 0x180
                li        r6, 0x190
                lvx       v24, r5, r0
                lvxl      v25, r6, r0
                li        r5, 0x1A0
                li        r6, 0x1B0
                lvx       v26, r5, r0
                lvxl      v27, r6, r0
                li        r5, 0x1C0
                li        r6, 0x1D0
                lvx       v28, r5, r0
                lvxl      v29, r6, r0
                li        r5, 0x1E0
                li        r6, 0x1F0
                lvx       v30, r5, r0
                lvxl      v31, r6, r0

loc_8AC:                                // CODE XREF: .LowLevelExceptionHandler+320↑j
                lwz       r3, arg_5C(r1)
                lwz       r4, arg_64(r1)
                lwz       r5, arg_6C(r1)
                lwz       r6, arg_70(r1)
                lwz       r7, arg_74(r1)
                lwz       r8, arg_78(r1)
                mtctr     r3
                stw       r4, 0x8C(r13)
                stw       r5, 0x84(r13)
                mtxer     r7
                rlwinm.   r4, r9, 0,13,13
                lwz       r3, arg_7C(r1)
                beq       loc_8E4
                mtspr     0, r3

loc_8E4:                                // CODE XREF: .LowLevelExceptionHandler+474↑j
                stw       r3, 0xC4(r13)
                mtcr      r6
                rlwinm    r8, r8, 0,21,21
                rlwimi    r9, r8, 0,21,21
                stw       r9, 0x40(r13)
                lwz       r3, arg_B4(r1)
                lwz       r4, arg_BC(r1)
                stw       r3, 0x94(r13)
                stw       r4, 0x9C(r13)
                lwz       r0, arg_298(r1)
                stw       r0, arg_298+4(r1)
                lfd       f0, arg_298(r1)
                mtfsf     0xff, f0
                lfd       f0, arg_198(r1)
                lfd       f1, arg_1A0(r1)
                lfd       f2, arg_1A8(r1)
                lfd       f3, arg_1B0(r1)
                lfd       f4, arg_1B8(r1)
                lfd       f5, arg_1C0(r1)
                lfd       f6, arg_1C8(r1)
                lfd       f7, arg_1D0(r1)
                lfd       f8, arg_1D8(r1)
                lfd       f9, arg_1E0(r1)
                lfd       f10, arg_1E8(r1)
                lfd       f11, arg_1F0(r1)
                lfd       f12, arg_1F8(r1)
                lfd       f13, arg_200(r1)
                lfd       f14, arg_208(r1)
                lfd       f15, arg_210(r1)
                lfd       f16, arg_218(r1)
                lfd       f17, arg_220(r1)
                lfd       f18, arg_228(r1)
                lfd       f19, arg_230(r1)
                lfd       f20, arg_238(r1)
                lfd       f21, arg_240(r1)
                lfd       f22, arg_248(r1)
                lfd       f23, arg_250(r1)
                lfd       f24, arg_258(r1)
                lfd       f25, arg_260(r1)
                lfd       f26, arg_268(r1)
                lfd       f27, arg_270(r1)
                lfd       f28, arg_278(r1)
                lfd       f29, arg_280(r1)
                lfd       f30, arg_288(r1)
                lfd       f31, arg_290(r1)
                lwz       r0, arg_9C(r1)
                lwz       r2, arg_AC(r1)
                lwz       r5, arg_C4(r1)
                lwz       r6, arg_CC(r1)
                lwz       r7, arg_D4(r1)
                lwz       r8, arg_DC(r1)
                lwz       r9, arg_E4(r1)
                lwz       r10, arg_EC(r1)
                lwz       r11, arg_F4(r1)
                lwz       r12, arg_FC(r1)
                lwz       r13, arg_104(r1)
                lwz       r14, arg_10C(r1)
                lwz       r15, arg_114(r1)
                lwz       r16, arg_11C(r1)
                lwz       r17, arg_124(r1)
                lwz       r18, arg_12C(r1)
                lwz       r19, arg_134(r1)
                lwz       r20, arg_13C(r1)
                lwz       r21, arg_144(r1)
                lwz       r22, arg_14C(r1)
                lwz       r23, arg_154(r1)
                lwz       r24, arg_15C(r1)
                lwz       r25, arg_164(r1)
                lwz       r26, arg_16C(r1)
                lwz       r27, arg_174(r1)
                lwz       r28, arg_17C(r1)
                lwz       r29, arg_184(r1)
                lwz       r30, arg_18C(r1)
                lwz       r31, arg_194(r1)
                lwz       r1, arg_A4(r1)
                li        r3, 0
                blr
// End of function .LowLevelExceptionHandler


// =============== S U B R O U T I N E =======================================


sub_A18:                                // CODE XREF: .LowLevelExceptionHandler:loc_708↑p
                stw       r3, 0x94(r3)
                stw       r4, 0x9C(r3)
                mflr      r4
                lwz       r5, 0x5C(r3)
                lis       r6, 0x7DF2
                lwz       r7, 0x40(r3)
                ori       r6, r6, 0xF700 // 0x7DF2F700
                stw       r4, 0x84(r3)
                mtlr      r5
                stw       r6, 0x44(r3)
                rlwinm    r7, r7, 0,28,25
                rlwinm    r7, r7, 0,23,20
                stw       r7, 0x40(r3)
                li        r3, 0
                blr
// End of function sub_A18


// =============== S U B R O U T I N E =======================================

CREATE_AIXCALL(asmSaveFloatAltiVec)
.asmSaveFloatAltiVec:                                // DATA XREF: .rdata:off_F60↓o
                mfcr      r7
                mfspr     r4, vrsave // Vector Restore/Save
                li        r5, 0x170
                stw       r4, 0x180(r3)
                clrlwi    r4, r4, 20
                oris      r6, r4, 0x8000
                mtspr     vrsave, r6 // Vector Restore/Save
                mfvscr    v0
                cmpwi     cr1, r4, 0
                stvx      v0, r5, r3
                beq       cr1, .asmSaveFloat
                mtcr      r4
                bge       cr5, loc_A90
                li        r5, 0xB0
                stvx      v20, r5, r3

loc_A90:                                // CODE XREF: sub_A54+30↑j
                ble       cr5, loc_A9C
                li        r5, 0xC0
                stvxl     v21, r5, r3

loc_A9C:                                // CODE XREF: sub_A54:loc_A90↑j
                bne       cr5, loc_AA8
                li        r5, 0xD0
                stvx      v22, r5, r3

loc_AA8:                                // CODE XREF: sub_A54:loc_A9C↑j
                bns       cr5, loc_AB4
                li        r5, 0xE0
                stvxl     v23, r5, r3

loc_AB4:                                // CODE XREF: sub_A54:loc_AA8↑j
                bge       cr6, loc_AC0
                li        r5, 0xF0
                stvx      v24, r5, r3

loc_AC0:                                // CODE XREF: sub_A54:loc_AB4↑j
                ble       cr6, loc_ACC
                li        r5, 0x100
                stvxl     v25, r5, r3

loc_ACC:                                // CODE XREF: sub_A54:loc_AC0↑j
                bne       cr6, loc_AD8
                li        r5, 0x110
                stvx      v26, r5, r3

loc_AD8:                                // CODE XREF: sub_A54:loc_ACC↑j
                bns       cr6, loc_AE4
                li        r5, 0x120
                stvxl     v27, r5, r3

loc_AE4:                                // CODE XREF: sub_A54:loc_AD8↑j
                bge       cr7, loc_AF0
                li        r5, 0x130
                stvx      v28, r5, r3

loc_AF0:                                // CODE XREF: sub_A54:loc_AE4↑j
                ble       cr7, loc_AFC
                li        r5, 0x140
                stvxl     v29, r5, r3

loc_AFC:                                // CODE XREF: sub_A54:loc_AF0↑j
                bne       cr7, loc_B08
                li        r5, 0x150
                stvx      v30, r5, r3

loc_B08:                                // CODE XREF: sub_A54:loc_AFC↑j
                bns       cr7, loc_B14
                li        r5, 0x160
                stvxl     v31, r5, r3

loc_B14:                                // CODE XREF: sub_A54:loc_B08↑j
                mtcr      r7
// End of function sub_A54


// =============== S U B R O U T I N E =======================================

.asmSaveFloat:                                // CODE XREF: sub_A54+28↑j
                                        // DATA XREF: .rdata:off_F50↓o
                mffs      f0
                mfxer     r0
                stfd      f0, 0x18(r3)
                stw       r0, 0xC(r3)
                stw       r7, 0x10(r3)
                stfd      f14, 0x20(r3)
                stfd      f15, 0x28(r3)
                stfd      f16, 0x30(r3)
                stfd      f17, 0x38(r3)
                stfd      f18, 0x40(r3)
                stfd      f19, 0x48(r3)
                stfd      f20, 0x50(r3)
                stfd      f21, 0x58(r3)
                stfd      f22, 0x60(r3)
                stfd      f23, 0x68(r3)
                stfd      f24, 0x70(r3)
                stfd      f25, 0x78(r3)
                stfd      f26, 0x80(r3)
                stfd      f27, 0x88(r3)
                stfd      f28, 0x90(r3)
                stfd      f29, 0x98(r3)
                stfd      f30, 0xA0(r3)
                stfd      f31, 0xA8(r3)
                blr
// End of function sub_B18

CREATE_AIXCALL(asmSaveFloat)


// =============== S U B R O U T I N E =======================================

CREATE_AIXCALL(asmRestoreFloatAltiVec)
.asmRestoreFloatAltiVec:                                // DATA XREF: .rdata:off_F68↓o
                lwz       r4, 0x180(r3)
                li        r5, 0x170
                oris      r6, r4, 0x8000
                mtcr      r4
                mtspr     vrsave, r6 // Vector Restore/Save
                lvx       v0, r5, r3
                cmpwi     cr1, r4, 0
                mtvscr    v0
                mtspr     vrsave, r4 // Vector Restore/Save
                beq       cr1, .asmRestoreFloat
                bge       cr5, loc_BAC
                li        r5, 0xB0
                lvx       v20, r5, r3

loc_BAC:                                // CODE XREF: sub_B78+28↑j
                ble       cr5, loc_BB8
                li        r5, 0xC0
                lvxl      v21, r5, r3

loc_BB8:                                // CODE XREF: sub_B78:loc_BAC↑j
                bne       cr5, loc_BC4
                li        r5, 0xD0
                lvx       v22, r5, r3

loc_BC4:                                // CODE XREF: sub_B78:loc_BB8↑j
                bns       cr5, loc_BD0
                li        r5, 0xE0
                lvxl      v23, r5, r3

loc_BD0:                                // CODE XREF: sub_B78:loc_BC4↑j
                bge       cr6, loc_BDC
                li        r5, 0xF0
                lvx       v24, r5, r3

loc_BDC:                                // CODE XREF: sub_B78:loc_BD0↑j
                ble       cr6, loc_BE8
                li        r5, 0x100
                lvxl      v25, r5, r3

loc_BE8:                                // CODE XREF: sub_B78:loc_BDC↑j
                bne       cr6, loc_BF4
                li        r5, 0x110
                lvx       v26, r5, r3

loc_BF4:                                // CODE XREF: sub_B78:loc_BE8↑j
                bns       cr6, loc_C00
                li        r5, 0x120
                lvxl      v27, r5, r3

loc_C00:                                // CODE XREF: sub_B78:loc_BF4↑j
                bge       cr7, loc_C0C
                li        r5, 0x130
                lvx       v28, r5, r3

loc_C0C:                                // CODE XREF: sub_B78:loc_C00↑j
                ble       cr7, loc_C18
                li        r5, 0x140
                lvxl      v29, r5, r3

loc_C18:                                // CODE XREF: sub_B78:loc_C0C↑j
                bne       cr7, loc_C24
                li        r5, 0x150
                lvx       v30, r5, r3

loc_C24:                                // CODE XREF: sub_B78:loc_C18↑j
                bns       cr7, .asmRestoreFloat
                li        r5, 0x160
                lvxl      v31, r5, r3
// End of function sub_B78


// =============== S U B R O U T I N E =======================================

.asmRestoreFloat:                                // CODE XREF: sub_B78+24↑j
                                        // sub_B78:loc_C24↑j
                                        // DATA XREF: ...
                lfd       f0, 0x18(r3)
                lwz       r0, 0xC(r3)
                lwz       r4, 0x10(r3)
                mtfsf     0xff, f0
                mtxer     r0
                mtcr      r4
                lfd       f14, 0x20(r3)
                lfd       f15, 0x28(r3)
                lfd       f16, 0x30(r3)
                lfd       f17, 0x38(r3)
                lfd       f18, 0x40(r3)
                lfd       f19, 0x48(r3)
                lfd       f20, 0x50(r3)
                lfd       f21, 0x58(r3)
                lfd       f22, 0x60(r3)
                lfd       f23, 0x68(r3)
                lfd       f24, 0x70(r3)
                lfd       f25, 0x78(r3)
                lfd       f26, 0x80(r3)
                lfd       f27, 0x88(r3)
                lfd       f28, 0x90(r3)
                lfd       f29, 0x98(r3)
                lfd       f30, 0xA0(r3)
                lfd       f31, 0xA8(r3)
                blr
// End of function sub_C30

CREATE_AIXCALL(asmRestoreFloat)


// =============== S U B R O U T I N E =======================================


// void sub_C94(int, int)
CREATE_AIXCALL(asmTrap37)
.asmTrap37:                                // CODE XREF: DelayUntilProcessTime+94↑p
                li        r0, 0x37 // '7'
                twui      r31, 8
                blr
// End of function sub_C94

