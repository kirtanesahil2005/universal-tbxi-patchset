	macro _Open
	dc.w $a000
	endm

	macro _PBHOpenSync
	dc.w $a200
	endm

	macro _PBOpenAsync
	dc.w $a400
	endm

	macro _PBHOpenAsync
	dc.w $a600
	endm

	macro _Close
	dc.w $a001
	endm

	macro _PBCloseImmed
	dc.w $a201
	endm

	macro _PBCloseAsync
	dc.w $a401
	endm

	macro _Read
	dc.w $a002
	endm

	macro _PBReadImmed
	dc.w $a202
	endm

	macro _PBReadAsync
	dc.w $a402
	endm

	macro _Write
	dc.w $a003
	endm

	macro _PBWriteImmed
	dc.w $a203
	endm

	macro _PBWriteAsync
	dc.w $a403
	endm

	macro _Control
	dc.w $a004
	endm

	macro _PBControlImmed
	dc.w $a204
	endm

	macro _PBControlAsync
	dc.w $a404
	endm

	macro _Status
	dc.w $a005
	endm

	macro _PBStatusImmed
	dc.w $a205
	endm

	macro _PBStatusAsync
	dc.w $a405
	endm

	macro _KillIO
	dc.w $a006
	endm

	macro _PBKillIOImmed
	dc.w $a206
	endm

	macro _PBKillIOAsync
	dc.w $a406
	endm

	macro _GetVolInfo
	dc.w $a007
	endm

	macro _PBHGetVInfoSync
	dc.w $a207
	endm

	macro _PBGetVInfoAsync
	dc.w $a407
	endm

	macro _PBHGetVInfoAsync
	dc.w $a607
	endm

	macro _Create
	dc.w $a008
	endm

	macro _PBHCreateSync
	dc.w $a208
	endm

	macro _PBCreateAsync
	dc.w $a408
	endm

	macro _PBHCreateAsync
	dc.w $a608
	endm

	macro _Delete
	dc.w $a009
	endm

	macro _PBHDeleteSync
	dc.w $a209
	endm

	macro _PBDeleteAsync
	dc.w $a409
	endm

	macro _PBHDeleteAsync
	dc.w $a609
	endm

	macro _OpenRF
	dc.w $a00a
	endm

	macro _PBHOpenRFSync
	dc.w $a20a
	endm

	macro _PBOpenRFAsync
	dc.w $a40a
	endm

	macro _PBHOpenRFAsync
	dc.w $a60a
	endm

	macro _Rename
	dc.w $a00b
	endm

	macro _PBHRenameSync
	dc.w $a20b
	endm

	macro _PBRenameAsync
	dc.w $a40b
	endm

	macro _PBHRenameAsync
	dc.w $a60b
	endm

	macro _GetFileInfo
	dc.w $a00c
	endm

	macro _PBHGetFInfoSync
	dc.w $a20c
	endm

	macro _PBGetFInfoAsync
	dc.w $a40c
	endm

	macro _PBHGetFInfoAsync
	dc.w $a60c
	endm

	macro _SetFileInfo
	dc.w $a00d
	endm

	macro _PBHSetFInfoSync
	dc.w $a20d
	endm

	macro _PBSetFInfoAsync
	dc.w $a40d
	endm

	macro _PBHSetFInfoAsync
	dc.w $a60d
	endm

	macro _UnmountVol
	dc.w $a00e
	endm

	macro _HUnmountVol
	dc.w $a20e
	endm

	macro _MountVol
	dc.w $a00f
	endm

	macro _Allocate
	dc.w $a010
	endm

	macro _PBAllocContigSync
	dc.w $a210
	endm

	macro _PBAllocateAsync
	dc.w $a410
	endm

	macro _PBAllocContigAsync
	dc.w $a610
	endm

	macro _GetEOF
	dc.w $a011
	endm

	macro _PBGetEOFAsync
	dc.w $a411
	endm

	macro _SetEOF
	dc.w $a012
	endm

	macro _PBSetEOFAsync
	dc.w $a412
	endm

	macro _FlushVol
	dc.w $a013
	endm

	macro _PBFlushVolAsync
	dc.w $a413
	endm

	macro _GetVol
	dc.w $a014
	endm

	macro _PBHGetVolSync
	dc.w $a214
	endm

	macro _PBGetVolAsync
	dc.w $a414
	endm

	macro _PBHGetVolAsync
	dc.w $a614
	endm

	macro _SetVol
	dc.w $a015
	endm

	macro _PBHSetVolSync
	dc.w $a215
	endm

	macro _PBSetVolAsync
	dc.w $a415
	endm

	macro _PBHSetVolAsync
	dc.w $a615
	endm

	macro _InitQueue
	dc.w $a016
	endm

	macro _Eject
	dc.w $a017
	endm

	macro _GetFPos
	dc.w $a018
	endm

	macro _PBGetFPosAsync
	dc.w $a418
	endm

	macro _InitZone
	dc.w $a019
	endm

	macro _GetZone
	dc.w $a11a
	endm

	macro _SetZone
	dc.w $a01b
	endm

	macro _FreeMem
	dc.w $a01c
	endm

	macro _FreeMemSys
	dc.w $a41c
	endm

	macro _MaxMem
	dc.w $a11d
	endm

	macro _MaxMemSys
	dc.w $a51d
	endm

	macro _NewPtr
	dc.w $a11e
	endm

	macro _NewPtrClear
	dc.w $a31e
	endm

	macro _NewPtrSys
	dc.w $a51e
	endm

	macro _NewPtrSysClear
	dc.w $a71e
	endm

	macro _DisposePtr
	dc.w $a01f
	endm

	macro _SetPtrSize
	dc.w $a020
	endm

	macro _GetPtrSize
	dc.w $a021
	endm

	macro _NewHandle
	dc.w $a122
	endm

	macro _NewHandleClear
	dc.w $a322
	endm

	macro _NewHandleSys
	dc.w $a522
	endm

	macro _NewHandleSysClear
	dc.w $a722
	endm

	macro _DisposeHandle
	dc.w $a023
	endm

	macro _SetHandleSize
	dc.w $a024
	endm

	macro _GetHandleSize
	dc.w $a025
	endm

	macro _HandleZone
	dc.w $a126
	endm

	macro _ReallocateHandle
	dc.w $a027
	endm

	macro _RecoverHandle
	dc.w $a128
	endm

	macro _RecoverHandleSys
	dc.w $a528
	endm

	macro _HLock
	dc.w $a029
	endm

	macro _HUnlock
	dc.w $a02a
	endm

	macro _EmptyHandle
	dc.w $a02b
	endm

	macro _InitApplZone
	dc.w $a02c
	endm

	macro _SetApplLimit
	dc.w $a02d
	endm

	macro _BlockMove
	dc.w $a02e
	endm

	macro _BlockMoveData
	dc.w $a22e
	endm

	macro _PostEvent
	dc.w $a02f
	endm

	macro _PPostEvent
	dc.w $a12f
	endm

	macro _OSEventAvail
	dc.w $a030
	endm

	macro _GetOSEvent
	dc.w $a031
	endm

	macro _FlushEvents
	dc.w $a032
	endm

	macro _VInstall
	dc.w $a033
	endm

	macro _VRemove
	dc.w $a034
	endm

	macro _Offline
	dc.w $a035
	endm

	macro _MoreMasters
	dc.w $a036
	endm

	macro _ReadParam
	dc.w $a037
	endm

	macro _WriteParam
	dc.w $a038
	endm

	macro _ReadDateTime
	dc.w $a039
	endm

	macro _SetDateTime
	dc.w $a03a
	endm

	macro _Delay
	dc.w $a03b
	endm

	macro _CmpString
	dc.w $a03c
	endm

	macro _MarkSensitiveEqualString
	dc.w $a23c
	endm

	macro _CaseSensitiveEqualString
	dc.w $a43c
	endm

	macro _CaseAndMarkSensitiveEqualString
	dc.w $a63c
	endm

	macro _DrvrInstall
	dc.w $a03d
	endm

	macro _DrvrRemove
	dc.w $a03e
	endm

	macro _InitUtil
	dc.w $a03f
	endm

	macro _ReserveMem
	dc.w $a040
	endm

	macro _ReserveMemSys
	dc.w $a440
	endm

	macro _SetFilLock
	dc.w $a041
	endm

	macro _PBHSetFLockSync
	dc.w $a241
	endm

	macro _PBSetFLockAsync
	dc.w $a441
	endm

	macro _PBHSetFLockAsync
	dc.w $a641
	endm

	macro _RstFilLock
	dc.w $a042
	endm

	macro _PBHRstFLockSync
	dc.w $a242
	endm

	macro _PBRstFLockAsync
	dc.w $a442
	endm

	macro _PBHRstFLockAsync
	dc.w $a642
	endm

	macro _SetFilType
	dc.w $a043
	endm

	macro _PBSetFVersAsync
	dc.w $a443
	endm

	macro _SetFPos
	dc.w $a044
	endm

	macro _PBSetFPosAsync
	dc.w $a444
	endm

	macro _FlushFile
	dc.w $a045
	endm

	macro _PBFlushFileAsync
	dc.w $a445
	endm

	macro _GetTrapAddress
	dc.w $a146
	endm

	macro _GetOSTrapAddress
	dc.w $a346
	endm

	macro _GetToolTrapAddress
	dc.w $a746
	endm

	macro _SetTrapAddress
	dc.w $a047
	endm

	macro _SetOSTrapAddress
	dc.w $a247
	endm

	macro _SetToolTrapAddress
	dc.w $a647
	endm

	macro _PtrZone
	dc.w $a148
	endm

	macro _HPurge
	dc.w $a049
	endm

	macro _HNoPurge
	dc.w $a04a
	endm

	macro _SetGrowZone
	dc.w $a04b
	endm

	macro _CompactMem
	dc.w $a04c
	endm

	macro _CompactMemSys
	dc.w $a44c
	endm

	macro _PurgeMem
	dc.w $a04d
	endm

	macro _PurgeMemSys
	dc.w $a44d
	endm

	macro _AddDrive
	dc.w $a04e
	endm

	macro _RDrvrInstall
	dc.w $a04f
	endm

	macro _RelString
	dc.w $a050
	endm

	macro _ReadXPRam
	dc.w $a051
	endm

	macro _WriteXPRam
	dc.w $a052
	endm

	macro _ClkNoMem
	dc.w $a053
	endm

	macro _UpperString
	dc.w $a054
	endm

	macro _UpperStringMarks
	dc.w $a254
	endm

	macro _StripAddress
	dc.w $a055
	endm

	macro _LowerText
	dc.w $a056
	endm

	macro _StripText
	dc.w $a256
	endm

	macro _UpperText
	dc.w $a456
	endm

	macro _StripUpperText
	dc.w $a656
	endm

	macro _SetAppBase
	dc.w $a057
	endm

	macro _InsTime
	dc.w $a058
	endm

	macro _InsXTime
	dc.w $a458
	endm

	macro _RmvTime
	dc.w $a059
	endm

	macro _PrimeTime
	dc.w $a05a
	endm

	macro _PowerOff
	dc.w $a05b
	endm

	macro _MemoryDispatch
	dc.w $a15c
	endm

	macro _SwapMMUMode
	dc.w $a05d
	endm

	macro _NMInstall
	dc.w $a05e
	endm

	macro _NMRemove
	dc.w $a05f
	endm

	macro _FSDispatch
	dc.w $a060
	endm

	macro _HFSDispatch
	dc.w $a260
	endm

	macro _FSDispatchAsync
	dc.w $a460
	endm

	macro _HFSDispatchAsync
	dc.w $a660
	endm

	macro _MaxBlock
	dc.w $a061
	endm

	macro _MaxBlockSys
	dc.w $a461
	endm

	macro _PurgeSpace
	dc.w $a162
	endm

	macro _PurgeSpaceSys
	dc.w $a562
	endm

	macro _MaxApplZone
	dc.w $a063
	endm

	macro _MoveHHi
	dc.w $a064
	endm

	macro _StackSpace
	dc.w $a065
	endm

	macro _NewEmptyHandle
	dc.w $a166
	endm

	macro _NewEmptyHandleSys
	dc.w $a566
	endm

	macro _HSetRBit
	dc.w $a067
	endm

	macro _HClrRBit
	dc.w $a068
	endm

	macro _HGetState
	dc.w $a069
	endm

	macro _HSetState
	dc.w $a06a
	endm

	macro _TestManager
	dc.w $a06b
	endm

	macro _InitFS
	dc.w $a06c
	endm

	macro _InitEvents
	dc.w $a06d
	endm

	macro _SlotManager
	dc.w $a06e
	endm

	macro _SlotVInstall
	dc.w $a06f
	endm

	macro _SlotVRemove
	dc.w $a070
	endm

	macro _AttachVBL
	dc.w $a071
	endm

	macro _DoVBLTask
	dc.w $a072
	endm

	macro _OSReserved
	dc.w $a073
	endm

	macro _Cache
	dc.w $a074
	endm

	macro _SIntInstall
	dc.w $a075
	endm

	macro _SIntRemove
	dc.w $a076
	endm

	macro _CountADBs
	dc.w $a077
	endm

	macro _GetIndADB
	dc.w $a078
	endm

	macro _GetADBInfo
	dc.w $a079
	endm

	macro _SetADBInfo
	dc.w $a07a
	endm

	macro _ADBReInit
	dc.w $a07b
	endm

	macro _ADBOp
	dc.w $a07c
	endm

	macro _GetDefaultStartup
	dc.w $a07d
	endm

	macro _SetDefaultStartup
	dc.w $a07e
	endm

	macro _InternalWait
	dc.w $a07f
	endm

	macro _GetVideoDefault
	dc.w $a080
	endm

	macro _SetVideoDefault
	dc.w $a081
	endm

	macro _DTInstall
	dc.w $a082
	endm

	macro _SetOSDefault
	dc.w $a083
	endm

	macro _GetOSDefault
	dc.w $a084
	endm

	macro _PmgrOp
	dc.w $a085
	endm

	macro _IdleUpdate
	dc.w $a285
	endm

	macro _IdleState
	dc.w $a485
	endm

	macro _SerialPower
	dc.w $a685
	endm

	macro _IOPInfoAccess
	dc.w $a086
	endm

	macro _IOPMsgRequest
	dc.w $a087
	endm

	macro _IOPMoveData
	dc.w $a088
	endm

	macro _SCSIAtomic
	dc.w $a089
	endm

	macro _Sleep
	dc.w $a08a
	endm

	macro _SleepQInstall
	dc.w $a28a
	endm

	macro _SleepQRemove
	dc.w $a48a
	endm

	macro _CommToolboxDispatch
	dc.w $a08b
	endm

	macro _Wakeup
	dc.w $a08c
	endm

	macro _DebugUtil
	dc.w $a08d
	endm

	macro _A08E
	dc.w $a08e
	endm

	macro _Deferred
	dc.w $a08f
	endm

	macro _SysEnvirons
	dc.w $a090
	endm

	macro _Translate24To32
	dc.w $a091
	endm

	macro _EgretDispatch
	dc.w $a092
	endm

	macro _Microseconds
	dc.w $a193
	endm

	macro _ServerDispatch
	dc.w $a094
	endm

	macro _A095
	dc.w $a095
	endm

	macro _A096
	dc.w $a096
	endm

	macro _FPPriv
	dc.w $a097
	endm

	macro _HWPriv
	dc.w $a198
	endm

	macro _A099
	dc.w $a099
	endm

	macro _A09A
	dc.w $a09a
	endm

	macro _A09B
	dc.w $a09b
	endm

	macro _A09C
	dc.w $a09c
	endm

	macro _A09D
	dc.w $a09d
	endm

	macro _PowerMgrDispatch
	dc.w $a09e
	endm

	macro _PowerDispatch
	dc.w $a09f
	endm

	macro _vMRdAddr
	dc.w $a0a0
	endm

	macro _vMRdData
	dc.w $a0a1
	endm

	macro _vMWrData
	dc.w $a0a2
	endm

	macro _A0A3
	dc.w $a0a3
	endm

	macro _HeapDispatch
	dc.w $a0a4
	endm

	macro _VisRegionChanged
	dc.w $a0a5
	endm

	macro _vStdEntry
	dc.w $a0a6
	endm

	macro _vStdExit
	dc.w $a0a7
	endm

	macro _Reserved
	dc.w $a0a8
	endm

	macro _Reserved
	dc.w $a0a9
	endm

	macro _Reserved
	dc.w $a0aa
	endm

	macro _A0AB
	dc.w $a0ab
	endm

	macro _FSMDispatch
	dc.w $a0ac
	endm

	macro _Gestalt
	dc.w $a1ad
	endm

	macro _NewGestalt
	dc.w $a3ad
	endm

	macro _ReplaceGestalt
	dc.w $a5ad
	endm

	macro _GetGestaltProcPtr
	dc.w $a7ad
	endm

	macro _vADBProc
	dc.w $a0ae
	endm

	macro _vMtCheck
	dc.w $a0af
	endm

	macro _vCheckReMount
	dc.w $a0b0
	endm

	macro _vDtrmV2
	dc.w $a0b1
	endm

	macro _vFindDrive
	dc.w $a0b2
	endm

	macro _vFClose
	dc.w $a0b3
	endm

	macro _vFlushMDB
	dc.w $a0b4
	endm

	macro _vGoDriver
	dc.w $a0b5
	endm

	macro _vWaitUntil
	dc.w $a0b6
	endm

	macro _vSyncWait
	dc.w $a0b7
	endm

	macro _A0B8
	dc.w $a0b8
	endm

	macro _vDisPtch
	dc.w $a0b9
	endm

	macro _vIAZInit
	dc.w $a0ba
	endm

	macro _vIAZPostInit
	dc.w $a0bb
	endm

	macro _vLaunchInit
	dc.w $a0bc
	endm

	macro _vCacheFlush
	dc.w $a0bd
	endm

	macro _A0BE
	dc.w $a0be
	endm

	macro _vLg2Phys
	dc.w $a0bf
	endm

	macro _vFlushCache
	dc.w $a0c0
	endm

	macro _vGetBlock
	dc.w $a0c1
	endm

	macro _vMarkBlock
	dc.w $a0c2
	endm

	macro _vRelBlock
	dc.w $a0c3
	endm

	macro _vTrashBlocks
	dc.w $a0c4
	endm

	macro _vTrashVBlks
	dc.w $a0c5
	endm

	macro _vCacheWrIP
	dc.w $a0c6
	endm

	macro _vCacheRdIP
	dc.w $a0c7
	endm

	macro _vBasicIO
	dc.w $a0c8
	endm

	macro _vRdBlocks
	dc.w $a0c9
	endm

	macro _vWrBlocks
	dc.w $a0ca
	endm

	macro _vSetUpTags
	dc.w $a0cb
	endm

	macro _vBTClose
	dc.w $a0cc
	endm

	macro _vBTDelete
	dc.w $a0cd
	endm

	macro _vBTFlush
	dc.w $a0ce
	endm

	macro _vBTGetRecord
	dc.w $a0cf
	endm

	macro _vBTInsert
	dc.w $a0d0
	endm

	macro _vBTOpen
	dc.w $a0d1
	endm

	macro _vBTSearch
	dc.w $a0d2
	endm

	macro _vBTUpdate
	dc.w $a0d3
	endm

	macro _vGetNode
	dc.w $a0d4
	endm

	macro _vRelNode
	dc.w $a0d5
	endm

	macro _vAllocNode
	dc.w $a0d6
	endm

	macro _vFreeNode
	dc.w $a0d7
	endm

	macro _vExtBTFile
	dc.w $a0d8
	endm

	macro _vDeallocFile
	dc.w $a0d9
	endm

	macro _vExtendFile
	dc.w $a0da
	endm

	macro _vTruncateFile
	dc.w $a0db
	endm

	macro _vCMSetUp
	dc.w $a0dc
	endm

	macro _PPC
	dc.w $a0dd
	endm

	macro _PPCAsync
	dc.w $a4dd
	endm

	macro _vDtrmV1
	dc.w $a0de
	endm

	macro _vBlkAlloc
	dc.w $a0df
	endm

	macro _vBlkDeAlloc
	dc.w $a0e0
	endm

	macro _vFileOpen
	dc.w $a0e1
	endm

	macro _vPermssnChk
	dc.w $a0e2
	endm

	macro _vFndFilName
	dc.w $a0e3
	endm

	macro _vRfNCall
	dc.w $a0e4
	endm

	macro _vAdjEOF
	dc.w $a0e5
	endm

	macro _vPixel2Char
	dc.w $a0e6
	endm

	macro _vChar2Pixel
	dc.w $a0e7
	endm

	macro _vHiliteText
	dc.w $a0e8
	endm

	macro _vFileClose
	dc.w $a0e9
	endm

	macro _vFileRead
	dc.w $a0ea
	endm

	macro _vFileWrite
	dc.w $a0eb
	endm

	macro _DispatchHelper
	dc.w $a0ec
	endm

	macro _vUpdAltMDB
	dc.w $a0ed
	endm

	macro _vCkExtFs
	dc.w $a0ee
	endm

	macro _vDtrmV3
	dc.w $a0ef
	endm

	macro _vBMChk
	dc.w $a0f0
	endm

	macro _vTstMod
	dc.w $a0f1
	endm

	macro _vLocCRec
	dc.w $a0f2
	endm

	macro _vTreeSearch
	dc.w $a0f3
	endm

	macro _vMapFBlock
	dc.w $a0f4
	endm

	macro _vXFSearch
	dc.w $a0f5
	endm

	macro _vReadBM
	dc.w $a0f6
	endm

	macro _vDoEject
	dc.w $a0f7
	endm

	macro _vSegStack
	dc.w $a0f8
	endm

	macro _vSuperLoad
	dc.w $a0f9
	endm

	macro _vCmpFrm
	dc.w $a0fa
	endm

	macro _vNewMap
	dc.w $a0fb
	endm

	macro _vCheckLoad
	dc.w $a0fc
	endm

	macro _XTrimMeasure
	dc.w $a0fd
	endm

	macro _XFindWord
	dc.w $a0fe
	endm

	macro _XFindLine
	dc.w $a0ff
	endm

	macro _SoundDispatch
	dc.w $a800
	endm

	macro _SndDisposeChannel
	dc.w $a801
	endm

	macro _SndAddModifier
	dc.w $a802
	endm

	macro _SndDoCommand
	dc.w $a803
	endm

	macro _SndDoImmediate
	dc.w $a804
	endm

	macro _SndPlay
	dc.w $a805
	endm

	macro _SndControl
	dc.w $a806
	endm

	macro _SndNewChannel
	dc.w $a807
	endm

	macro _InitProcMenu
	dc.w $a808
	endm

	macro _GetControlVariant
	dc.w $a809
	endm

	macro _GetWVariant
	dc.w $a80a
	endm

	macro _PopUpMenuSelect
	dc.w $a80b
	endm

	macro _rGetResource
	dc.w $a80c
	endm

	macro _Count1Resources
	dc.w $a80d
	endm

	macro _Get1IndResource
	dc.w $a80e
	endm

	macro _Get1IndType
	dc.w $a80f
	endm

	macro _Unique1ID
	dc.w $a810
	endm

	macro _TESelView
	dc.w $a811
	endm

	macro _TEPinScroll
	dc.w $a812
	endm

	macro _TEAutoView
	dc.w $a813
	endm

	macro _SetFractEnable
	dc.w $a814
	endm

	macro _SCSIDispatch
	dc.w $a815
	endm

	macro _Pack8
	dc.w $a816
	endm

	macro _CopyMask
	dc.w $a817
	endm

	macro _FixAtan2
	dc.w $a818
	endm

	macro _XMunger
	dc.w $a819
	endm

	macro _HOpenResFile
	dc.w $a81a
	endm

	macro _HCreateResFile
	dc.w $a81b
	endm

	macro _Count1Types
	dc.w $a81c
	endm

	macro _InvalMenuBar
	dc.w $a81d
	endm

	macro _A81E
	dc.w $a81e
	endm

	macro _Get1Resource
	dc.w $a81f
	endm

	macro _Get1NamedResource
	dc.w $a820
	endm

	macro _GetMaxResourceSize
	dc.w $a821
	endm

	macro _ResourceDispatch
	dc.w $a822
	endm

	macro _AliasDispatch
	dc.w $a823
	endm

	macro _HFSUtil
	dc.w $a824
	endm

	macro _MenuDispatch
	dc.w $a825
	endm

	macro _InsertMenuItem
	dc.w $a826
	endm

	macro _HideDialogItem
	dc.w $a827
	endm

	macro _ShowDialogItem
	dc.w $a828
	endm

	macro _A829
	dc.w $a829
	endm

	macro _ComponentDispatch
	dc.w $a82a
	endm

	macro _Pack9
	dc.w $a82b
	endm

	macro _Pack10
	dc.w $a82c
	endm

	macro _Pack11
	dc.w $a82d
	endm

	macro _Pack12
	dc.w $a82e
	endm

	macro _Pack13
	dc.w $a82f
	endm

	macro _Pack14
	dc.w $a830
	endm

	macro _Pack15
	dc.w $a831
	endm

	macro _QuickDrawGX
	dc.w $a832
	endm

	macro _ScrnBitMap
	dc.w $a833
	endm

	macro _SetFScaleDisable
	dc.w $a834
	endm

	macro _FontMetrics
	dc.w $a835
	endm

	macro _GetMaskTable
	dc.w $a836
	endm

	macro _MeasureText
	dc.w $a837
	endm

	macro _CalcMask
	dc.w $a838
	endm

	macro _SeedFill
	dc.w $a839
	endm

	macro _ZoomWindow
	dc.w $a83a
	endm

	macro _TrackBox
	dc.w $a83b
	endm

	macro _TEGetOffset
	dc.w $a83c
	endm

	macro _TEDispatch
	dc.w $a83d
	endm

	macro _TEStyleNew
	dc.w $a83e
	endm

	macro _Long2Fix
	dc.w $a83f
	endm

	macro _Fix2Long
	dc.w $a840
	endm

	macro _Fix2Frac
	dc.w $a841
	endm

	macro _Frac2Fix
	dc.w $a842
	endm

	macro _Fix2X
	dc.w $a843
	endm

	macro _X2Fix
	dc.w $a844
	endm

	macro _Frac2X
	dc.w $a845
	endm

	macro _X2Frac
	dc.w $a846
	endm

	macro _FracCos
	dc.w $a847
	endm

	macro _FracSin
	dc.w $a848
	endm

	macro _FracSqrt
	dc.w $a849
	endm

	macro _FracMul
	dc.w $a84a
	endm

	macro _FracDiv
	dc.w $a84b
	endm

	macro _UserDelay
	dc.w $a84c
	endm

	macro _FixDiv
	dc.w $a84d
	endm

	macro _GetItemCmd
	dc.w $a84e
	endm

	macro _SetItemCmd
	dc.w $a84f
	endm

	macro _InitCursor
	dc.w $a850
	endm

	macro _SetCursor
	dc.w $a851
	endm

	macro _HideCursor
	dc.w $a852
	endm

	macro _ShowCursor
	dc.w $a853
	endm

	macro _FontDispatch
	dc.w $a854
	endm

	macro _ShieldCursor
	dc.w $a855
	endm

	macro _ObscureCursor
	dc.w $a856
	endm

	macro _SetEntry
	dc.w $a857
	endm

	macro _BitAnd
	dc.w $a858
	endm

	macro _BitXOr
	dc.w $a859
	endm

	macro _BitNot
	dc.w $a85a
	endm

	macro _BitOr
	dc.w $a85b
	endm

	macro _BitShift
	dc.w $a85c
	endm

	macro _BitTst
	dc.w $a85d
	endm

	macro _BitSet
	dc.w $a85e
	endm

	macro _BitClr
	dc.w $a85f
	endm

	macro _WaitNextEvent
	dc.w $a860
	endm

	macro _Random
	dc.w $a861
	endm

	macro _ForeColor
	dc.w $a862
	endm

	macro _BackColor
	dc.w $a863
	endm

	macro _ColorBit
	dc.w $a864
	endm

	macro _GetPixel
	dc.w $a865
	endm

	macro _StuffHex
	dc.w $a866
	endm

	macro _LongMul
	dc.w $a867
	endm

	macro _FixMul
	dc.w $a868
	endm

	macro _FixRatio
	dc.w $a869
	endm

	macro _HiWord
	dc.w $a86a
	endm

	macro _LoWord
	dc.w $a86b
	endm

	macro _FixRound
	dc.w $a86c
	endm

	macro _InitPort
	dc.w $a86d
	endm

	macro _InitGraf
	dc.w $a86e
	endm

	macro _OpenPort
	dc.w $a86f
	endm

	macro _LocalToGlobal
	dc.w $a870
	endm

	macro _GlobalToLocal
	dc.w $a871
	endm

	macro _GrafDevice
	dc.w $a872
	endm

	macro _SetPort
	dc.w $a873
	endm

	macro _GetPort
	dc.w $a874
	endm

	macro _SetPBits
	dc.w $a875
	endm

	macro _PortSize
	dc.w $a876
	endm

	macro _MovePortTo
	dc.w $a877
	endm

	macro _SetOrigin
	dc.w $a878
	endm

	macro _SetClip
	dc.w $a879
	endm

	macro _GetClip
	dc.w $a87a
	endm

	macro _ClipRect
	dc.w $a87b
	endm

	macro _BackPat
	dc.w $a87c
	endm

	macro _ClosePort
	dc.w $a87d
	endm

	macro _AddPt
	dc.w $a87e
	endm

	macro _SubPt
	dc.w $a87f
	endm

	macro _SetPt
	dc.w $a880
	endm

	macro _EqualPt
	dc.w $a881
	endm

	macro _StdText
	dc.w $a882
	endm

	macro _DrawChar
	dc.w $a883
	endm

	macro _DrawString
	dc.w $a884
	endm

	macro _DrawText
	dc.w $a885
	endm

	macro _TextWidth
	dc.w $a886
	endm

	macro _TextFont
	dc.w $a887
	endm

	macro _TextFace
	dc.w $a888
	endm

	macro _TextMode
	dc.w $a889
	endm

	macro _TextSize
	dc.w $a88a
	endm

	macro _GetFontInfo
	dc.w $a88b
	endm

	macro _StringWidth
	dc.w $a88c
	endm

	macro _CharWidth
	dc.w $a88d
	endm

	macro _SpaceExtra
	dc.w $a88e
	endm

	macro _OSDispatch
	dc.w $a88f
	endm

	macro _StdLine
	dc.w $a890
	endm

	macro _LineTo
	dc.w $a891
	endm

	macro _Line
	dc.w $a892
	endm

	macro _MoveTo
	dc.w $a893
	endm

	macro _Move
	dc.w $a894
	endm

	macro _ShutDown
	dc.w $a895
	endm

	macro _HidePen
	dc.w $a896
	endm

	macro _ShowPen
	dc.w $a897
	endm

	macro _GetPenState
	dc.w $a898
	endm

	macro _SetPenState
	dc.w $a899
	endm

	macro _GetPen
	dc.w $a89a
	endm

	macro _PenSize
	dc.w $a89b
	endm

	macro _PenMode
	dc.w $a89c
	endm

	macro _PenPat
	dc.w $a89d
	endm

	macro _PenNormal
	dc.w $a89e
	endm

	macro _Unimplemented
	dc.w $a89f
	endm

	macro _StdRect
	dc.w $a8a0
	endm

	macro _FrameRect
	dc.w $a8a1
	endm

	macro _PaintRect
	dc.w $a8a2
	endm

	macro _EraseRect
	dc.w $a8a3
	endm

	macro _InvertRect
	dc.w $a8a4
	endm

	macro _FillRect
	dc.w $a8a5
	endm

	macro _EqualRect
	dc.w $a8a6
	endm

	macro _SetRect
	dc.w $a8a7
	endm

	macro _OffsetRect
	dc.w $a8a8
	endm

	macro _InsetRect
	dc.w $a8a9
	endm

	macro _SectRect
	dc.w $a8aa
	endm

	macro _UnionRect
	dc.w $a8ab
	endm

	macro _Pt2Rect
	dc.w $a8ac
	endm

	macro _PtInRect
	dc.w $a8ad
	endm

	macro _EmptyRect
	dc.w $a8ae
	endm

	macro _StdRRect
	dc.w $a8af
	endm

	macro _FrameRoundRect
	dc.w $a8b0
	endm

	macro _PaintRoundRect
	dc.w $a8b1
	endm

	macro _EraseRoundRect
	dc.w $a8b2
	endm

	macro _InvertRoundRect
	dc.w $a8b3
	endm

	macro _FillRoundRect
	dc.w $a8b4
	endm

	macro _ScriptUtil
	dc.w $a8b5
	endm

	macro _StdOval
	dc.w $a8b6
	endm

	macro _FrameOval
	dc.w $a8b7
	endm

	macro _PaintOval
	dc.w $a8b8
	endm

	macro _EraseOval
	dc.w $a8b9
	endm

	macro _InvertOval
	dc.w $a8ba
	endm

	macro _FillOval
	dc.w $a8bb
	endm

	macro _SlopeFromAngle
	dc.w $a8bc
	endm

	macro _StdArc
	dc.w $a8bd
	endm

	macro _FrameArc
	dc.w $a8be
	endm

	macro _PaintArc
	dc.w $a8bf
	endm

	macro _EraseArc
	dc.w $a8c0
	endm

	macro _InvertArc
	dc.w $a8c1
	endm

	macro _FillArc
	dc.w $a8c2
	endm

	macro _PtToAngle
	dc.w $a8c3
	endm

	macro _AngleFromSlope
	dc.w $a8c4
	endm

	macro _StdPoly
	dc.w $a8c5
	endm

	macro _FramePoly
	dc.w $a8c6
	endm

	macro _PaintPoly
	dc.w $a8c7
	endm

	macro _ErasePoly
	dc.w $a8c8
	endm

	macro _InvertPoly
	dc.w $a8c9
	endm

	macro _FillPoly
	dc.w $a8ca
	endm

	macro _OpenPoly
	dc.w $a8cb
	endm

	macro _ClosePgon
	dc.w $a8cc
	endm

	macro _KillPoly
	dc.w $a8cd
	endm

	macro _OffsetPoly
	dc.w $a8ce
	endm

	macro _PackBits
	dc.w $a8cf
	endm

	macro _UnpackBits
	dc.w $a8d0
	endm

	macro _StdRgn
	dc.w $a8d1
	endm

	macro _FrameRgn
	dc.w $a8d2
	endm

	macro _PaintRgn
	dc.w $a8d3
	endm

	macro _EraseRgn
	dc.w $a8d4
	endm

	macro _InvertRgn
	dc.w $a8d5
	endm

	macro _FillRgn
	dc.w $a8d6
	endm

	macro _BitMapRgn
	dc.w $a8d7
	endm

	macro _NewRgn
	dc.w $a8d8
	endm

	macro _DisposeRgn
	dc.w $a8d9
	endm

	macro _OpenRgn
	dc.w $a8da
	endm

	macro _CloseRgn
	dc.w $a8db
	endm

	macro _CopyRgn
	dc.w $a8dc
	endm

	macro _SetEmptyRgn
	dc.w $a8dd
	endm

	macro _SetRectRgn
	dc.w $a8de
	endm

	macro _RectRgn
	dc.w $a8df
	endm

	macro _OffsetRgn
	dc.w $a8e0
	endm

	macro _InsetRgn
	dc.w $a8e1
	endm

	macro _EmptyRgn
	dc.w $a8e2
	endm

	macro _EqualRgn
	dc.w $a8e3
	endm

	macro _SectRgn
	dc.w $a8e4
	endm

	macro _UnionRgn
	dc.w $a8e5
	endm

	macro _DiffRgn
	dc.w $a8e6
	endm

	macro _XOrRgn
	dc.w $a8e7
	endm

	macro _PtInRgn
	dc.w $a8e8
	endm

	macro _RectInRgn
	dc.w $a8e9
	endm

	macro _SetStdProcs
	dc.w $a8ea
	endm

	macro _StdBits
	dc.w $a8eb
	endm

	macro _CopyBits
	dc.w $a8ec
	endm

	macro _StdTxMeas
	dc.w $a8ed
	endm

	macro _StdGetPic
	dc.w $a8ee
	endm

	macro _ScrollRect
	dc.w $a8ef
	endm

	macro _StdPutPic
	dc.w $a8f0
	endm

	macro _StdComment
	dc.w $a8f1
	endm

	macro _PicComment
	dc.w $a8f2
	endm

	macro _OpenPicture
	dc.w $a8f3
	endm

	macro _ClosePicture
	dc.w $a8f4
	endm

	macro _KillPicture
	dc.w $a8f5
	endm

	macro _DrawPicture
	dc.w $a8f6
	endm

	macro _Layout
	dc.w $a8f7
	endm

	macro _ScalePt
	dc.w $a8f8
	endm

	macro _MapPt
	dc.w $a8f9
	endm

	macro _MapRect
	dc.w $a8fa
	endm

	macro _MapRgn
	dc.w $a8fb
	endm

	macro _MapPoly
	dc.w $a8fc
	endm

	macro _PrGlue
	dc.w $a8fd
	endm

	macro _InitFonts
	dc.w $a8fe
	endm

	macro _GetFName
	dc.w $a8ff
	endm

	macro _GetFNum
	dc.w $a900
	endm

	macro _FMSwapFont
	dc.w $a901
	endm

	macro _RealFont
	dc.w $a902
	endm

	macro _SetFontLock
	dc.w $a903
	endm

	macro _DrawGrowIcon
	dc.w $a904
	endm

	macro _DragGrayRgn
	dc.w $a905
	endm

	macro _NewString
	dc.w $a906
	endm

	macro _SetString
	dc.w $a907
	endm

	macro _ShowHide
	dc.w $a908
	endm

	macro _CalcVis
	dc.w $a909
	endm

	macro _CalcVBehind
	dc.w $a90a
	endm

	macro _ClipAbove
	dc.w $a90b
	endm

	macro _PaintOne
	dc.w $a90c
	endm

	macro _PaintBehind
	dc.w $a90d
	endm

	macro _SaveOld
	dc.w $a90e
	endm

	macro _DrawNew
	dc.w $a90f
	endm

	macro _GetWMgrPort
	dc.w $a910
	endm

	macro _CheckUpdate
	dc.w $a911
	endm

	macro _InitWindows
	dc.w $a912
	endm

	macro _NewWindow
	dc.w $a913
	endm

	macro _DisposeWindow
	dc.w $a914
	endm

	macro _ShowWindow
	dc.w $a915
	endm

	macro _HideWindow
	dc.w $a916
	endm

	macro _GetWRefCon
	dc.w $a917
	endm

	macro _SetWRefCon
	dc.w $a918
	endm

	macro _GetWTitle
	dc.w $a919
	endm

	macro _SetWTitle
	dc.w $a91a
	endm

	macro _MoveWindow
	dc.w $a91b
	endm

	macro _HiliteWindow
	dc.w $a91c
	endm

	macro _SizeWindow
	dc.w $a91d
	endm

	macro _TrackGoAway
	dc.w $a91e
	endm

	macro _SelectWindow
	dc.w $a91f
	endm

	macro _BringToFront
	dc.w $a920
	endm

	macro _SendBehind
	dc.w $a921
	endm

	macro _BeginUpdate
	dc.w $a922
	endm

	macro _EndUpdate
	dc.w $a923
	endm

	macro _FrontWindow
	dc.w $a924
	endm

	macro _DragWindow
	dc.w $a925
	endm

	macro _DragTheRgn
	dc.w $a926
	endm

	macro _InvalRgn
	dc.w $a927
	endm

	macro _InvalRect
	dc.w $a928
	endm

	macro _ValidRgn
	dc.w $a929
	endm

	macro _ValidRect
	dc.w $a92a
	endm

	macro _GrowWindow
	dc.w $a92b
	endm

	macro _FindWindow
	dc.w $a92c
	endm

	macro _CloseWindow
	dc.w $a92d
	endm

	macro _SetWindowPic
	dc.w $a92e
	endm

	macro _GetWindowPic
	dc.w $a92f
	endm

	macro _InitMenus
	dc.w $a930
	endm

	macro _NewMenu
	dc.w $a931
	endm

	macro _DisposeMenu
	dc.w $a932
	endm

	macro _AppendMenu
	dc.w $a933
	endm

	macro _ClearMenuBar
	dc.w $a934
	endm

	macro _InsertMenu
	dc.w $a935
	endm

	macro _DeleteMenu
	dc.w $a936
	endm

	macro _DrawMenuBar
	dc.w $a937
	endm

	macro _HiliteMenu
	dc.w $a938
	endm

	macro _EnableItem
	dc.w $a939
	endm

	macro _DisableItem
	dc.w $a93a
	endm

	macro _GetMenuBar
	dc.w $a93b
	endm

	macro _SetMenuBar
	dc.w $a93c
	endm

	macro _MenuSelect
	dc.w $a93d
	endm

	macro _MenuKey
	dc.w $a93e
	endm

	macro _GetItemIcon
	dc.w $a93f
	endm

	macro _SetItemIcon
	dc.w $a940
	endm

	macro _GetItemStyle
	dc.w $a941
	endm

	macro _SetItemStyle
	dc.w $a942
	endm

	macro _GetItemMark
	dc.w $a943
	endm

	macro _SetItemMark
	dc.w $a944
	endm

	macro _CheckItem
	dc.w $a945
	endm

	macro _GetMenuItemText
	dc.w $a946
	endm

	macro _SetMenuItemText
	dc.w $a947
	endm

	macro _CalcMenuSize
	dc.w $a948
	endm

	macro _GetMenuHandle
	dc.w $a949
	endm

	macro _SetMenuFlash
	dc.w $a94a
	endm

	macro _PlotIcon
	dc.w $a94b
	endm

	macro _FlashMenuBar
	dc.w $a94c
	endm

	macro _AppendResMenu
	dc.w $a94d
	endm

	macro _PinRect
	dc.w $a94e
	endm

	macro _DeltaPoint
	dc.w $a94f
	endm

	macro _CountMItems
	dc.w $a950
	endm

	macro _InsertResMenu
	dc.w $a951
	endm

	macro _DeleteMenuItem
	dc.w $a952
	endm

	macro _UpdateControls
	dc.w $a953
	endm

	macro _NewControl
	dc.w $a954
	endm

	macro _DisposeControl
	dc.w $a955
	endm

	macro _KillControls
	dc.w $a956
	endm

	macro _ShowControl
	dc.w $a957
	endm

	macro _HideControl
	dc.w $a958
	endm

	macro _MoveControl
	dc.w $a959
	endm

	macro _GetControlReference
	dc.w $a95a
	endm

	macro _SetControlReference
	dc.w $a95b
	endm

	macro _SizeControl
	dc.w $a95c
	endm

	macro _HiliteControl
	dc.w $a95d
	endm

	macro _GetControlTitle
	dc.w $a95e
	endm

	macro _SetControlTitle
	dc.w $a95f
	endm

	macro _GetControlValue
	dc.w $a960
	endm

	macro _GetControlMinimum
	dc.w $a961
	endm

	macro _GetControlMaximum
	dc.w $a962
	endm

	macro _SetControlValue
	dc.w $a963
	endm

	macro _SetControlMinimum
	dc.w $a964
	endm

	macro _SetControlMaximum
	dc.w $a965
	endm

	macro _TestControl
	dc.w $a966
	endm

	macro _DragControl
	dc.w $a967
	endm

	macro _TrackControl
	dc.w $a968
	endm

	macro _DrawControls
	dc.w $a969
	endm

	macro _GetControlAction
	dc.w $a96a
	endm

	macro _SetControlAction
	dc.w $a96b
	endm

	macro _FindControl
	dc.w $a96c
	endm

	macro _Draw1Control
	dc.w $a96d
	endm

	macro _DeQueue
	dc.w $a96e
	endm

	macro _EnQueue
	dc.w $a96f
	endm

	macro _GetNextEvent
	dc.w $a970
	endm

	macro _EventAvail
	dc.w $a971
	endm

	macro _GetMouse
	dc.w $a972
	endm

	macro _StillDown
	dc.w $a973
	endm

	macro _Button
	dc.w $a974
	endm

	macro _TickCount
	dc.w $a975
	endm

	macro _GetKeys
	dc.w $a976
	endm

	macro _WaitMouseUp
	dc.w $a977
	endm

	macro _UpdateDialog
	dc.w $a978
	endm

	macro _CouldDialog
	dc.w $a979
	endm

	macro _FreeDialog
	dc.w $a97a
	endm

	macro _InitDialogs
	dc.w $a97b
	endm

	macro _GetNewDialog
	dc.w $a97c
	endm

	macro _NewDialog
	dc.w $a97d
	endm

	macro _SelectDialogItemText
	dc.w $a97e
	endm

	macro _IsDialogEvent
	dc.w $a97f
	endm

	macro _DialogSelect
	dc.w $a980
	endm

	macro _DrawDialog
	dc.w $a981
	endm

	macro _CloseDialog
	dc.w $a982
	endm

	macro _DisposeDialog
	dc.w $a983
	endm

	macro _FindDialogItem
	dc.w $a984
	endm

	macro _Alert
	dc.w $a985
	endm

	macro _StopAlert
	dc.w $a986
	endm

	macro _NoteAlert
	dc.w $a987
	endm

	macro _CautionAlert
	dc.w $a988
	endm

	macro _CouldAlert
	dc.w $a989
	endm

	macro _FreeAlert
	dc.w $a98a
	endm

	macro _ParamText
	dc.w $a98b
	endm

	macro _ErrorSound
	dc.w $a98c
	endm

	macro _GetDialogItem
	dc.w $a98d
	endm

	macro _SetDialogItem
	dc.w $a98e
	endm

	macro _SetDialogItemText
	dc.w $a98f
	endm

	macro _GetDialogItemText
	dc.w $a990
	endm

	macro _ModalDialog
	dc.w $a991
	endm

	macro _DetachResource
	dc.w $a992
	endm

	macro _SetResPurge
	dc.w $a993
	endm

	macro _CurResFile
	dc.w $a994
	endm

	macro _InitResources
	dc.w $a995
	endm

	macro _RsrcZoneInit
	dc.w $a996
	endm

	macro _OpenResFile
	dc.w $a997
	endm

	macro _UseResFile
	dc.w $a998
	endm

	macro _UpdateResFile
	dc.w $a999
	endm

	macro _CloseResFile
	dc.w $a99a
	endm

	macro _SetResLoad
	dc.w $a99b
	endm

	macro _CountResources
	dc.w $a99c
	endm

	macro _GetIndResource
	dc.w $a99d
	endm

	macro _CountTypes
	dc.w $a99e
	endm

	macro _GetIndType
	dc.w $a99f
	endm

	macro _GetResource
	dc.w $a9a0
	endm

	macro _GetNamedResource
	dc.w $a9a1
	endm

	macro _LoadResource
	dc.w $a9a2
	endm

	macro _ReleaseResource
	dc.w $a9a3
	endm

	macro _HomeResFile
	dc.w $a9a4
	endm

	macro _GetResourceSizeOnDisk
	dc.w $a9a5
	endm

	macro _GetResAttrs
	dc.w $a9a6
	endm

	macro _SetResAttrs
	dc.w $a9a7
	endm

	macro _GetResInfo
	dc.w $a9a8
	endm

	macro _SetResInfo
	dc.w $a9a9
	endm

	macro _ChangedResource
	dc.w $a9aa
	endm

	macro _AddResource
	dc.w $a9ab
	endm

	macro _AddReference
	dc.w $a9ac
	endm

	macro _RemoveResource
	dc.w $a9ad
	endm

	macro _RmveReference
	dc.w $a9ae
	endm

	macro _ResError
	dc.w $a9af
	endm

	macro _WriteResource
	dc.w $a9b0
	endm

	macro _CreateResFile
	dc.w $a9b1
	endm

	macro _SystemEvent
	dc.w $a9b2
	endm

	macro _SystemClick
	dc.w $a9b3
	endm

	macro _SystemTask
	dc.w $a9b4
	endm

	macro _SystemMenu
	dc.w $a9b5
	endm

	macro _OpenDeskAcc
	dc.w $a9b6
	endm

	macro _CloseDeskAcc
	dc.w $a9b7
	endm

	macro _GetPattern
	dc.w $a9b8
	endm

	macro _GetCursor
	dc.w $a9b9
	endm

	macro _GetString
	dc.w $a9ba
	endm

	macro _GetIcon
	dc.w $a9bb
	endm

	macro _GetPicture
	dc.w $a9bc
	endm

	macro _GetNewWindow
	dc.w $a9bd
	endm

	macro _GetNewControl
	dc.w $a9be
	endm

	macro _GetMenu
	dc.w $a9bf
	endm

	macro _GetNewMBar
	dc.w $a9c0
	endm

	macro _UniqueID
	dc.w $a9c1
	endm

	macro _SysEdit
	dc.w $a9c2
	endm

	macro _KeyTranslate
	dc.w $a9c3
	endm

	macro _OpenRFPerm
	dc.w $a9c4
	endm

	macro _RsrcMapEntry
	dc.w $a9c5
	endm

	macro _SecondsToDate
	dc.w $a9c6
	endm

	macro _DateToSeconds
	dc.w $a9c7
	endm

	macro _SysBeep
	dc.w $a9c8
	endm

	macro _SysError
	dc.w $a9c9
	endm

	macro _PutIcon
	dc.w $a9ca
	endm

	macro _TEGetText
	dc.w $a9cb
	endm

	macro _TEInit
	dc.w $a9cc
	endm

	macro _TEDispose
	dc.w $a9cd
	endm

	macro _TETextBox
	dc.w $a9ce
	endm

	macro _TESetText
	dc.w $a9cf
	endm

	macro _TECalText
	dc.w $a9d0
	endm

	macro _TESetSelect
	dc.w $a9d1
	endm

	macro _TENew
	dc.w $a9d2
	endm

	macro _TEUpdate
	dc.w $a9d3
	endm

	macro _TEClick
	dc.w $a9d4
	endm

	macro _TECopy
	dc.w $a9d5
	endm

	macro _TECut
	dc.w $a9d6
	endm

	macro _TEDelete
	dc.w $a9d7
	endm

	macro _TEActivate
	dc.w $a9d8
	endm

	macro _TEDeactivate
	dc.w $a9d9
	endm

	macro _TEIdle
	dc.w $a9da
	endm

	macro _TEPaste
	dc.w $a9db
	endm

	macro _TEKey
	dc.w $a9dc
	endm

	macro _TEScroll
	dc.w $a9dd
	endm

	macro _TEInsert
	dc.w $a9de
	endm

	macro _TESetAlignment
	dc.w $a9df
	endm

	macro _Munger
	dc.w $a9e0
	endm

	macro _HandToHand
	dc.w $a9e1
	endm

	macro _PtrToXHand
	dc.w $a9e2
	endm

	macro _PtrToHand
	dc.w $a9e3
	endm

	macro _HandAndHand
	dc.w $a9e4
	endm

	macro _InitPack
	dc.w $a9e5
	endm

	macro _InitAllPacks
	dc.w $a9e6
	endm

	macro _Pack0
	dc.w $a9e7
	endm

	macro _Pack1
	dc.w $a9e8
	endm

	macro _Pack2
	dc.w $a9e9
	endm

	macro _Pack3
	dc.w $a9ea
	endm

	macro _Pack4
	dc.w $a9eb
	endm

	macro _Pack5
	dc.w $a9ec
	endm

	macro _Pack6
	dc.w $a9ed
	endm

	macro _Pack7
	dc.w $a9ee
	endm

	macro _PtrAndHand
	dc.w $a9ef
	endm

	macro _LoadSeg
	dc.w $a9f0
	endm

	macro _UnloadSeg
	dc.w $a9f1
	endm

	macro _Launch
	dc.w $a9f2
	endm

	macro _Chain
	dc.w $a9f3
	endm

	macro _ExitToShell
	dc.w $a9f4
	endm

	macro _GetAppParms
	dc.w $a9f5
	endm

	macro _GetResFileAttrs
	dc.w $a9f6
	endm

	macro _SetResFileAttrs
	dc.w $a9f7
	endm

	macro _MethodDispatch
	dc.w $a9f8
	endm

	macro _InfoScrap
	dc.w $a9f9
	endm

	macro _UnloadScrap
	dc.w $a9fa
	endm

	macro _LoadScrap
	dc.w $a9fb
	endm

	macro _ZeroScrap
	dc.w $a9fc
	endm

	macro _GetScrap
	dc.w $a9fd
	endm

	macro _PutScrap
	dc.w $a9fe
	endm

	macro _Debugger
	dc.w $a9ff
	endm

	macro _OpenCPort
	dc.w $aa00
	endm

	macro _InitCPort
	dc.w $aa01
	endm

	macro _CloseCPort
	dc.w $aa02
	endm

	macro _NewPixMap
	dc.w $aa03
	endm

	macro _DisposePixMap
	dc.w $aa04
	endm

	macro _CopyPixMap
	dc.w $aa05
	endm

	macro _SetCPortPix
	dc.w $aa06
	endm

	macro _NewPixPat
	dc.w $aa07
	endm

	macro _DisposePixPat
	dc.w $aa08
	endm

	macro _CopyPixPat
	dc.w $aa09
	endm

	macro _PenPixPat
	dc.w $aa0a
	endm

	macro _BackPixPat
	dc.w $aa0b
	endm

	macro _GetPixPat
	dc.w $aa0c
	endm

	macro _MakeRGBPat
	dc.w $aa0d
	endm

	macro _FillCRect
	dc.w $aa0e
	endm

	macro _FillCOval
	dc.w $aa0f
	endm

	macro _FillCRoundRect
	dc.w $aa10
	endm

	macro _FillCArc
	dc.w $aa11
	endm

	macro _FillCRgn
	dc.w $aa12
	endm

	macro _FillCPoly
	dc.w $aa13
	endm

	macro _RGBForeColor
	dc.w $aa14
	endm

	macro _RGBBackColor
	dc.w $aa15
	endm

	macro _SetCPixel
	dc.w $aa16
	endm

	macro _GetCPixel
	dc.w $aa17
	endm

	macro _GetCTable
	dc.w $aa18
	endm

	macro _GetForeColor
	dc.w $aa19
	endm

	macro _GetBackColor
	dc.w $aa1a
	endm

	macro _GetCCursor
	dc.w $aa1b
	endm

	macro _SetCCursor
	dc.w $aa1c
	endm

	macro _AllocCursor
	dc.w $aa1d
	endm

	macro _GetCIcon
	dc.w $aa1e
	endm

	macro _PlotCIcon
	dc.w $aa1f
	endm

	macro _OpenCPicture
	dc.w $aa20
	endm

	macro _OpColor
	dc.w $aa21
	endm

	macro _HiliteColor
	dc.w $aa22
	endm

	macro _CharExtra
	dc.w $aa23
	endm

	macro _DisposeCTable
	dc.w $aa24
	endm

	macro _DisposeCIcon
	dc.w $aa25
	endm

	macro _DisposeCCursor
	dc.w $aa26
	endm

	macro _GetMaxDevice
	dc.w $aa27
	endm

	macro _GetCTSeed
	dc.w $aa28
	endm

	macro _GetDeviceList
	dc.w $aa29
	endm

	macro _GetMainDevice
	dc.w $aa2a
	endm

	macro _GetNextDevice
	dc.w $aa2b
	endm

	macro _TestDeviceAttribute
	dc.w $aa2c
	endm

	macro _SetDeviceAttribute
	dc.w $aa2d
	endm

	macro _InitGDevice
	dc.w $aa2e
	endm

	macro _NewGDevice
	dc.w $aa2f
	endm

	macro _DisposeGDevice
	dc.w $aa30
	endm

	macro _SetGDevice
	dc.w $aa31
	endm

	macro _GetGDevice
	dc.w $aa32
	endm

	macro _Color2Index
	dc.w $aa33
	endm

	macro _Index2Color
	dc.w $aa34
	endm

	macro _InvertColor
	dc.w $aa35
	endm

	macro _RealColor
	dc.w $aa36
	endm

	macro _GetSubTable
	dc.w $aa37
	endm

	macro _UpdatePixMap
	dc.w $aa38
	endm

	macro _MakeITable
	dc.w $aa39
	endm

	macro _AddSearch
	dc.w $aa3a
	endm

	macro _AddComp
	dc.w $aa3b
	endm

	macro _SetClientID
	dc.w $aa3c
	endm

	macro _ProtectEntry
	dc.w $aa3d
	endm

	macro _ReserveEntry
	dc.w $aa3e
	endm

	macro _SetEntries
	dc.w $aa3f
	endm

	macro _QDError
	dc.w $aa40
	endm

	macro _SetWinColor
	dc.w $aa41
	endm

	macro _GetAuxWin
	dc.w $aa42
	endm

	macro _SetControlColor
	dc.w $aa43
	endm

	macro _GetAuxiliaryControlRecord
	dc.w $aa44
	endm

	macro _NewCWindow
	dc.w $aa45
	endm

	macro _GetNewCWindow
	dc.w $aa46
	endm

	macro _SetDeskCPat
	dc.w $aa47
	endm

	macro _GetCWMgrPort
	dc.w $aa48
	endm

	macro _SaveEntries
	dc.w $aa49
	endm

	macro _RestoreEntries
	dc.w $aa4a
	endm

	macro _NewColorDialog
	dc.w $aa4b
	endm

	macro _DelSearch
	dc.w $aa4c
	endm

	macro _DelComp
	dc.w $aa4d
	endm

	macro _SetStdCProcs
	dc.w $aa4e
	endm

	macro _CalcCMask
	dc.w $aa4f
	endm

	macro _SeedCFill
	dc.w $aa50
	endm

	macro _CopyDeepMask
	dc.w $aa51
	endm

	macro _HighLevelFSDispatch
	dc.w $aa52
	endm

	macro _DictionaryDispatch
	dc.w $aa53
	endm

	macro _TextServicesDispatch
	dc.w $aa54
	endm

	macro _AA55
	dc.w $aa55
	endm

	macro _SpeechRecognitionDispatch
	dc.w $aa56
	endm

	macro _DockingDispatch
	dc.w $aa57
	endm

	macro _AA58
	dc.w $aa58
	endm

	macro _MixedModeDispatch
	dc.w $aa59
	endm

	macro _CodeFragmentDispatch
	dc.w $aa5a
	endm

	macro _AA5B
	dc.w $aa5b
	endm

	macro _OCEUtils
	dc.w $aa5c
	endm

	macro _DigitalSignature
	dc.w $aa5d
	endm

	macro _OCETBDispatch
	dc.w $aa5e
	endm

	macro _Authentication
	dc.w $aa5f
	endm

	macro _DeleteMCEntries
	dc.w $aa60
	endm

	macro _GetMCInfo
	dc.w $aa61
	endm

	macro _SetMCInfo
	dc.w $aa62
	endm

	macro _DisposeMCInfo
	dc.w $aa63
	endm

	macro _GetMCEntry
	dc.w $aa64
	endm

	macro _SetMCEntries
	dc.w $aa65
	endm

	macro _MenuChoice
	dc.w $aa66
	endm

	macro _ModalDialogMenuSetup
	dc.w $aa67
	endm

	macro _DialogDispatch
	dc.w $aa68
	endm

	macro _AA69
	dc.w $aa69
	endm

	macro _AA6A
	dc.w $aa6a
	endm

	macro _AA6B
	dc.w $aa6b
	endm

	macro _AA6C
	dc.w $aa6c
	endm

	macro _AA6D
	dc.w $aa6d
	endm

	macro _AppleGuideDispatch
	dc.w $aa6e
	endm

	macro _AA6F
	dc.w $aa6f
	endm

	macro _AA70
	dc.w $aa70
	endm

	macro _AA71
	dc.w $aa71
	endm

	macro _ContextualMenuDispatch
	dc.w $aa72
	endm

	macro _ControlDispatch
	dc.w $aa73
	endm

	macro _AppearanceDispatch
	dc.w $aa74
	endm

	macro _IconServicesDispatch
	dc.w $aa75
	endm

	macro _AA76
	dc.w $aa76
	endm

	macro _AA77
	dc.w $aa77
	endm

	macro _AA78
	dc.w $aa78
	endm

	macro _AA79
	dc.w $aa79
	endm

	macro _AA7A
	dc.w $aa7a
	endm

	macro _AA7B
	dc.w $aa7b
	endm

	macro _AA7C
	dc.w $aa7c
	endm

	macro _StartupDispatch
	dc.w $aa7d
	endm

	macro _SysDebugDispatch
	dc.w $aa7e
	endm

	macro _AA7F
	dc.w $aa7f
	endm

	macro _AVLTreeDispatch
	dc.w $aa80
	endm

	macro _FileMappingDispatch
	dc.w $aa81
	endm

	macro _AA82
	dc.w $aa82
	endm

	macro _AA83
	dc.w $aa83
	endm

	macro _AA84
	dc.w $aa84
	endm

	macro _AA85
	dc.w $aa85
	endm

	macro _AA86
	dc.w $aa86
	endm

	macro _AA87
	dc.w $aa87
	endm

	macro _AA88
	dc.w $aa88
	endm

	macro _AA89
	dc.w $aa89
	endm

	macro _AA8A
	dc.w $aa8a
	endm

	macro _AA8B
	dc.w $aa8b
	endm

	macro _AA8C
	dc.w $aa8c
	endm

	macro _AA8D
	dc.w $aa8d
	endm

	macro _AA8E
	dc.w $aa8e
	endm

	macro _AA8F
	dc.w $aa8f
	endm

	macro _InitPalettes
	dc.w $aa90
	endm

	macro _NewPalette
	dc.w $aa91
	endm

	macro _GetNewPalette
	dc.w $aa92
	endm

	macro _DisposePalette
	dc.w $aa93
	endm

	macro _ActivatePalette
	dc.w $aa94
	endm

	macro _SetPalette
	dc.w $aa95
	endm

	macro _GetPalette
	dc.w $aa96
	endm

	macro _PmForeColor
	dc.w $aa97
	endm

	macro _PmBackColor
	dc.w $aa98
	endm

	macro _AnimateEntry
	dc.w $aa99
	endm

	macro _AnimatePalette
	dc.w $aa9a
	endm

	macro _GetEntryColor
	dc.w $aa9b
	endm

	macro _SetEntryColor
	dc.w $aa9c
	endm

	macro _GetEntryUsage
	dc.w $aa9d
	endm

	macro _SetEntryUsage
	dc.w $aa9e
	endm

	macro _CTab2Palette
	dc.w $aa9f
	endm

	macro _Palette2CTab
	dc.w $aaa0
	endm

	macro _CopyPalette
	dc.w $aaa1
	endm

	macro _PaletteDispatch
	dc.w $aaa2
	endm

	macro _CodecDispatch
	dc.w $aaa3
	endm

	macro _AppleSettingsManagerDispatch
	dc.w $aaa4
	endm

	macro _AAA5
	dc.w $aaa5
	endm

	macro _AAA6
	dc.w $aaa6
	endm

	macro _AAA7
	dc.w $aaa7
	endm

	macro _AAA8
	dc.w $aaa8
	endm

	macro _AAA9
	dc.w $aaa9
	endm

	macro _QuickTimeDispatch
	dc.w $aaaa
	endm

	macro _AAAB
	dc.w $aaab
	endm

	macro _AAAC
	dc.w $aaac
	endm

	macro _AAAD
	dc.w $aaad
	endm

	macro _AAAE
	dc.w $aaae
	endm

	macro _AAAF
	dc.w $aaaf
	endm

	macro _AAB0
	dc.w $aab0
	endm

	macro _AAB1
	dc.w $aab1
	endm

	macro _AAB2
	dc.w $aab2
	endm

	macro _AAB3
	dc.w $aab3
	endm

	macro _AAB4
	dc.w $aab4
	endm

	macro _AAB5
	dc.w $aab5
	endm

	macro _AAB6
	dc.w $aab6
	endm

	macro _AAB7
	dc.w $aab7
	endm

	macro _AAB8
	dc.w $aab8
	endm

	macro _AAB9
	dc.w $aab9
	endm

	macro _AABA
	dc.w $aaba
	endm

	macro _AABB
	dc.w $aabb
	endm

	macro _AABC
	dc.w $aabc
	endm

	macro _AABD
	dc.w $aabd
	endm

	macro _AABE
	dc.w $aabe
	endm

	macro _AABF
	dc.w $aabf
	endm

	macro _AAC0
	dc.w $aac0
	endm

	macro _AAC1
	dc.w $aac1
	endm

	macro _AAC2
	dc.w $aac2
	endm

	macro _AAC3
	dc.w $aac3
	endm

	macro _AAC4
	dc.w $aac4
	endm

	macro _AAC5
	dc.w $aac5
	endm

	macro _AAC6
	dc.w $aac6
	endm

	macro _AAC7
	dc.w $aac7
	endm

	macro _AAC8
	dc.w $aac8
	endm

	macro _AAC9
	dc.w $aac9
	endm

	macro _AACA
	dc.w $aaca
	endm

	macro _AACB
	dc.w $aacb
	endm

	macro _AACC
	dc.w $aacc
	endm

	macro _AACD
	dc.w $aacd
	endm

	macro _AACE
	dc.w $aace
	endm

	macro _AACF
	dc.w $aacf
	endm

	macro _AAD0
	dc.w $aad0
	endm

	macro _AAD1
	dc.w $aad1
	endm

	macro _AAD2
	dc.w $aad2
	endm

	macro _AAD3
	dc.w $aad3
	endm

	macro _AAD4
	dc.w $aad4
	endm

	macro _AAD5
	dc.w $aad5
	endm

	macro _AAD6
	dc.w $aad6
	endm

	macro _AAD7
	dc.w $aad7
	endm

	macro _AAD8
	dc.w $aad8
	endm

	macro _AAD9
	dc.w $aad9
	endm

	macro _AADA
	dc.w $aada
	endm

	macro _CursorDeviceDispatch
	dc.w $aadb
	endm

	macro _AADC
	dc.w $aadc
	endm

	macro _AADD
	dc.w $aadd
	endm

	macro _AADE
	dc.w $aade
	endm

	macro _AADF
	dc.w $aadf
	endm

	macro _AAE0
	dc.w $aae0
	endm

	macro _AAE1
	dc.w $aae1
	endm

	macro _AAE2
	dc.w $aae2
	endm

	macro _AAE3
	dc.w $aae3
	endm

	macro _AAE4
	dc.w $aae4
	endm

	macro _AAE5
	dc.w $aae5
	endm

	macro _AAE6
	dc.w $aae6
	endm

	macro _AAE7
	dc.w $aae7
	endm

	macro _AAE8
	dc.w $aae8
	endm

	macro _AAE9
	dc.w $aae9
	endm

	macro _AAEA
	dc.w $aaea
	endm

	macro _AAEB
	dc.w $aaeb
	endm

	macro _AAEC
	dc.w $aaec
	endm

	macro _AAED
	dc.w $aaed
	endm

	macro _AppleScript
	dc.w $aaee
	endm

	macro _AAEF
	dc.w $aaef
	endm

	macro _PCCardDispatch
	dc.w $aaf0
	endm

	macro _AAF1
	dc.w $aaf1
	endm

	macro _ControlStripDispatch
	dc.w $aaf2
	endm

	macro _ExpansionBusDispatch
	dc.w $aaf3
	endm

	macro _AAF4
	dc.w $aaf4
	endm

	macro _AAF5
	dc.w $aaf5
	endm

	macro _AAF6
	dc.w $aaf6
	endm

	macro _AAF7
	dc.w $aaf7
	endm

	macro _AAF8
	dc.w $aaf8
	endm

	macro _AAF9
	dc.w $aaf9
	endm

	macro _AAFA
	dc.w $aafa
	endm

	macro _AAFB
	dc.w $aafb
	endm

	macro _AAFC
	dc.w $aafc
	endm

	macro _AAFD
	dc.w $aafd
	endm

	macro _MixedModeMagic
	dc.w $aafe
	endm

	macro _AAFF
	dc.w $aaff
	endm

	macro _BitBlt
	dc.w $ab00
	endm

	macro _BitsToMap
	dc.w $ab01
	endm

	macro _BitsToPix
	dc.w $ab02
	endm

	macro _Jackson
	dc.w $ab03
	endm

	macro _ColorMap
	dc.w $ab04
	endm

	macro _CopyHandle
	dc.w $ab05
	endm

	macro _CullPoints
	dc.w $ab06
	endm

	macro _PutPicByte
	dc.w $ab07
	endm

	macro _PutPicOp
	dc.w $ab08
	endm

	macro _DrawArc
	dc.w $ab09
	endm

	macro _DrawLine
	dc.w $ab0a
	endm

	macro _DrawSlab
	dc.w $ab0b
	endm

	macro _FastSlabMode
	dc.w $ab0c
	endm

	macro _GetSeek
	dc.w $ab0d
	endm

	macro _MakeScaleTbl
	dc.w $ab0e
	endm

	macro _CheckPic
	dc.w $ab0f
	endm

	macro _DoLine
	dc.w $ab10
	endm

	macro _OldPatToNew
	dc.w $ab11
	endm

	macro _PackRgn
	dc.w $ab12
	endm

	macro _PatConvert
	dc.w $ab13
	endm

	macro _PatDither
	dc.w $ab14
	endm

	macro _PatExpand
	dc.w $ab15
	endm

	macro _PInit
	dc.w $ab16
	endm

	macro _PortToMap
	dc.w $ab17
	endm

	macro _PushVerb
	dc.w $ab18
	endm

	macro _PutLine
	dc.w $ab19
	endm

	macro _PutOval
	dc.w $ab1a
	endm

	macro _PutRgn
	dc.w $ab1b
	endm

	macro _NewTempBuffer
	dc.w $ab1c
	endm

	macro _QDExtensions
	dc.w $ab1d
	endm

	macro _DisposeTempBuffer
	dc.w $ab1e
	endm

	macro _RgnBlt
	dc.w $ab1f
	endm

	macro _RgnOp
	dc.w $ab20
	endm

	macro _RSect
	dc.w $ab21
	endm

	macro _SeekRgn
	dc.w $ab22
	endm

	macro _SetFillPat
	dc.w $ab23
	endm

	macro _SetUpStretch
	dc.w $ab24
	endm

	macro _SlabMode
	dc.w $ab25
	endm

	macro _SortPoints
	dc.w $ab26
	endm

	macro _StretchBits
	dc.w $ab27
	endm

	macro _StdDevLoop
	dc.w $ab28
	endm

	macro _TrimRect
	dc.w $ab29
	endm

	macro _XorSlab
	dc.w $ab2a
	endm

	macro _ExTblPtr
	dc.w $ab2b
	endm

	macro _AB2C
	dc.w $ab2c
	endm

	macro _NewTempHandle
	dc.w $ab2d
	endm

	macro _PatExTbl
	dc.w $ab2e
	endm

	macro _AB2F
	dc.w $ab2f
	endm

	macro _bMAIN0
	dc.w $ab30
	endm

	macro _bMAIN1
	dc.w $ab31
	endm

	macro _bMAIN2
	dc.w $ab32
	endm

	macro _bMAIN3
	dc.w $ab33
	endm

	macro _bSETUP8
	dc.w $ab34
	endm

	macro _bMAIN9
	dc.w $ab35
	endm

	macro _bSETUP10
	dc.w $ab36
	endm

	macro _bMAIN11
	dc.w $ab37
	endm

	macro _bXMAIN8
	dc.w $ab38
	endm

	macro _bXMAIN9
	dc.w $ab39
	endm

	macro _bXMAIN10
	dc.w $ab3a
	endm

	macro _bXMAIN11
	dc.w $ab3b
	endm

	macro _bcMain0
	dc.w $ab3c
	endm

	macro _bcMain1
	dc.w $ab3d
	endm

	macro _bHilite
	dc.w $ab3e
	endm

	macro _bcMain3
	dc.w $ab3f
	endm

	macro _bEND0
	dc.w $ab40
	endm

	macro _bEND1
	dc.w $ab41
	endm

	macro _bEND2
	dc.w $ab42
	endm

	macro _bEND3
	dc.w $ab43
	endm

	macro _bLONG8
	dc.w $ab44
	endm

	macro _bEND9
	dc.w $ab45
	endm

	macro _bEND10
	dc.w $ab46
	endm

	macro _bEND11
	dc.w $ab47
	endm

	macro _bXLONG8
	dc.w $ab48
	endm

	macro _bXEND9
	dc.w $ab49
	endm

	macro _bXEND10
	dc.w $ab4a
	endm

	macro _bXEND11
	dc.w $ab4b
	endm

	macro _bcEnd0
	dc.w $ab4c
	endm

	macro _bcEnd1
	dc.w $ab4d
	endm

	macro _bSloHilite
	dc.w $ab4e
	endm

	macro _bcEnd3
	dc.w $ab4f
	endm

	macro _bAvg
	dc.w $ab50
	endm

	macro _bAddPin
	dc.w $ab51
	endm

	macro _bAddOver
	dc.w $ab52
	endm

	macro _bSubPin
	dc.w $ab53
	endm

	macro _bTransparent
	dc.w $ab54
	endm

	macro _bMax
	dc.w $ab55
	endm

	macro _bSubOver
	dc.w $ab56
	endm

	macro _bMin
	dc.w $ab57
	endm

	macro _bSetup0
	dc.w $ab58
	endm

	macro _bLeft0
	dc.w $ab59
	endm

	macro _rMASK0
	dc.w $ab5a
	endm

	macro _rMASK1
	dc.w $ab5b
	endm

	macro _rMASK2
	dc.w $ab5c
	endm

	macro _rMASK3
	dc.w $ab5d
	endm

	macro _rMASK8
	dc.w $ab5e
	endm

	macro _rMASK9
	dc.w $ab5f
	endm

	macro _rMASK10
	dc.w $ab60
	endm

	macro _rMASK11
	dc.w $ab61
	endm

	macro _rXMASK8
	dc.w $ab62
	endm

	macro _rXMASK9
	dc.w $ab63
	endm

	macro _rXMASK10
	dc.w $ab64
	endm

	macro _rXMASK11
	dc.w $ab65
	endm

	macro _rAvg
	dc.w $ab66
	endm

	macro _rAddPin
	dc.w $ab67
	endm

	macro _rAddOver
	dc.w $ab68
	endm

	macro _rSubPin
	dc.w $ab69
	endm

	macro _rTransparent
	dc.w $ab6a
	endm

	macro _rMax
	dc.w $ab6b
	endm

	macro _rSubOver
	dc.w $ab6c
	endm

	macro _rMin
	dc.w $ab6d
	endm

	macro _rcMask0
	dc.w $ab6e
	endm

	macro _rcMask1
	dc.w $ab6f
	endm

	macro _rslowHilite
	dc.w $ab70
	endm

	macro _rcMask3
	dc.w $ab71
	endm

	macro _rHilite
	dc.w $ab72
	endm

	macro _stMASK0
	dc.w $ab73
	endm

	macro _stMASK1
	dc.w $ab74
	endm

	macro _stMASK2
	dc.w $ab75
	endm

	macro _stMASK3
	dc.w $ab76
	endm

	macro _stAvg
	dc.w $ab77
	endm

	macro _stAddPin
	dc.w $ab78
	endm

	macro _stAddOver
	dc.w $ab79
	endm

	macro _stSubPin
	dc.w $ab7a
	endm

	macro _stTransparent
	dc.w $ab7b
	endm

	macro _stMax
	dc.w $ab7c
	endm

	macro _stSubOver
	dc.w $ab7d
	endm

	macro _stMin
	dc.w $ab7e
	endm

	macro _stHilite
	dc.w $ab7f
	endm

	macro _slMASK8
	dc.w $ab80
	endm

	macro _slMASK9
	dc.w $ab81
	endm

	macro _slMASK10
	dc.w $ab82
	endm

	macro _slMASK11
	dc.w $ab83
	endm

	macro _slXMASK8
	dc.w $ab84
	endm

	macro _slXMASK9
	dc.w $ab85
	endm

	macro _slXMASK10
	dc.w $ab86
	endm

	macro _slXMASK11
	dc.w $ab87
	endm

	macro _slAvg
	dc.w $ab88
	endm

	macro _slAddPin
	dc.w $ab89
	endm

	macro _slAddOver
	dc.w $ab8a
	endm

	macro _slSubPin
	dc.w $ab8b
	endm

	macro _slTransparent
	dc.w $ab8c
	endm

	macro _slMax
	dc.w $ab8d
	endm

	macro _slSubOver
	dc.w $ab8e
	endm

	macro _slMin
	dc.w $ab8f
	endm

	macro _slHilite
	dc.w $ab90
	endm

	macro _ITabMatch
	dc.w $ab91
	endm

	macro _ColorThing
	dc.w $ab92
	endm

	macro _Pollack
	dc.w $ab93
	endm

	macro _AllocRunBuf
	dc.w $ab94
	endm

	macro _InitRgn
	dc.w $ab95
	endm

	macro _ScaleBlt
	dc.w $ab96
	endm

	macro _stNoStack
	dc.w $ab97
	endm

	macro _BlitCase
	dc.w $ab98
	endm

	macro _stScanLoop
	dc.w $ab99
	endm

	macro _PicItem1
	dc.w $ab9a
	endm

	macro _MakeGrayItab
	dc.w $ab9b
	endm

	macro _FastLine
	dc.w $ab9c
	endm

	macro _FastSlant
	dc.w $ab9d
	endm

	macro _BitsDevLoop
	dc.w $ab9e
	endm

	macro _AB9F
	dc.w $ab9f
	endm

	macro _rArith16Tab
	dc.w $aba0
	endm

	macro _rArith32Tab
	dc.w $aba1
	endm

	macro _rHiliteTab
	dc.w $aba2
	endm

	macro _gsRunTbl
	dc.w $aba3
	endm

	macro _gsExpTbl
	dc.w $aba4
	endm

	macro _gsSeekTbl
	dc.w $aba5
	endm

	macro _stArith16Tab
	dc.w $aba6
	endm

	macro _stArith32Tab
	dc.w $aba7
	endm

	macro _stColorTab
	dc.w $aba8
	endm

	macro _stGrayTab
	dc.w $aba9
	endm

	macro _stSearchTab
	dc.w $abaa
	endm

	macro _ScaleIndToInd
	dc.w $abab
	endm

	macro _scIndTab1
	dc.w $abac
	endm

	macro _scIndTab2
	dc.w $abad
	endm

	macro _scIndTab4
	dc.w $abae
	endm

	macro _scIndTab8
	dc.w $abaf
	endm

	macro _scIndTab16
	dc.w $abb0
	endm

	macro _scIndTab32
	dc.w $abb1
	endm

	macro _scDirTab1
	dc.w $abb2
	endm

	macro _scDirTab2
	dc.w $abb3
	endm

	macro _scDirTab4
	dc.w $abb4
	endm

	macro _scDirTab8
	dc.w $abb5
	endm

	macro _scDirTab16
	dc.w $abb6
	endm

	macro _scDirTab32
	dc.w $abb7
	endm

	macro _bArith16Tab
	dc.w $abb8
	endm

	macro _bArith32Tab
	dc.w $abb9
	endm

	macro _bHiliteTab
	dc.w $abba
	endm

	macro _bArith16Setup
	dc.w $abbb
	endm

	macro _bArith32Setup
	dc.w $abbc
	endm

	macro _slArith16Tab
	dc.w $abbd
	endm

	macro _slArith32Tab
	dc.w $abbe
	endm

	macro _32QD
	dc.w $abbf
	endm

	macro _32QD
	dc.w $abc0
	endm

	macro _32QD
	dc.w $abc1
	endm

	macro _32QD
	dc.w $abc2
	endm

	macro _NQDMisc
	dc.w $abc3
	endm

	macro _GetPMData
	dc.w $abc4
	endm

	macro _ABC5
	dc.w $abc5
	endm

	macro _ABC6
	dc.w $abc6
	endm

	macro _ABC7
	dc.w $abc7
	endm

	macro _ABC8
	dc.w $abc8
	endm

	macro _IconDispatch
	dc.w $abc9
	endm

	macro _DeviceLoop
	dc.w $abca
	endm

	macro _ABCB
	dc.w $abcb
	endm

	macro _PBBlockMove
	dc.w $abcc
	endm

	macro _ABCD
	dc.w $abcd
	endm

	macro _ABCE
	dc.w $abce
	endm

	macro _ABCF
	dc.w $abcf
	endm

	macro _ABD0
	dc.w $abd0
	endm

	macro _ABD1
	dc.w $abd1
	endm

	macro _ABD2
	dc.w $abd2
	endm

	macro _ABD3
	dc.w $abd3
	endm

	macro _ABD4
	dc.w $abd4
	endm

	macro _ABD5
	dc.w $abd5
	endm

	macro _ABD6
	dc.w $abd6
	endm

	macro _ABD7
	dc.w $abd7
	endm

	macro _ABD8
	dc.w $abd8
	endm

	macro _ABD9
	dc.w $abd9
	endm

	macro _ABDA
	dc.w $abda
	endm

	macro _ABDB
	dc.w $abdb
	endm

	macro _ABDC
	dc.w $abdc
	endm

	macro _ABDD
	dc.w $abdd
	endm

	macro _ABDE
	dc.w $abde
	endm

	macro _ABDF
	dc.w $abdf
	endm

	macro _QDExtensions2
	dc.w $abe0
	endm

	macro _ABE1
	dc.w $abe1
	endm

	macro _ABE2
	dc.w $abe2
	endm

	macro _ABE3
	dc.w $abe3
	endm

	macro _ABE4
	dc.w $abe4
	endm

	macro _ABE5
	dc.w $abe5
	endm

	macro _ABE6
	dc.w $abe6
	endm

	macro _ABE7
	dc.w $abe7
	endm

	macro _ABE8
	dc.w $abe8
	endm

	macro _ABE9
	dc.w $abe9
	endm

	macro _ABEA
	dc.w $abea
	endm

	macro _DisplayDispatch
	dc.w $abeb
	endm

	macro _ABEC
	dc.w $abec
	endm

	macro _DragDispatch
	dc.w $abed
	endm

	macro _ColorSync
	dc.w $abee
	endm

	macro _TTSMgr
	dc.w $abef
	endm

	macro _AROSE
	dc.w $abf0
	endm

	macro _GestaltValueDispatch
	dc.w $abf1
	endm

	macro _ThreadDispatch
	dc.w $abf2
	endm

	macro _ABF3
	dc.w $abf3
	endm

	macro _XTNDMgr
	dc.w $abf4
	endm

	macro _DSPDispatch
	dc.w $abf5
	endm

	macro _CollectionMgr
	dc.w $abf6
	endm

	macro _ABF7
	dc.w $abf7
	endm

	macro _StdOpcodeProc
	dc.w $abf8
	endm

	macro _AUXDispatch
	dc.w $abf9
	endm

	macro _AUXSysCall
	dc.w $abfa
	endm

	macro _MessageMgr
	dc.w $abfb
	endm

	macro _TranslationDispatch
	dc.w $abfc
	endm

	macro _ABFD
	dc.w $abfd
	endm

	macro _Printing
	dc.w $abfe
	endm

	macro _DebugStr
	dc.w $abff
	endm

