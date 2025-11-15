
; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5BB50:                           ; DATA XREF: ROM:FFC07AFC↑o

var_32          = -$32
var_16          = -$16
var_14          = -$14
var_E           = -$E
var_A           = -$A
var_6           = -6
var_2           = -2
arg_0           =  8

                link    a6,#-$16
                movem.l d3/d5-d7/a2-a4,-(sp)
                move.w  arg_0(a6),d5
                movea.l ($2B6).w,a0
                movea.l $110(a0),a3
                move    sr,d0
                move.w  #$700,d1
                and.w   d0,d1
                bne.w   loc_FFC5BD42
                moveq   #1,d0
                and.w   $18(a3),d0
                beq.w   loc_FFC5BD42
                tst.b   $5C(a3)
                beq.s   loc_FFC5BBB4
                tst.l   $40(a3)
                beq.s   loc_FFC5BBB4
                subq.l  #4,sp
                move.l  $40(a3),-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$68766F6C,-(sp)
                move.l  $5E(a3),-(sp)
                move.l  #$C0104,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7
                sne     d3
                neg.b   d3
                tst.w   d7
                bne.s   loc_FFC5BBB4
                clr.b   $5C(a3)

loc_FFC5BBB4:                           ; CODE XREF: sub_FFC5BB50+2E↑j
                                        ; sub_FFC5BB50+34↑j ...
                move.w  #$4000,d0
                and.w   ($B22).w,d0
                bne.s   loc_FFC5BBCC
                ext.l   d5
                move.l  d5,-(sp)
                jsr     sub_FFC5FB6E
                addq.w  #4,sp
                bra.w   loc_FFC5BD42
; ---------------------------------------------------------------------------

loc_FFC5BBCC:                           ; CODE XREF: sub_FFC5BB50+6C↑j
                lea     var_2(a6),a1
                movea.l a1,a0
                move.l  #$2007C,d0
                _ReadXPRam
                moveq   #1,d0
                cmp.w   var_2(a6),d0
                bne.s   loc_FFC5BBF2
                ext.l   d5
                move.l  d5,-(sp)
                jsr     sub_FFC5FB6E
                tst.b   d0
                addq.w  #4,sp
                bne.w   loc_FFC5BD42

loc_FFC5BBF2:                           ; CODE XREF: sub_FFC5BB50+90↑j
                moveq   #1,d0
                move.b  d0,-(sp)
                _SetResLoad
                pea     var_E(a6)
                jsr     sub_FFC5EE2A
                move.w  d0,d7
                addq.w  #4,sp
                bne.w   loc_FFC5BD22
                movea.l var_E(a6),a0
                movea.l 4(a0),a4
                subq.l  #4,sp
                move.l  #$736E6420,-(sp)
                move.w  var_2(a6),-(sp)
                _rGetResource
                move.l  (sp)+,var_A(a6)
                bne.s   loc_FFC5BC3E
                moveq   #1,d0
                cmp.w   var_2(a6),d0
                beq.s   loc_FFC5BC3E
                subq.l  #4,sp
                move.l  #$736E6420,-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                _rGetResource
                move.l  (sp)+,var_A(a6)

loc_FFC5BC3E:                           ; CODE XREF: sub_FFC5BB50+D2↑j
                                        ; sub_FFC5BB50+DA↑j
                tst.l   var_A(a6)
                beq.w   loc_FFC5BD04
                tst.w   $118(a4)
                ble.s   loc_FFC5BC68
                move.l  $114(a4),d0
                cmp.l   var_A(a6),d0
                beq.s   loc_FFC5BC68

loc_FFC5BC56:                           ; CODE XREF: sub_FFC5BB50+10A↓j
                tst.w   $118(a4)
                bgt.s   loc_FFC5BC56
                lea     $F0(a4),a1
                movea.l a1,a0
                _NMRemove
                clr.w   $F4(a4)

loc_FFC5BC68:                           ; CODE XREF: sub_FFC5BB50+FA↑j
                                        ; sub_FFC5BB50+104↑j
                moveq   #2,d0
                and.w   $18(a3),d0
                beq.s   loc_FFC5BC74
                clr.b   d6
                bra.s   loc_FFC5BC7C
; ---------------------------------------------------------------------------

loc_FFC5BC74:                           ; CODE XREF: sub_FFC5BB50+11E↑j
                movea.l ($2B6).w,a0
                move.b  $129(a0),d6

loc_FFC5BC7C:                           ; CODE XREF: sub_FFC5BB50+122↑j
                tst.w   $118(a4)
                bne.s   loc_FFC5BCE0
                movea.l var_A(a6),a0
                _HGetState
                move.b  d0,$11A(a4)
                move.l  var_A(a6),$114(a4)
                move.w  #$2B,var_16(a6) ; '+'
                move.w  #$FF,var_14(a6)
                pea     var_16(a6)
                move.l  var_E(a6),-(sp)
                jsr     sub_FFC5DF84
                move.w  d0,d7
                movea.l $114(a4),a0
                _HLock
                subq.l  #2,sp
                move.l  var_E(a6),-(sp)
                move.l  $114(a4),-(sp)
                move.b  d6,-(sp)
                _SndPlay
                move.w  (sp)+,d7
                addq.w  #8,sp
                bne.s   loc_FFC5BD04
                move.w  #$D,var_16(a6)
                subq.l  #2,sp
                move.l  var_E(a6),-(sp)
                pea     var_16(a6)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDoCommand
                move.w  (sp)+,d7
                bne.s   loc_FFC5BD04

loc_FFC5BCE0:                           ; CODE XREF: sub_FFC5BB50+130↑j
                tst.b   d6
                beq.s   loc_FFC5BCEA
                addq.w  #1,$118(a4)
                bra.s   loc_FFC5BD42
; ---------------------------------------------------------------------------

loc_FFC5BCEA:                           ; CODE XREF: sub_FFC5BB50+192↑j
                movea.l $114(a4),a0
                move.b  $11A(a4),d0
                _HSetState
                subq.l  #2,sp
                move.l  var_E(a6),-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                _SndDisposeChannel
                addq.w  #2,sp
                bra.s   loc_FFC5BD42
; ---------------------------------------------------------------------------

loc_FFC5BD04:                           ; CODE XREF: sub_FFC5BB50+F2↑j
                                        ; sub_FFC5BB50+174↑j ...
                tst.l   $114(a4)
                beq.s   loc_FFC5BD14
                movea.l $114(a4),a0
                move.b  $11A(a4),d0
                _HSetState

loc_FFC5BD14:                           ; CODE XREF: sub_FFC5BB50+1B8↑j
                subq.l  #2,sp
                move.l  var_E(a6),-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                _SndDisposeChannel
                addq.w  #2,sp

loc_FFC5BD22:                           ; CODE XREF: sub_FFC5BB50+B4↑j
                tst.b   ($8F2).w
                bne.s   loc_FFC5BD42
                moveq   #0,d0
                move.w  d0,-(sp)
                _FlashMenuBar
                movea.w #8,a0
                lea     var_6(a6),a2
                movea.l a2,a1
                _Delay
                move.l  d0,(a1)
                moveq   #0,d0
                move.w  d0,-(sp)
                _FlashMenuBar

loc_FFC5BD42:                           ; CODE XREF: sub_FFC5BB50+1C↑j
                                        ; sub_FFC5BB50+26↑j ...
                movem.l var_32(a6),d3/d5-d7/a2-a4
                unlk    a6
                rtd     #2
; End of function sub_FFC5BB50


; =============== S U B R O U T I N E =======================================


sub_FFC5BD4E:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$1AC),-(sp)
                rts
; End of function sub_FFC5BD4E

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5BD60:                           ; DATA XREF: ROM:FFC07AE8↑o

var_28          = -$28
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12
arg_E           =  $16

                link    a6,#-$10
                movem.l d4-d7/a3-a4,-(sp)
                move.w  arg_8(a6),d5
                move.l  arg_4(a6),d6
                movea.l ($2B6).w,a0
                move.l  $110(a0),var_C(a6)
                clr.w   d7
                moveq   #0,d0
                move.b  ($27E).w,d0
                tst.l   d0
                beq.s   loc_FFC5BD9A
                moveq   #0,d0
                move.b  ($27E).w,d0
                cmpi.w  #5,d0
                beq.s   loc_FFC5BD9A
                move.w  #$FF37,d7
                bra.w   loc_FFC5BF84
; ---------------------------------------------------------------------------

loc_FFC5BD9A:                           ; CODE XREF: sub_FFC5BD60+24↑j
                                        ; sub_FFC5BD60+30↑j
                tst.l   arg_A(a6)
                bne.s   loc_FFC5BDA8
                move.w  #$FF33,d7
                bra.w   loc_FFC5BF84
; ---------------------------------------------------------------------------

loc_FFC5BDA8:                           ; CODE XREF: sub_FFC5BD60+3E↑j
                movea.l var_C(a6),a0
                tst.l   $30(a0)
                beq.s   loc_FFC5BDC2
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.l  #$174000C,d0
                _SoundDispatch
                addq.w  #2,sp

loc_FFC5BDC2:                           ; CODE XREF: sub_FFC5BD60+50↑j
                movea.l arg_A(a6),a0
                movea.l (a0),a4
                move.l  a4,d0
                bne.s   loc_FFC5BDF0
                move.l  #$424,d0
                _NewPtrSysClear
                movea.l a0,a4
                move.l  a4,d0
                bne.s   loc_FFC5BDE6
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.w   loc_FFC5BF84
; ---------------------------------------------------------------------------

loc_FFC5BDE6:                           ; CODE XREF: sub_FFC5BD60+78↑j
                move.w  #$80,$1E(a4)
                moveq   #1,d4
                bra.s   loc_FFC5BE24
; ---------------------------------------------------------------------------

loc_FFC5BDF0:                           ; CODE XREF: sub_FFC5BD60+6A↑j
                move.l  a4,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFC5BE04
                move.w  #$FF2F,d7
                bra.w   loc_FFC5BF84
; ---------------------------------------------------------------------------

loc_FFC5BE04:                           ; CODE XREF: sub_FFC5BD60+9A↑j
                tst.w   $1E(a4)
                bgt.s   loc_FFC5BE10
                moveq   #$FFFFFFCE,d7
                bra.w   loc_FFC5BF84
; ---------------------------------------------------------------------------

loc_FFC5BE10:                           ; CODE XREF: sub_FFC5BD60+A8↑j
                clr.w   $1C(a4)
                moveq   #0,d0
                move.l  d0,4(a4)
                move.l  d0,$10(a4)
                clr.w   $22(a4)
                clr.b   d4

loc_FFC5BE24:                           ; CODE XREF: sub_FFC5BD60+8E↑j
                move.l  arg_0(a6),8(a4)
                move.w  #$FFFF,$20(a4)
                move.l  #$628,d0
                _NewPtrSysClear
                move.l  a0,4(a4)
                bne.s   loc_FFC5BE4A
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.w   loc_FFC5BF78
; ---------------------------------------------------------------------------

loc_FFC5BE4A:                           ; CODE XREF: sub_FFC5BD60+DC↑j
                movea.l 4(a4),a3
                tst.b   d4
                beq.s   loc_FFC5BE58
                move.w  #1,$9E(a3)

loc_FFC5BE58:                           ; CODE XREF: sub_FFC5BD60+F0↑j
                cmpi.w  #$FFFF,d5
                bne.s   loc_FFC5BE6C
                tst.l   d6
                beq.s   loc_FFC5BE6C
                move.l  d6,var_8(a6)
                moveq   #5,d5
                moveq   #0,d6
                bra.s   loc_FFC5BE80
; ---------------------------------------------------------------------------

loc_FFC5BE6C:                           ; CODE XREF: sub_FFC5BD60+FC↑j
                                        ; sub_FFC5BD60+100↑j
                subq.l  #2,sp
                pea     var_8(a6)
                move.l  #$21C0018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                bne.w   loc_FFC5BF72

loc_FFC5BE80:                           ; CODE XREF: sub_FFC5BD60+10A↑j
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                pea     var_4(a6)
                pea     $10(a3)
                move.l  var_8(a6),-(sp)
                jsr     sub_FFC5E4A0
                move.w  d0,d7
                cmpi.w  #$FF94,d7
                lea     $14(sp),sp
                beq.s   loc_FFC5BEAA
                cmpi.w  #$F82C,d7
                bne.s   loc_FFC5BEE8

loc_FFC5BEAA:                           ; CODE XREF: sub_FFC5BD60+142↑j
                movea.l ($2B6).w,a0
                move.l  $1AE(a0),var_10(a6)
                movea.l ($2B6).w,a0
                move.l  #$8000,$1AE(a0)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                pea     var_4(a6)
                pea     $10(a3)
                move.l  var_8(a6),-(sp)
                jsr     sub_FFC5E4A0
                move.w  d0,d7
                movea.l ($2B6).w,a0
                move.l  var_10(a6),$1AE(a0)
                lea     $14(sp),sp

loc_FFC5BEE8:                           ; CODE XREF: sub_FFC5BD60+148↑j
                tst.w   d7
                bne.w   loc_FFC5BF72
                move.l  var_8(a6),4(a3)
                move.l  var_4(a6),(a3)
                move.l  d6,$8E(a3)
                cmpi.w  #3,d5
                bne.s   loc_FFC5BF08
                andi.l  #$FFFFFFF8,d6

loc_FFC5BF08:                           ; CODE XREF: sub_FFC5BD60+1A0↑j
                move.l  d6,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC5E766
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFC5BF54
                movea.l var_C(a6),a0
                move.l  (a0),(a4)
                tst.w   d5
                beq.s   loc_FFC5BF30
                ext.l   d5
                move.l  d5,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC5E7F4
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFC5BF54

loc_FFC5BF30:                           ; CODE XREF: sub_FFC5BD60+1BE↑j
                move.b  #5,($27E).w
                movea.l var_C(a6),a0
                move.l  a4,(a0)
                movea.l var_C(a6),a0
                addq.w  #1,4(a0)
                movea.l arg_A(a6),a0
                tst.l   (a0)
                bne.s   loc_FFC5BF4E
                move.l  a4,(a0)

loc_FFC5BF4E:                           ; CODE XREF: sub_FFC5BD60+1EA↑j
                move.w  d7,arg_E(a6)
                bra.s   loc_FFC5BF88
; ---------------------------------------------------------------------------

loc_FFC5BF54:                           ; CODE XREF: sub_FFC5BD60+1B4↑j
                                        ; sub_FFC5BD60+1CE↑j
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                move.l  $10(a3),-(sp)
                move.l  #$40102,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC5E4EA
                addq.w  #8,sp

loc_FFC5BF72:                           ; CODE XREF: sub_FFC5BD60+11C↑j
                                        ; sub_FFC5BD60+18A↑j
                movea.l 4(a4),a0
                _DisposePtr

loc_FFC5BF78:                           ; CODE XREF: sub_FFC5BD60+E6↑j
                movea.l arg_A(a6),a0
                tst.l   (a0)
                bne.s   loc_FFC5BF84
                movea.l a4,a0
                _DisposePtr

loc_FFC5BF84:                           ; CODE XREF: sub_FFC5BD60+36↑j
                                        ; sub_FFC5BD60+44↑j ...
                move.w  d7,arg_E(a6)

loc_FFC5BF88:                           ; CODE XREF: sub_FFC5BD60+1F2↑j
                movem.l var_28(a6),d4-d7/a3-a4
                unlk    a6
                rtd     #$E
; End of function sub_FFC5BD60


; =============== S U B R O U T I N E =======================================


sub_FFC5BF94:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$198),-(sp)
                rts
; End of function sub_FFC5BF94

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5BFA0:                           ; DATA XREF: ROM:FFC07AD4↑o

var_28          = -$28
var_14          = -$14
var_10          = -$10
var_C           = -$C
arg_0           =  8
arg_2           =  $A
arg_6           =  $E

                link    a6,#-$14
                movem.l d6-d7/a2-a4,-(sp)
                move.b  arg_0(a6),d6
                movea.l arg_2(a6),a3
                movea.l ($2B6).w,a0
                move.l  $110(a0),var_14(a6)
                clr.w   d7
                move.l  a3,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5BFD0
                move.w  #$FF33,d7
                bra.w   loc_FFC5C0EC
; ---------------------------------------------------------------------------

loc_FFC5BFD0:                           ; CODE XREF: sub_FFC5BFA0+26↑j
                movea.l 4(a3),a2
                tst.b   $6A(a2)
                beq.s   loc_FFC5BFEC
                subq.l  #2,sp
                move.l  a3,-(sp)
                move.b  d6,-(sp)
                move.l  #$3080008,d0
                _SoundDispatch
                addq.w  #2,sp
                bra.s   loc_FFC5C02A
; ---------------------------------------------------------------------------

loc_FFC5BFEC:                           ; CODE XREF: sub_FFC5BFA0+38↑j
                tst.b   d6
                beq.s   loc_FFC5C014
                move.w  #4,var_C(a6)
                subq.l  #2,sp
                move.l  a3,-(sp)
                pea     var_C(a6)
                _SndDoImmediate
                move.w  #3,var_C(a6)
                subq.l  #2,sp
                move.l  a3,-(sp)
                pea     var_C(a6)
                _SndDoImmediate
                addq.w  #4,sp
                bra.s   loc_FFC5C02A
; ---------------------------------------------------------------------------

loc_FFC5C014:                           ; CODE XREF: sub_FFC5BFA0+4E↑j
                move.w  #3,var_C(a6)
                subq.l  #2,sp
                move.l  a3,-(sp)
                pea     var_C(a6)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDoCommand
                addq.w  #2,sp

loc_FFC5C02A:                           ; CODE XREF: sub_FFC5BFA0+4A↑j
                                        ; sub_FFC5BFA0+72↑j ...
                moveq   #$FFFFFFFF,d0
                cmp.w   $20(a3),d0
                bne.s   loc_FFC5C02A
                move.l  a3,var_10(a6)
                movea.l var_14(a6),a0
                lea     (a0),a4
                bra.s   loc_FFC5C04E
; ---------------------------------------------------------------------------

loc_FFC5C03E:                           ; CODE XREF: sub_FFC5BFA0+B0↓j
                move.l  (a4),d0
                cmp.l   var_10(a6),d0
                bne.s   loc_FFC5C04A
                move.l  (a3),(a4)
                bra.s   loc_FFC5C052
; ---------------------------------------------------------------------------

loc_FFC5C04A:                           ; CODE XREF: sub_FFC5BFA0+A4↑j
                movea.l (a4),a0
                movea.l a0,a4

loc_FFC5C04E:                           ; CODE XREF: sub_FFC5BFA0+9C↑j
                tst.l   (a4)
                bne.s   loc_FFC5C03E

loc_FFC5C052:                           ; CODE XREF: sub_FFC5BFA0+A8↑j
                movea.l var_14(a6),a0
                subq.w  #1,4(a0)
                subq.l  #4,sp
                move.l  (a2),-(sp)
                move.l  $10(a2),-(sp)
                move.l  #$40102,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (a2),-(sp)
                jsr     sub_FFC5E4EA
                movea.l var_14(a6),a0
                moveq   #1,d0
                cmp.w   4(a0),d0
                addq.w  #8,sp
                ble.s   loc_FFC5C084
                clr.b   ($27E).w

loc_FFC5C084:                           ; CODE XREF: sub_FFC5BFA0+DE↑j
                tst.l   $76(a2)
                beq.s   loc_FFC5C090
                movea.l $76(a2),a0
                _DisposeHandle

loc_FFC5C090:                           ; CODE XREF: sub_FFC5BFA0+E8↑j
                tst.l   $7A(a2)
                beq.s   loc_FFC5C09C
                movea.l $7A(a2),a0
                _DisposeHandle

loc_FFC5C09C:                           ; CODE XREF: sub_FFC5BFA0+F4↑j
                tst.l   $7E(a2)
                beq.s   loc_FFC5C0A8
                movea.l $7E(a2),a0
                _DisposeHandle

loc_FFC5C0A8:                           ; CODE XREF: sub_FFC5BFA0+100↑j
                tst.w   $F4(a2)
                beq.s   loc_FFC5C0B6
                lea     $F0(a2),a1
                movea.l a1,a0
                _NMRemove

loc_FFC5C0B6:                           ; CODE XREF: sub_FFC5BFA0+10C↑j
                tst.l   $114(a2)
                beq.s   loc_FFC5C0C6
                movea.l $114(a2),a0
                move.b  $11A(a2),d0
                _HSetState

loc_FFC5C0C6:                           ; CODE XREF: sub_FFC5BFA0+11A↑j
                movea.l 4(a3),a1
                lea     $AC(a1),a1
                movea.l a1,a0
                _RmvTime
                movea.l 4(a3),a0
                _DisposePtr
                moveq   #0,d0
                move.l  d0,4(a3)
                move.w  $9E(a2),d1
                and.w   #1,d1
                beq.s   loc_FFC5C0EC
                movea.l a3,a0
                _DisposePtr

loc_FFC5C0EC:                           ; CODE XREF: sub_FFC5BFA0+2C↑j
                                        ; sub_FFC5BFA0+146↑j
                move.w  d7,arg_6(a6)
                movem.l var_28(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #6
; End of function sub_FFC5BFA0


; =============== S U B R O U T I N E =======================================


sub_FFC5C0FC:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$184),-(sp)
                rts
; End of function sub_FFC5C0FC

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C110:                           ; DATA XREF: ROM:FFC07AC4↑o

var_8           = -8
arg_4           =  $C
arg_6           =  $E
arg_A           =  $12
arg_E           =  $16

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_A(a6),a4
                move.l  a4,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5C12E
                move.w  #$FF33,d7
                bra.s   loc_FFC5C14A
; ---------------------------------------------------------------------------

loc_FFC5C12E:                           ; CODE XREF: sub_FFC5C110+16↑j
                tst.l   arg_6(a6)
                beq.s   loc_FFC5C138
                moveq   #$FFFFFFCE,d7
                bra.s   loc_FFC5C14A
; ---------------------------------------------------------------------------

loc_FFC5C138:                           ; CODE XREF: sub_FFC5C110+22↑j
                move.w  arg_4(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC5E7F4
                move.w  d0,d7
                addq.w  #8,sp

loc_FFC5C14A:                           ; CODE XREF: sub_FFC5C110+1C↑j
                                        ; sub_FFC5C110+26↑j
                move.w  d7,arg_E(a6)
                movem.l var_8(a6),d7/a4
                unlk    a6
                rtd     #$E
; End of function sub_FFC5C110


; =============== S U B R O U T I N E =======================================


sub_FFC5C15A:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$174),-(sp)
                rts
; End of function sub_FFC5C15A

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C170:                           ; DATA XREF: ROM:FFC07AEC↑o

var_1C          = -$1C
var_C           = -$C
var_4           = -4
arg_0           =  8
arg_2           =  $A
arg_6           =  $E
arg_A           =  $12

                link    a6,#-$C
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_6(a6),a3
                movea.l arg_2(a6),a4
                move.l  a4,d0
                beq.s   loc_FFC5C188
                tst.l   (a4)
                bne.s   loc_FFC5C190

loc_FFC5C188:                           ; CODE XREF: sub_FFC5C170+12↑j
                move.w  #$FF34,d7
                bra.w   loc_FFC5C266
; ---------------------------------------------------------------------------

loc_FFC5C190:                           ; CODE XREF: sub_FFC5C170+16↑j
                move.l  a3,d0
                beq.s   loc_FFC5C1A8
                move.l  a3,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5C1A8
                move.w  #$FF33,d7
                bra.w   loc_FFC5C266
; ---------------------------------------------------------------------------

loc_FFC5C1A8:                           ; CODE XREF: sub_FFC5C170+22↑j
                                        ; sub_FFC5C170+2E↑j
                movea.l (a4),a0
                moveq   #1,d0
                cmp.w   (a0),d0
                beq.s   loc_FFC5C1BE
                moveq   #2,d0
                cmp.w   (a0),d0
                beq.s   loc_FFC5C1BE
                move.w  #$FF32,d7
                bra.w   loc_FFC5C266
; ---------------------------------------------------------------------------

loc_FFC5C1BE:                           ; CODE XREF: sub_FFC5C170+3E↑j
                                        ; sub_FFC5C170+44↑j
                movea.l a4,a0
                _HGetState
                move.b  d0,d6
                movea.l a4,a0
                _HLock
                move.l  a3,var_4(a6)
                bne.s   loc_FFC5C1E4
                subq.l  #2,sp
                pea     var_4(a6)
                moveq   #0,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                move.l  d1,-(sp)
                _SndNewChannel
                move.w  (sp)+,d7
                bne.s   loc_FFC5C260

loc_FFC5C1E4:                           ; CODE XREF: sub_FFC5C170+5C↑j
                move.l  (a4),-(sp)
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC5D7EC
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFC5C24E
                tst.b   arg_0(a6)
                bne.s   loc_FFC5C230
                move.l  a3,d0
                beq.s   loc_FFC5C214
                move.w  #3,var_C(a6)
                subq.l  #2,sp
                move.l  a3,-(sp)
                pea     var_C(a6)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDoCommand
                addq.w  #2,sp

loc_FFC5C214:                           ; CODE XREF: sub_FFC5C170+8C↑j
                                        ; sub_FFC5C170+AE↓j
                movea.l var_4(a6),a0
                moveq   #$FFFFFFFF,d0
                cmp.w   $20(a0),d0
                bne.s   loc_FFC5C214

loc_FFC5C220:                           ; CODE XREF: sub_FFC5C170+BE↓j
                movea.l var_4(a6),a0
                movea.l 4(a0),a0
                moveq   #4,d0
                and.w   $9E(a0),d0
                bne.s   loc_FFC5C220

loc_FFC5C230:                           ; CODE XREF: sub_FFC5C170+88↑j
                move.l  a3,d0
                bne.s   loc_FFC5C242
                subq.l  #2,sp
                move.l  var_4(a6),-(sp)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDisposeChannel
                addq.w  #2,sp

loc_FFC5C242:                           ; CODE XREF: sub_FFC5C170+C2↑j
                movea.l a4,a0
                move.b  d6,d0
                _HSetState
                move.w  d7,arg_A(a6)
                bra.s   loc_FFC5C26A
; ---------------------------------------------------------------------------

loc_FFC5C24E:                           ; CODE XREF: sub_FFC5C170+82↑j
                move.l  a3,d0
                bne.s   loc_FFC5C260
                subq.l  #2,sp
                move.l  var_4(a6),-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                _SndDisposeChannel
                addq.w  #2,sp

loc_FFC5C260:                           ; CODE XREF: sub_FFC5C170+72↑j
                                        ; sub_FFC5C170+E0↑j
                movea.l a4,a0
                move.b  d6,d0
                _HSetState

loc_FFC5C266:                           ; CODE XREF: sub_FFC5C170+1C↑j
                                        ; sub_FFC5C170+34↑j ...
                move.w  d7,arg_A(a6)

loc_FFC5C26A:                           ; CODE XREF: sub_FFC5C170+DC↑j
                movem.l var_1C(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC5C170


; =============== S U B R O U T I N E =======================================


sub_FFC5C276:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$19C),-(sp)
                rts
; End of function sub_FFC5C276


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C280:                           ; DATA XREF: ROM:FFC07AD8↑o

var_14          = -$14
arg_0           =  8
arg_2           =  $A
arg_6           =  $E
arg_A           =  $12

                link    a6,#0
                movem.l d5-d7/a3-a4,-(sp)
                move.b  arg_0(a6),d6
                movea.l arg_2(a6),a3
                movea.l arg_6(a6),a4
                move.l  a4,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5C2A6
                move.w  #$FF33,d5
                bra.s   loc_FFC5C2D0
; ---------------------------------------------------------------------------

loc_FFC5C2A6:                           ; CODE XREF: sub_FFC5C280+1E↑j
                clr.w   d5

loc_FFC5C2A8:                           ; CODE XREF: sub_FFC5C280+3A↓j
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC5D66C
                move.b  d0,d7
                addq.w  #8,sp
                tst.b   d7
                beq.s   loc_FFC5C2BC
                tst.b   d6
                beq.s   loc_FFC5C2A8

loc_FFC5C2BC:                           ; CODE XREF: sub_FFC5C280+36↑j
                tst.b   d7
                beq.s   loc_FFC5C2C6
                move.w  #$FF35,d5
                bra.s   loc_FFC5C2D0
; ---------------------------------------------------------------------------

loc_FFC5C2C6:                           ; CODE XREF: sub_FFC5C280+3E↑j
                move.l  a4,-(sp)
                jsr     sub_FFC5D850
                move.w  d0,d5
                addq.w  #4,sp

loc_FFC5C2D0:                           ; CODE XREF: sub_FFC5C280+24↑j
                                        ; sub_FFC5C280+44↑j
                move.w  d5,arg_A(a6)
                movem.l var_14(a6),d5-d7/a3-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC5C280


; =============== S U B R O U T I N E =======================================


sub_FFC5C2E0:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$188),-(sp)
                rts
; End of function sub_FFC5C2E0

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C2F0:                           ; DATA XREF: ROM:FFC07ADC↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a4
                move.l  a4,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5C312
                move.w  #$FF33,d7
                bra.s   loc_FFC5C328
; ---------------------------------------------------------------------------

loc_FFC5C312:                           ; CODE XREF: sub_FFC5C2F0+1A↑j
                lea     $14(a4),a0
                movea.l a3,a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC5DF84
                move.w  d0,d7
                addq.w  #8,sp

loc_FFC5C328:                           ; CODE XREF: sub_FFC5C2F0+20↑j
                move.w  d7,arg_8(a6)
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC5C2F0


; =============== S U B R O U T I N E =======================================


sub_FFC5C338:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$18C),-(sp)
                rts
; End of function sub_FFC5C338

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C350:                           ; DATA XREF: ROM:FFC07AD0↑o

var_C           = -$C
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l d6-d7/a4,-(sp)
                movea.l arg_0(a6),a4
                clr.w   d7
                move.w  (a4),d0
                subi.w  #$18,d0
                bcs.s   loc_FFC5C3DA
                cmpi.w  #3,d0
                bhi.s   loc_FFC5C3DA
                add.w   d0,d0
                move.w  word_FFC5C376(pc,d0.w),d0
                jmp     (pc,d0.w)
; ---------------------------------------------------------------------------
word_FFC5C376:  dc.w $A                 ; DATA XREF: sub_FFC5C350+1E↑r
                dc.l $5C0038, $547005, $B06E000C, $66082C3C, $7CF, $60062C3C
                dc.l $8F, $20064680, $C0AC0004, $6706426C, $26038, $397C0001
                dc.l $26030, $207802B6, $20680110, $32280004, $48C12001
                dc.l $E7899280, $5E413941, $26014, $397C0007, $2600C, $297C0003
                dc.l 4
; ---------------------------------------------------------------------------
                bra.s   loc_FFC5C3DC
; ---------------------------------------------------------------------------

loc_FFC5C3DA:                           ; CODE XREF: sub_FFC5C350+14↑j
                                        ; sub_FFC5C350+1A↑j
                moveq   #$FFFFFFCE,d7

loc_FFC5C3DC:                           ; CODE XREF: sub_FFC5C350+88↑j
                move.w  d7,arg_6(a6)
                movem.l var_C(a6),d6-d7/a4
                unlk    a6
                rtd     #6
; End of function sub_FFC5C350


; =============== S U B R O U T I N E =======================================


sub_FFC5C3EC:                           ; DATA XREF: ROM:ToolboxTraps↓o
                move.l  ([$2070],$180),-(sp)
                rts
; End of function sub_FFC5C3EC

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C400:                           ; DATA XREF: ROM:FFC07AC8↑o

var_10          = -$10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $110(a0),a2
                tst.l   $30(a2)
                beq.s   loc_FFC5C422
                subq.l  #2,sp
                move.l  #$78000C,d0
                _SoundDispatch
                addq.w  #2,sp

loc_FFC5C422:                           ; CODE XREF: sub_FFC5C400+14↑j
                movea.l (a2),a3
                bra.s   loc_FFC5C44C
; ---------------------------------------------------------------------------

loc_FFC5C426:                           ; CODE XREF: sub_FFC5C400+4E↓j
                movea.l (a3),a4
                movea.l 4(a3),a0
                lea     $10(a0),a0
                move.l  -(a0),-(sp)
                move.l  -(a0),-(sp)
                jsr     sub_FFC5E5B0
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC5C44A
                subq.l  #2,sp
                move.l  a3,-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                _SndDisposeChannel
                addq.w  #2,sp

loc_FFC5C44A:                           ; CODE XREF: sub_FFC5C400+3C↑j
                movea.l a4,a3

loc_FFC5C44C:                           ; CODE XREF: sub_FFC5C400+24↑j
                move.l  a3,d0
                bne.s   loc_FFC5C426
                movea.l $26(a2),a0
                movea.l 2(a0),a4
                bra.s   loc_FFC5C47E
; ---------------------------------------------------------------------------

loc_FFC5C45A:                           ; CODE XREF: sub_FFC5C400+80↓j
                movea.l (a4),a3
                lea     $5C(a4),a0
                move.l  -(a0),-(sp)
                move.l  -(a0),-(sp)
                jsr     sub_FFC5E5B0
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC5C47C
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.l  #$21C0014,d0
                _SoundDispatch
                addq.w  #2,sp

loc_FFC5C47C:                           ; CODE XREF: sub_FFC5C400+6C↑j
                movea.l a3,a4

loc_FFC5C47E:                           ; CODE XREF: sub_FFC5C400+58↑j
                move.l  a4,d0
                bne.s   loc_FFC5C45A
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC5C400


; =============== S U B R O U T I N E =======================================


sub_FFC5C48C:                           ; DATA XREF: ROM:OSTraps↓o
                move.l  ([$2070],$178),-(sp)
                rts
; End of function sub_FFC5C48C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C4A0:                           ; DATA XREF: ROM:FFC07AF8↑o

arg_0           =  8

                link    a6,#0
                move.l  #$3208000,arg_0(a6)
                unlk    a6
                rts
; End of function sub_FFC5C4A0

; ---------------------------------------------------------------------------

loc_FFC5C4B0:                           ; CODE XREF: ROM:FFC6247C↓j
                move.l  ([$2070],$1A8),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C4C0:                           ; DATA XREF: ROM:FFC07ACC↑o

var_2C          = -$2C
var_18          = -$18
var_A           = -$A
arg_0           =  8
arg_4           =  $C
arg_6           =  $E
arg_A           =  $12

                link    a6,#-$18
                movem.l d6-d7/a2-a4,-(sp)
                move.w  arg_4(a6),d6
                movea.l arg_0(a6),a3
                move.l  arg_6(a6),-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5C4E6
                move.w  #$FF33,d7
                bra.w   loc_FFC5C5C2
; ---------------------------------------------------------------------------

loc_FFC5C4E6:                           ; CODE XREF: sub_FFC5C4C0+1C↑j
                cmpi.w  #$18,d6
                beq.s   loc_FFC5C4F2
                moveq   #$FFFFFFCE,d7
                bra.w   loc_FFC5C5C2
; ---------------------------------------------------------------------------

loc_FFC5C4F2:                           ; CODE XREF: sub_FFC5C4C0+2A↑j
                movea.l arg_6(a6),a0
                movea.l 4(a0),a4
                movea.l a3,a0
                move.w  d6,d0
                bra.s   loc_FFC5C502
; ---------------------------------------------------------------------------

loc_FFC5C500:                           ; CODE XREF: sub_FFC5C4C0:loc_FFC5C502↓j
                clr.b   (a0)+

loc_FFC5C502:                           ; CODE XREF: sub_FFC5C4C0+3E↑j
                dbf     d0,loc_FFC5C500
                tst.b   $6A(a4)
                beq.s   loc_FFC5C57E
                movea.l $72(a4),a2
                move.l  $70(a2),(a3)
                move.l  $74(a2),4(a3)
                moveq   #0,d0
                move.w  $E6(a4),d0
                tst.l   d0
                mulu.l  $80(a2),d0
                pea     var_18(a6)
                move.l  d0,-(sp)
                jsr     sub_FFC5C5E0
                lea     var_18(a6),a0
                lea     var_A(a6),a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                move.w  (a0)+,(a1)+
                pea     $48(a2)
                lea     var_18(a6),a0
                lea     var_A(a6),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.w  (a1)+,(a0)+
                pea     var_18(a6)
                move.w  #6,-(sp)
                _Pack4                  ; SANE FP
                lea     var_18(a6),a0
                lea     var_A(a6),a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                move.w  (a0)+,(a1)+
                subq.l  #4,sp
                pea     var_A(a6)
                _X2Fix
                move.l  $74(a2),d0
                sub.l   (sp)+,d0
                move.l  d0,8(a3)
                addq.w  #8,sp

loc_FFC5C57E:                           ; CODE XREF: sub_FFC5C4C0+4A↑j
                tst.w   $92(a4)
                beq.s   loc_FFC5C58A
                move.b  #1,$C(a3)

loc_FFC5C58A:                           ; CODE XREF: sub_FFC5C4C0+C2↑j
                move.w  $9E(a4),d0
                and.w   #$80,d0
                beq.s   loc_FFC5C59A
                move.b  #1,$D(a3)

loc_FFC5C59A:                           ; CODE XREF: sub_FFC5C4C0+D2↑j
                move.w  $9E(a4),d0
                and.w   #$10,d0
                moveq   #0,d1
                move.w  d0,d1
                moveq   #0,d0
                move.b  $6D(a4),d0
                or.w    d1,d0
                beq.s   loc_FFC5C5B6
                move.b  #1,$E(a3)

loc_FFC5C5B6:                           ; CODE XREF: sub_FFC5C4C0+EE↑j
                move.l  $8E(a4),$10(a3)
                clr.w   arg_A(a6)
                bra.s   loc_FFC5C5C6
; ---------------------------------------------------------------------------

loc_FFC5C5C2:                           ; CODE XREF: sub_FFC5C4C0+22↑j
                                        ; sub_FFC5C4C0+2E↑j
                move.w  d7,arg_A(a6)

loc_FFC5C5C6:                           ; CODE XREF: sub_FFC5C4C0+100↑j
                movem.l var_2C(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC5C4C0

; ---------------------------------------------------------------------------

loc_FFC5C5D2:                           ; CODE XREF: ROM:FFC62480↓j
                move.l  ([$2070],$17C),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC5C5E0:                           ; CODE XREF: sub_FFC5C4C0+6E↑p
                bra.l   sub_FFCCA1B0
; End of function sub_FFC5C5E0

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C5F0:                           ; DATA XREF: ROM:FFC07AE4↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_6           =  $E

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l ($2B6).w,a0
                movea.l $110(a0),a3
                moveq   #6,d0
                cmp.w   arg_4(a6),d0
                beq.s   loc_FFC5C610
                moveq   #$FFFFFFCE,d7
                bra.s   loc_FFC5C630
; ---------------------------------------------------------------------------

loc_FFC5C610:                           ; CODE XREF: sub_FFC5C5F0+1A↑j
                move.w  #$64,(a4) ; 'd'
                move.w  4(a3),2(a4)
                move.w  4(a3),d1
                ext.l   d1
                move.l  d1,d0
                lsl.l   #3,d1
                sub.l   d0,d1
                move.w  d1,4(a4)
                clr.w   arg_6(a6)
                bra.s   loc_FFC5C634
; ---------------------------------------------------------------------------

loc_FFC5C630:                           ; CODE XREF: sub_FFC5C5F0+1E↑j
                move.w  d7,arg_6(a6)

loc_FFC5C634:                           ; CODE XREF: sub_FFC5C5F0+3E↑j
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #6
; End of function sub_FFC5C5F0

; ---------------------------------------------------------------------------

loc_FFC5C640:                           ; CODE XREF: ROM:FFC62484↓j
                move.l  ([$2070],$194),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C650:                           ; DATA XREF: ROM:FFC07AE0↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $110(a0),a4
                movea.l arg_0(a6),a0
                move.w  $18(a4),(a0)
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5C650

; ---------------------------------------------------------------------------

loc_FFC5C670:                           ; CODE XREF: ROM:FFC62488↓j
                move.l  ([$2070],$190),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C680:                           ; DATA XREF: ROM:FFC07AF4↑o

var_4           = -4
arg_0           =  8
arg_2           =  $A

                link    a6,#0
                move.l  a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $110(a0),a4
                move.w  arg_0(a6),$18(a4)
                clr.w   arg_2(a6)
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #2
; End of function sub_FFC5C680

; ---------------------------------------------------------------------------

loc_FFC5C6A2:                           ; CODE XREF: ROM:FFC6248C↓j
                move.l  ([$2070],$1A4),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C6B0:                           ; DATA XREF: ROM:FFC07AF0↑o

var_10          = -$10
var_8           = -8
var_6           = -6
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-8
                movem.l d7/a4,-(sp)
                movea.l arg_4(a6),a4
                move.l  a4,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5C6CE
                move.w  #$FF33,d7
                bra.s   loc_FFC5C6EE
; ---------------------------------------------------------------------------

loc_FFC5C6CE:                           ; CODE XREF: sub_FFC5C6B0+16↑j
                move.w  #$54,var_8(a6) ; 'T'
                clr.w   var_6(a6)
                move.l  arg_0(a6),var_4(a6)
                subq.l  #2,sp
                move.l  a4,-(sp)
                pea     var_8(a6)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDoCommand
                move.w  (sp)+,d7

loc_FFC5C6EE:                           ; CODE XREF: sub_FFC5C6B0+1C↑j
                move.w  d7,arg_8(a6)
                movem.l var_10(a6),d7/a4
                unlk    a6
                rtd     #8
; End of function sub_FFC5C6B0

; ---------------------------------------------------------------------------

loc_FFC5C6FE:                           ; CODE XREF: ROM:FFC62490↓j
                move.l  ([$2070],$1A0),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C710:                           ; DATA XREF: ROM:FFC07A88↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $110(a0),a3
                tst.l   $58(a3)
                beq.s   loc_FFC5C72C
                movea.l $58(a3),a0
                _DisposeHandle

loc_FFC5C72C:                           ; CODE XREF: sub_FFC5C710+14↑j
                movea.l $26(a3),a0
                movea.l $14(a0),a4
                move.l  a4,d0
                beq.s   loc_FFC5C740
                move.l  a4,-(sp)
                _DetachResource
                movea.l a4,a0
                _DisposeHandle

loc_FFC5C740:                           ; CODE XREF: sub_FFC5C710+26↑j
                movea.l $26(a3),a0
                movea.l $E(a0),a4
                move.l  a4,d0
                beq.s   loc_FFC5C754
                move.l  a4,-(sp)
                _DetachResource
                movea.l a4,a0
                _DisposeHandle

loc_FFC5C754:                           ; CODE XREF: sub_FFC5C710+3A↑j
                movea.l a3,a0
                _DisposePtr
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,arg_0(a6)
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5C710

; ---------------------------------------------------------------------------

loc_FFC5C76C:                           ; CODE XREF: ROM:loc_FFC62500↓j
                move.l  ([$2070],$138),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C780:                           ; DATA XREF: ROM:FFC07A98↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d6/a2-a4,-(sp)
                movea.l arg_4(a6),a2
                movea.l arg_0(a6),a3
                move.l  a2,d0
                beq.s   loc_FFC5C7EE
                tst.l   (a2)
                beq.s   loc_FFC5C7EE
                clr.w   d6
                moveq   #0,d0
                move.l  d0,(a3)
                lea     (4).w,a0
                movea.l a0,a4
                adda.l  (a2),a4
                movea.l (a2),a0
                moveq   #1,d1
                cmp.w   (a0),d1
                bne.s   loc_FFC5C7BE
                move.w  2(a0),d1
                ext.l   d1
                add.l   d1,d1
                move.l  d1,d0
                add.l   d0,d0
                add.l   d0,d1
                adda.l  d1,a4

loc_FFC5C7BE:                           ; CODE XREF: sub_FFC5C780+2C↑j
                move.w  (a4)+,d2

loc_FFC5C7C0:                           ; CODE XREF: sub_FFC5C780+5C↓j
                move.w  (a4),d0
                subi.w  #$8050,d0
                beq.s   loc_FFC5C7CC
                subq.w  #1,d0
                bne.s   loc_FFC5C7D4

loc_FFC5C7CC:                           ; CODE XREF: sub_FFC5C780+46↑j
                move.l  4(a4),(a3)
                clr.w   d2
                bra.s   loc_FFC5C7D8
; ---------------------------------------------------------------------------

loc_FFC5C7D4:                           ; CODE XREF: sub_FFC5C780+4A↑j
                addq.l  #8,a4
                subq.w  #1,d2

loc_FFC5C7D8:                           ; CODE XREF: sub_FFC5C780+52↑j
                cmpi.w  #1,d2
                bge.s   loc_FFC5C7C0
                tst.l   (a3)
                bne.s   loc_FFC5C7E8
                move.w  #$FF32,d6
                bra.s   loc_FFC5C7F0
; ---------------------------------------------------------------------------

loc_FFC5C7E8:                           ; CODE XREF: sub_FFC5C780+60↑j
                move.w  d6,arg_8(a6)
                bra.s   loc_FFC5C7F4
; ---------------------------------------------------------------------------

loc_FFC5C7EE:                           ; CODE XREF: sub_FFC5C780+12↑j
                                        ; sub_FFC5C780+16↑j
                moveq   #$FFFFFF93,d6

loc_FFC5C7F0:                           ; CODE XREF: sub_FFC5C780+66↑j
                move.w  d6,arg_8(a6)

loc_FFC5C7F4:                           ; CODE XREF: sub_FFC5C780+6C↑j
                movem.l var_10(a6),d6/a2-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC5C780

; ---------------------------------------------------------------------------

loc_FFC5C800:                           ; CODE XREF: ROM:FFC62504↓j
                move.l  ([$2070],$148),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5C810:                           ; DATA XREF: ROM:FFC07A8C↑o

var_1C          = -$1C
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_6           =  $E
arg_8           =  $10
arg_C           =  $14
arg_E           =  $16

                link    a6,#-4
                movem.l d3/d5-d7/a3-a4,-(sp)
                move.w  arg_4(a6),d7
                move.w  arg_6(a6),d6
                movea.l arg_0(a6),a4
                moveq   #$14,d0
                cmp.l   (a4),d0
                bge.s   loc_FFC5C82E
                moveq   #$14,d0
                move.l  d0,(a4)

loc_FFC5C82E:                           ; CODE XREF: sub_FFC5C810+18↑j
                move.w  arg_C(a6),d0
                addq.w  #2,d0
                beq.s   loc_FFC5C848
                subq.w  #1,d0
                beq.s   loc_FFC5C848
                subq.w  #1,d0
                beq.s   loc_FFC5C850
                subq.w  #3,d0
                beq.s   loc_FFC5C86E
                subq.w  #1,d0
                beq.s   loc_FFC5C878
                bra.s   loc_FFC5C882
; ---------------------------------------------------------------------------

loc_FFC5C848:                           ; CODE XREF: sub_FFC5C810+24↑j
                                        ; sub_FFC5C810+28↑j
                move.l  arg_8(a6),4(a4)
                bra.s   loc_FFC5C88C
; ---------------------------------------------------------------------------

loc_FFC5C850:                           ; CODE XREF: sub_FFC5C810+2C↑j
                cmpi.w  #8,d7
                seq     d3
                neg.b   d3
                beq.s   loc_FFC5C862
                move.l  #$72617720,d0
                bra.s   loc_FFC5C868
; ---------------------------------------------------------------------------

loc_FFC5C862:                           ; CODE XREF: sub_FFC5C810+48↑j
                move.l  #$74776F73,d0

loc_FFC5C868:                           ; CODE XREF: sub_FFC5C810+50↑j
                move.l  d0,4(a4)
                bra.s   loc_FFC5C88C
; ---------------------------------------------------------------------------

loc_FFC5C86E:                           ; CODE XREF: sub_FFC5C810+30↑j
                move.l  #$4D414333,4(a4)
                bra.s   loc_FFC5C88C
; ---------------------------------------------------------------------------

loc_FFC5C878:                           ; CODE XREF: sub_FFC5C810+34↑j
                move.l  #$4D414336,4(a4)
                bra.s   loc_FFC5C88C
; ---------------------------------------------------------------------------

loc_FFC5C882:                           ; CODE XREF: sub_FFC5C810+36↑j
                move.w  #$FF21,arg_E(a6)
                bra.w   loc_FFC5CA80
; ---------------------------------------------------------------------------

loc_FFC5C88C:                           ; CODE XREF: sub_FFC5C810+3E↑j
                                        ; sub_FFC5C810+5C↑j ...
                move.l  4(a4),d0
                subi.l  #$4D414333,d0
                beq.s   loc_FFC5C8DA
                subq.l  #3,d0
                beq.s   loc_FFC5C906
                subi.l  #$252033EA,d0
                beq.s   loc_FFC5C8AE
                subi.l  #$215F853,d0
                bne.w   loc_FFC5C932

loc_FFC5C8AE:                           ; CODE XREF: sub_FFC5C810+92↑j
                clr.w   8(a4)
                move.w  #1,$A(a4)
                move.w  d7,d0
                asr.w   #3,d0
                move.w  d0,$C(a4)
                moveq   #0,d0
                move.w  $C(a4),d0
                ext.l   d6
                muls.l  d6,d0
                move.w  d0,$E(a4)
                move.w  $C(a4),$10(a4)
                bra.w   loc_FFC5CA7C
; ---------------------------------------------------------------------------

loc_FFC5C8DA:                           ; CODE XREF: sub_FFC5C810+86↑j
                move.w  #3,8(a4)
                move.w  #6,$A(a4)
                move.w  #2,$C(a4)
                moveq   #0,d0
                move.w  $C(a4),d0
                ext.l   d6
                muls.l  d6,d0
                move.w  d0,$E(a4)
                move.w  #1,$10(a4)
                bra.w   loc_FFC5CA7C
; ---------------------------------------------------------------------------

loc_FFC5C906:                           ; CODE XREF: sub_FFC5C810+8A↑j
                move.w  #4,8(a4)
                move.w  #6,$A(a4)
                move.w  #1,$C(a4)
                moveq   #0,d0
                move.w  $C(a4),d0
                ext.l   d6
                muls.l  d6,d0
                move.w  d0,$E(a4)
                move.w  #1,$10(a4)
                bra.w   loc_FFC5CA7C
; ---------------------------------------------------------------------------

loc_FFC5C932:                           ; CODE XREF: sub_FFC5C810+9A↑j
                movea.l ($2B6).w,a0
                movea.l $110(a0),a0
                move.l  a0,var_4(a6)
                tst.l   $58(a0)
                beq.s   loc_FFC5C98E
                movea.l $58(a0),a0
                movea.l (a0),a3
                movea.l var_4(a6),a0
                move.w  $56(a0),d7
                subq.w  #1,d7
                tst.w   d7
                blt.s   loc_FFC5C98E

loc_FFC5C958:                           ; CODE XREF: sub_FFC5C810+17A↓j
                move.l  4(a3),d0
                cmp.l   4(a4),d0
                bne.s   loc_FFC5C986
                movea.l a4,a0
                movea.l a3,a1
                moveq   #4,d0

loc_FFC5C968:                           ; CODE XREF: sub_FFC5C810+15A↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC5C968
                moveq   #0,d0
                move.w  $C(a4),d0
                ext.l   d6
                muls.l  d6,d0
                move.w  d0,$E(a4)
                clr.w   arg_E(a6)
                bra.w   loc_FFC5CA80
; ---------------------------------------------------------------------------

loc_FFC5C986:                           ; CODE XREF: sub_FFC5C810+150↑j
                lea     $14(a3),a3
                dbf     d7,loc_FFC5C958

loc_FFC5C98E:                           ; CODE XREF: sub_FFC5C810+132↑j
                                        ; sub_FFC5C810+146↑j
                subq.l  #4,sp
                move.l  #$73646563,-(sp)
                move.l  4(a4),-(sp)
                moveq   #$21,d0 ; '!'
                _ComponentDispatch
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFC5C9AE
                move.w  #$FF21,arg_E(a6)
                bra.w   loc_FFC5CA80
; ---------------------------------------------------------------------------

loc_FFC5C9AE:                           ; CODE XREF: sub_FFC5C810+192↑j
                subq.l  #4,sp
                move.l  a3,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$636D6661,-(sp)
                move.l  a4,-(sp)
                move.l  #$C0103,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d5
                subq.l  #2,sp
                move.l  a3,-(sp)
                moveq   #8,d0
                _ComponentDispatch
                tst.w   d5
                addq.w  #2,sp
                beq.s   loc_FFC5C9E4
                move.w  #$FF21,arg_E(a6)
                bra.w   loc_FFC5CA80
; ---------------------------------------------------------------------------

loc_FFC5C9E4:                           ; CODE XREF: sub_FFC5C810+1C8↑j
                moveq   #0,d0
                move.w  $C(a4),d0
                ext.l   d6
                muls.l  d6,d0
                move.w  d0,$E(a4)
                movea.l var_4(a6),a0
                move.w  $56(a0),d0
                ext.l   d0
                addq.l  #1,d0
                lsl.l   #2,d0
                move.l  d0,d1
                lsl.l   #2,d0
                add.l   d1,d0
                move.w  d0,d7
                tst.l   $58(a0)
                beq.s   loc_FFC5CA28
                movea.l a0,a1
                movea.l $58(a1),a0
                _HUnlock
                movea.l var_4(a6),a1
                movea.l $58(a1),a0
                ext.l   d7
                move.l  d7,d0
                _SetHandleSize
                bra.s   loc_FFC5CA36
; ---------------------------------------------------------------------------

loc_FFC5CA28:                           ; CODE XREF: sub_FFC5C810+1FE↑j
                ext.l   d7
                move.l  d7,d0
                _NewHandleSys
                movea.l var_4(a6),a1
                move.l  a0,$58(a1)

loc_FFC5CA36:                           ; CODE XREF: sub_FFC5C810+216↑j
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d5
                beq.s   loc_FFC5CA46
                move.w  d5,arg_E(a6)
                bra.s   loc_FFC5CA80
; ---------------------------------------------------------------------------

loc_FFC5CA46:                           ; CODE XREF: sub_FFC5C810+22E↑j
                movea.l var_4(a6),a1
                movea.l $58(a1),a0
                _HLock
                movea.l var_4(a6),a0
                move.w  $56(a0),d0
                ext.l   d0
                movea.l $58(a0),a0
                movea.l (a0),a0
                lsl.l   #2,d0
                move.l  d0,d1
                lsl.l   #2,d0
                add.l   d1,d0
                adda.l  d0,a0
                movea.l a4,a1
                moveq   #4,d0

loc_FFC5CA6E:                           ; CODE XREF: sub_FFC5C810+260↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC5CA6E
                movea.l var_4(a6),a0
                addq.w  #1,$56(a0)

loc_FFC5CA7C:                           ; CODE XREF: sub_FFC5C810+C6↑j
                                        ; sub_FFC5C810+F2↑j ...
                clr.w   arg_E(a6)

loc_FFC5CA80:                           ; CODE XREF: sub_FFC5C810+78↑j
                                        ; sub_FFC5C810+172↑j ...
                movem.l var_1C(a6),d3/d5-d7/a3-a4
                unlk    a6
                rtd     #$E
; End of function sub_FFC5C810

; ---------------------------------------------------------------------------

loc_FFC5CA8C:                           ; CODE XREF: ROM:FFC62510↓j
                move.l  ([$2070],$13C),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5CAA0:                           ; DATA XREF: ROM:FFC07B00↑o

var_24          = -$24
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-$14
                movem.l d6-d7/a3-a4,-(sp)
                move.l  arg_4(a6),d6
                cmpi.l  #$72617720,d6
                beq.s   loc_FFC5CABC
                cmpi.l  #$74776F73,d6
                bne.s   loc_FFC5CAF8

loc_FFC5CABC:                           ; CODE XREF: sub_FFC5CAA0+12↑j
                subq.l  #4,sp
                move.l  #$53545220,-(sp)
                move.w  #$BF3A,-(sp)
                _GetResource
                movea.l (sp)+,a4
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7
                move.l  a4,d0
                bne.s   loc_FFC5CAE0
                tst.w   d7
                bne.s   loc_FFC5CAF0
                move.w  #$FF40,d7
                bra.s   loc_FFC5CAF0
; ---------------------------------------------------------------------------

loc_FFC5CAE0:                           ; CODE XREF: sub_FFC5CAA0+34↑j
                movea.l arg_0(a6),a1
                movea.l (a4),a0
                moveq   #0,d0
                move.b  (a0),d0

loc_FFC5CAEA:                           ; CODE XREF: sub_FFC5CAA0+4C↓j
                move.b  (a0)+,(a1)+
                dbf     d0,loc_FFC5CAEA

loc_FFC5CAF0:                           ; CODE XREF: sub_FFC5CAA0+38↑j
                                        ; sub_FFC5CAA0+3E↑j
                move.w  d7,arg_8(a6)
                bra.w   loc_FFC5CB7A
; ---------------------------------------------------------------------------

loc_FFC5CAF8:                           ; CODE XREF: sub_FFC5CAA0+1A↑j
                move.l  #$73646563,var_14(a6)
                move.l  d6,var_10(a6)
                moveq   #0,d0
                move.l  d0,var_C(a6)
                move.l  d0,var_8(a6)
                move.l  d0,var_4(a6)
                subq.l  #4,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_14(a6)
                moveq   #4,d0
                _ComponentDispatch
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFC5CB2C
                move.w  #$FF21,d7
                bra.s   loc_FFC5CB76
; ---------------------------------------------------------------------------

loc_FFC5CB2C:                           ; CODE XREF: sub_FFC5CAA0+84↑j
                moveq   #0,d0
                _NewHandle
                movea.l a0,a4
                move.l  a4,d0
                bne.s   loc_FFC5CB40
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.s   loc_FFC5CB76
; ---------------------------------------------------------------------------

loc_FFC5CB40:                           ; CODE XREF: sub_FFC5CAA0+94↑j
                subq.l  #2,sp
                move.l  a3,-(sp)
                pea     var_14(a6)
                move.l  a4,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5CB72
                tst.l   (a4)
                bne.s   loc_FFC5CB62
                move.w  #$FF40,d7
                bra.s   loc_FFC5CB72
; ---------------------------------------------------------------------------

loc_FFC5CB62:                           ; CODE XREF: sub_FFC5CAA0+BA↑j
                movea.l arg_0(a6),a1
                movea.l (a4),a0
                moveq   #0,d0
                move.b  (a0),d0

loc_FFC5CB6C:                           ; CODE XREF: sub_FFC5CAA0+CE↓j
                move.b  (a0)+,(a1)+
                dbf     d0,loc_FFC5CB6C

loc_FFC5CB72:                           ; CODE XREF: sub_FFC5CAA0+B6↑j
                                        ; sub_FFC5CAA0+C0↑j
                movea.l a4,a0
                _DisposeHandle

loc_FFC5CB76:                           ; CODE XREF: sub_FFC5CAA0+8A↑j
                                        ; sub_FFC5CAA0+9E↑j
                move.w  d7,arg_8(a6)

loc_FFC5CB7A:                           ; CODE XREF: sub_FFC5CAA0+54↑j
                movem.l var_24(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC5CAA0

; ---------------------------------------------------------------------------

loc_FFC5CB86:                           ; CODE XREF: ROM:FFC6254C↓j
                move.l  ([$2070],$1B0),-(sp)
                rts

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5CB90:                           ; DATA XREF: ROM:FFC07AAC↑o

var_10          = -$10
var_4           = -4
arg_0           =  8
arg_8           =  $10
arg_C           =  $14

                link    a6,#-4
                movem.l d6-d7/a4,-(sp)
                moveq   #0,d7
                subq.l  #2,sp
                _CurResFile
                move.w  (sp)+,d6
                subq.l  #4,sp
                move.l  #$6D697872,-(sp)
                move.l  #$6D697877,-(sp)
                moveq   #$21,d0 ; '!'
                _ComponentDispatch
                movea.l (sp)+,a4
                move.w  d6,-(sp)
                _UseResFile
                move.l  a4,d0
                bne.s   loc_FFC5CBC0
                moveq   #$FFFFFF94,d7
                bra.s   loc_FFC5CBF0
; ---------------------------------------------------------------------------

loc_FFC5CBC0:                           ; CODE XREF: sub_FFC5CB90+2A↑j
                subq.l  #4,sp
                move.l  a4,-(sp)
                move.l  arg_8(a6),-(sp)
                pea     var_4(a6)
                move.l  #$80005,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFC5CBE6
                movea.l arg_0(a6),a0
                move.l  a4,(a0)
                clr.w   arg_C(a6)
                bra.s   loc_FFC5CBF4
; ---------------------------------------------------------------------------

loc_FFC5CBE6:                           ; CODE XREF: sub_FFC5CB90+48↑j
                subq.l  #2,sp
                move.l  a4,-(sp)
                moveq   #8,d0
                _ComponentDispatch
                addq.w  #2,sp

loc_FFC5CBF0:                           ; CODE XREF: sub_FFC5CB90+2E↑j
                move.w  d7,arg_C(a6)

loc_FFC5CBF4:                           ; CODE XREF: sub_FFC5CB90+54↑j
                movem.l var_10(a6),d6-d7/a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC5CB90

; ---------------------------------------------------------------------------

loc_FFC5CC00:                           ; CODE XREF: ROM:FFC62514↓j
                move.l  ([$2070],$15C),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5CC10:                           ; DATA XREF: ROM:FFC07A84↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  d7,-(sp)
                subq.l  #2,sp
                move.l  arg_0(a6),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                move.w  d7,arg_4(a6)
                move.l  var_4(a6),d7
                unlk    a6
                rtd     #4
; End of function sub_FFC5CC10

; ---------------------------------------------------------------------------

loc_FFC5CC30:                           ; CODE XREF: ROM:FFC62518↓j
                move.l  ([$2070],$134),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5CC40:                           ; DATA XREF: ROM:FFC07AA4↑o

var_40          = -$40
var_24          = -$24
var_20          = -$20
var_1C          = -$1C
var_18          = -$18
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20

                link    a6,#-$24
                movem.l d4-d7/a2-a4,-(sp)
                movea.l arg_C(a6),a2
                movea.l arg_14(a6),a3
                movea.l arg_10(a6),a4
                moveq   #0,d0
                move.l  d0,var_20(a6)
                move.l  d0,var_1C(a6)
                move.l  d0,var_18(a6)
                clr.w   d7
                move.l  4(a3),d1
                cmp.l   4(a2),d1
                bne.s   loc_FFC5CC92
                move.w  $A(a3),d0
                cmp.w   $A(a2),d0
                bne.s   loc_FFC5CC92
                move.w  8(a3),d0
                cmp.w   8(a2),d0
                bgt.s   loc_FFC5CC92
                move.l  arg_8(a6),d0
                cmp.l   (a2),d0
                bne.s   loc_FFC5CC92
                clr.w   arg_18(a6)
                bra.w   loc_FFC5CEF6
; ---------------------------------------------------------------------------

loc_FFC5CC92:                           ; CODE XREF: sub_FFC5CC40+2C↑j
                                        ; sub_FFC5CC40+36↑j ...
                subq.l  #2,sp
                _CurResFile
                move.w  (sp)+,d5
                movea.l arg_4(a6),a0
                tst.l   (a0)
                beq.s   loc_FFC5CCB6
                subq.l  #2,sp
                movea.l arg_4(a6),a0
                move.l  (a0),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                movea.l arg_4(a6),a0
                moveq   #0,d0
                move.l  d0,(a0)
                addq.w  #2,sp

loc_FFC5CCB6:                           ; CODE XREF: sub_FFC5CC40+5E↑j
                move.l  arg_8(a6),d4
                move.l  a4,-(sp)
                jsr     sub_FFC5F85E
                move.l  d0,var_24(a6)
                move.l  a3,-(sp)
                jsr     sub_FFC5F85E
                move.l  d0,d6
                cmpi.l  #$72617720,4(a4)
                addq.w  #8,sp
                beq.s   loc_FFC5CD18
                cmpi.l  #$74776F73,4(a4)
                beq.s   loc_FFC5CD18
                pea     var_1C(a6)
                pea     var_20(a6)
                move.l  a4,-(sp)
                pea     arg_8(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_24(a6)
                move.l  d6,-(sp)
                move.l  4(a4),-(sp)
                move.l  #$73636F6D,-(sp)
                jsr     sub_FFC5FA66
                move.w  d0,d7
                lea     $24(sp),sp
                beq.s   loc_FFC5CD18
                move.w  #$FF21,d7
                bra.w   loc_FFC5CEDC
; ---------------------------------------------------------------------------

loc_FFC5CD18:                           ; CODE XREF: sub_FFC5CC40+96↑j
                                        ; sub_FFC5CC40+A0↑j ...
                cmpi.l  #$72617720,4(a3)
                beq.s   loc_FFC5CD80
                cmpi.l  #$74776F73,4(a3)
                beq.s   loc_FFC5CD80
                move.l  #$73646563,var_14(a6)
                move.l  4(a3),var_10(a6)
                moveq   #0,d0
                move.l  d0,var_C(a6)
                move.l  d0,var_8(a6)
                move.l  d0,var_4(a6)
                subq.l  #4,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_14(a6)
                moveq   #4,d0
                _ComponentDispatch
                move.l  (sp)+,var_18(a6)
                bne.s   loc_FFC5CD64
                move.w  #$FF21,d7
                bra.w   loc_FFC5CEDC
; ---------------------------------------------------------------------------

loc_FFC5CD64:                           ; CODE XREF: sub_FFC5CC40+11A↑j
                subq.l  #2,sp
                move.l  var_18(a6),-(sp)
                pea     var_14(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.l  var_8(a6),d6
                addq.w  #2,sp

loc_FFC5CD80:                           ; CODE XREF: sub_FFC5CC40+E0↑j
                                        ; sub_FFC5CC40+EA↑j
                move.l  d6,d0
                and.l   #$800,d0
                bne.s   loc_FFC5CD92
                andi.l  #$FFFFFFF7,var_24(a6)

loc_FFC5CD92:                           ; CODE XREF: sub_FFC5CC40+148↑j
                move.l  arg_8(a6),d0
                and.l   #$20000,d0
                beq.s   loc_FFC5CDD0
                pea     var_1C(a6)
                pea     var_20(a6)
                move.l  a4,-(sp)
                pea     arg_8(a6)
                move.l  #$20000,-(sp)
                pea     var_24(a6)
                move.l  d6,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$73696674,-(sp)
                jsr     sub_FFC5FA66
                move.w  d0,d7
                lea     $24(sp),sp
                bne.w   loc_FFC5CEDC

loc_FFC5CDD0:                           ; CODE XREF: sub_FFC5CC40+15C↑j
                move.l  arg_8(a6),d0
                and.l   #$10000,d0
                beq.s   loc_FFC5CE0E
                pea     var_1C(a6)
                pea     var_20(a6)
                move.l  a4,-(sp)
                pea     arg_8(a6)
                move.l  #$10000,-(sp)
                pea     var_24(a6)
                move.l  d6,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$73696674,-(sp)
                jsr     sub_FFC5FA66
                move.w  d0,d7
                lea     $24(sp),sp
                bne.w   loc_FFC5CEDC

loc_FFC5CE0E:                           ; CODE XREF: sub_FFC5CC40+19A↑j
                tst.l   var_18(a6)
                beq.s   loc_FFC5CE46
                pea     var_1C(a6)
                pea     var_20(a6)
                move.l  a4,-(sp)
                pea     arg_8(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_24(a6)
                move.l  d6,-(sp)
                move.l  4(a3),-(sp)
                move.l  #$73646563,-(sp)
                jsr     sub_FFC5FA66
                move.w  d0,d7
                lea     $24(sp),sp
                bne.w   loc_FFC5CEDC
                bra.s   loc_FFC5CE80
; ---------------------------------------------------------------------------

loc_FFC5CE46:                           ; CODE XREF: sub_FFC5CC40+1D2↑j
                move.l  var_24(a6),d0
                and.l   d6,d0
                cmp.l   d0,d6
                beq.s   loc_FFC5CE80
                pea     var_1C(a6)
                pea     var_20(a6)
                move.l  a4,-(sp)
                pea     arg_8(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_24(a6)
                move.l  d6,-(sp)
                move.l  #$636F6E76,-(sp)
                move.l  #$73696674,-(sp)
                jsr     sub_FFC5FA66
                move.w  d0,d7
                lea     $24(sp),sp
                bne.s   loc_FFC5CEDC

loc_FFC5CE80:                           ; CODE XREF: sub_FFC5CC40+204↑j
                                        ; sub_FFC5CC40+20E↑j
                move.l  arg_8(a6),d0
                and.l   #$40000,d0
                beq.s   loc_FFC5CEBC
                pea     var_1C(a6)
                pea     var_20(a6)
                move.l  a4,-(sp)
                pea     arg_8(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_24(a6)
                move.l  d6,-(sp)
                move.l  #$736F7572,-(sp)
                move.l  #$73696674,-(sp)
                jsr     sub_FFC5FA66
                move.w  d0,d7
                lea     $24(sp),sp
                bne.s   loc_FFC5CEDC

loc_FFC5CEBC:                           ; CODE XREF: sub_FFC5CC40+24A↑j
                movea.l arg_4(a6),a0
                move.l  var_1C(a6),(a0)
                movea.l a2,a0
                movea.l a3,a1
                moveq   #6,d0

loc_FFC5CECA:                           ; CODE XREF: sub_FFC5CC40+28C↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC5CECA
                move.l  d4,(a2)
                move.w  d5,-(sp)
                _UseResFile
                clr.w   arg_18(a6)
                bra.s   loc_FFC5CEF6
; ---------------------------------------------------------------------------

loc_FFC5CEDC:                           ; CODE XREF: sub_FFC5CC40+D4↑j
                                        ; sub_FFC5CC40+120↑j ...
                tst.l   var_1C(a6)
                beq.s   loc_FFC5CEEE
                subq.l  #2,sp
                move.l  var_1C(a6),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                addq.w  #2,sp

loc_FFC5CEEE:                           ; CODE XREF: sub_FFC5CC40+2A0↑j
                move.w  d5,-(sp)
                _UseResFile
                move.w  d7,arg_18(a6)

loc_FFC5CEF6:                           ; CODE XREF: sub_FFC5CC40+4E↑j
                                        ; sub_FFC5CC40+29A↑j
                movem.l var_40(a6),d4-d7/a2-a4
                unlk    a6
                rtd     #$18
; End of function sub_FFC5CC40

; ---------------------------------------------------------------------------

loc_FFC5CF02:                           ; CODE XREF: ROM:FFC62508↓j
                move.l  ([$2070],$154),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5CF10:                           ; DATA XREF: ROM:FFC07AB4↑o

var_28          = -$28
var_14          = -$14
arg_0           =  8
arg_4           =  $C

                link    a6,#-$18
                movem.l d7/a2-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $110(a0),a2
                move.l  arg_0(a6),$40(a2)
                clr.b   $5C(a2)
                moveq   #0,d0
                _NewHandle
                movea.l a0,a3
                move.l  a3,d0
                bne.s   loc_FFC5CF3E
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.s   loc_FFC5CFB8
; ---------------------------------------------------------------------------

loc_FFC5CF3E:                           ; CODE XREF: sub_FFC5CF10+22↑j
                subq.l  #2,sp
                move.l  arg_0(a6),-(sp)
                pea     var_14(a6)
                move.l  a3,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5CFB4
                move.l  #$118,d0
                _NewHandle
                movea.l a0,a4
                move.l  a4,d0
                beq.s   loc_FFC5CFB4
                subq.l  #4,sp
                move.l  #$C0008,d0
                _SoundDispatch
                movea.l (a4),a0
                move.l  (sp)+,(a0)
                movea.l (a4),a0
                addq.l  #4,a0
                lea     var_14(a6),a1
                moveq   #4,d0

loc_FFC5CF7E:                           ; CODE XREF: sub_FFC5CF10+70↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC5CF7E
                movea.l (a4),a0
                lea     $18(a0),a0
                movea.l a0,a1
                movea.l (a3),a0
                moveq   #0,d0
                move.b  (a0),d0

loc_FFC5CF92:                           ; CODE XREF: sub_FFC5CF10+84↓j
                move.b  (a0)+,(a1)+
                dbf     d0,loc_FFC5CF92
                subq.l  #2,sp
                move.l  #$6F646576,-(sp)
                pea     aOutputDevice_0(pc) ; "\rOutput Device"
                move.l  a4,-(sp)
                move.l  #$6340018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                movea.l a4,a0
                _DisposeHandle

loc_FFC5CFB4:                           ; CODE XREF: sub_FFC5CF10+46↑j
                                        ; sub_FFC5CF10+54↑j
                movea.l a3,a0
                _DisposeHandle

loc_FFC5CFB8:                           ; CODE XREF: sub_FFC5CF10+2C↑j
                move.w  d7,arg_4(a6)
                movem.l var_28(a6),d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5CF10

; ---------------------------------------------------------------------------
aOutputDevice_0:dc.b $D,'Output Device',0 ; DATA XREF: sub_FFC5CF10+90↑o
                align 4

loc_FFC5CFD8:                           ; CODE XREF: ROM:FFC62520↓j
                move.l  ([$2070],$164),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5CFF0:                           ; DATA XREF: ROM:FFC07A94↑o

var_44          = -$44
var_34          = -$34
var_30          = -$30
var_28          = -$28
var_24          = -$24
var_20          = -$20
var_1C          = -$1C
var_18          = -$18
var_14          = -$14
var_10          = -$10
arg_0           =  8
arg_4           =  $C

                link    a6,#-$34
                movem.l d7/a2-a4,-(sp)
                movea.l ($2B6).w,a0
                move.l  $110(a0),var_34(a6)
                clr.w   d7
                moveq   #0,d0
                movea.l d0,a3
                movea.l var_34(a6),a0
                tst.l   $40(a0)
                beq.s   loc_FFC5D01A
                movea.l $40(a0),a3
                bra.w   loc_FFC5D11E
; ---------------------------------------------------------------------------

loc_FFC5D01A:                           ; CODE XREF: sub_FFC5CFF0+20↑j
                move.l  #$118,d0
                _NewHandle
                move.l  a0,var_30(a6)
                bne.s   loc_FFC5D034
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.w   loc_FFC5D11E
; ---------------------------------------------------------------------------

loc_FFC5D034:                           ; CODE XREF: sub_FFC5CFF0+36↑j
                subq.l  #2,sp
                move.l  #$6F646576,-(sp)
                pea     aOutputDevice(pc) ; "\rOutput Device"
                move.l  var_30(a6),-(sp)
                move.l  #$6380018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                beq.s   loc_FFC5D064
                jsr     sub_FFC5E55C
                movea.l d0,a3
                movea.l var_34(a6),a0
                move.l  a3,$40(a0)
                clr.w   d7
                bra.w   loc_FFC5D118
; ---------------------------------------------------------------------------

loc_FFC5D064:                           ; CODE XREF: sub_FFC5CFF0+5E↑j
                moveq   #0,d0
                _NewHandle
                movea.l a0,a4
                move.l  a4,d0
                bne.s   loc_FFC5D07A
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.w   loc_FFC5D118
; ---------------------------------------------------------------------------

loc_FFC5D07A:                           ; CODE XREF: sub_FFC5CFF0+7C↑j
                movea.l var_30(a6),a0
                _HLock
                movea.l var_30(a6),a0
                movea.l (a0),a2
                move.l  #$73646576,var_28(a6)
                moveq   #0,d0
                move.l  d0,var_1C(a6)
                move.l  d0,var_18(a6)
                move.l  8(a2),var_24(a6)
                move.l  $C(a2),var_20(a6)
                movea.l d0,a3
                bra.s   loc_FFC5D100
; ---------------------------------------------------------------------------

loc_FFC5D0A8:                           ; CODE XREF: sub_FFC5CFF0+120↓j
                subq.l  #2,sp
                move.l  a3,-(sp)
                pea     var_14(a6)
                move.l  a4,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5D0F6
                tst.l   (a4)
                beq.s   loc_FFC5D0F6
                move.l  var_10(a6),d0
                cmp.l   8(a2),d0
                bne.s   loc_FFC5D0F6
                movea.l a4,a0
                _HLock
                subq.l  #2,sp
                move.l  (a4),-(sp)
                pea     $18(a2)
                moveq   #1,d0
                move.b  d0,-(sp)
                move.b  d0,-(sp)
                jsr     sub_FFC5D160
                tst.b   (sp)+
                beq.s   loc_FFC5D0F2
                movea.l var_34(a6),a0
                move.l  a3,$40(a0)
                bra.s   loc_FFC5D112
; ---------------------------------------------------------------------------

loc_FFC5D0F2:                           ; CODE XREF: sub_FFC5CFF0+F6↑j
                movea.l a4,a0
                _HUnlock

loc_FFC5D0F6:                           ; CODE XREF: sub_FFC5CFF0+CE↑j
                                        ; sub_FFC5CFF0+D2↑j ...
                tst.l   (a4)
                bne.s   loc_FFC5D100
                movea.l a4,a0
                moveq   #0,d0
                _ReallocateHandle

loc_FFC5D100:                           ; CODE XREF: sub_FFC5CFF0+B6↑j
                                        ; sub_FFC5CFF0+108↑j
                subq.l  #4,sp
                move.l  a3,-(sp)
                pea     var_28(a6)
                moveq   #4,d0
                _ComponentDispatch
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFC5D0A8

loc_FFC5D112:                           ; CODE XREF: sub_FFC5CFF0+100↑j
                clr.w   d7
                movea.l a4,a0
                _DisposeHandle

loc_FFC5D118:                           ; CODE XREF: sub_FFC5CFF0+70↑j
                                        ; sub_FFC5CFF0+86↑j
                movea.l var_30(a6),a0
                _DisposeHandle

loc_FFC5D11E:                           ; CODE XREF: sub_FFC5CFF0+26↑j
                                        ; sub_FFC5CFF0+40↑j
                move.l  a3,d0
                bne.s   loc_FFC5D128
                jsr     sub_FFC5E55C
                movea.l d0,a3

loc_FFC5D128:                           ; CODE XREF: sub_FFC5CFF0+130↑j
                tst.w   d7
                bne.s   loc_FFC5D132
                movea.l arg_0(a6),a0
                move.l  a3,(a0)

loc_FFC5D132:                           ; CODE XREF: sub_FFC5CFF0+13A↑j
                move.w  d7,arg_4(a6)
                movem.l var_44(a6),d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5CFF0

; ---------------------------------------------------------------------------
aOutputDevice:  dc.b $D,'Output Device',0 ; DATA XREF: sub_FFC5CFF0+4C↑o
                align 2

loc_FFC5D152:                           ; CODE XREF: ROM:FFC6251C↓j
                move.l  ([$2070],$144),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC5D160:                           ; CODE XREF: sub_FFC5CFF0+F0↑p
                bra.l   sub_FFCC95A0
; End of function sub_FFC5D160

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D170:                           ; DATA XREF: ROM:FFC07AA0↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $110(a0),a3
                moveq   #$FFFFFFFF,d0
                cmp.l   $52(a3),d0
                bne.s   loc_FFC5D1C6
                moveq   #4,d0
                _NewHandle
                movea.l a0,a4
                move.l  a4,d0
                beq.s   loc_FFC5D1AC
                subq.l  #2,sp
                move.l  #$73797362,-(sp)
                pea     aSysbeep(pc)    ; "\aSysBeep"
                move.l  a4,-(sp)
                move.l  #$6380018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                bra.s   loc_FFC5D1AE
; ---------------------------------------------------------------------------

loc_FFC5D1AC:                           ; CODE XREF: sub_FFC5D170+20↑j
                moveq   #$FFFFFF94,d7

loc_FFC5D1AE:                           ; CODE XREF: sub_FFC5D170+3A↑j
                tst.w   d7
                bne.s   loc_FFC5D1BA
                movea.l (a4),a0
                move.l  (a0),$52(a3)
                bra.s   loc_FFC5D1C2
; ---------------------------------------------------------------------------

loc_FFC5D1BA:                           ; CODE XREF: sub_FFC5D170+40↑j
                move.l  #$1000100,$52(a3)

loc_FFC5D1C2:                           ; CODE XREF: sub_FFC5D170+48↑j
                movea.l a4,a0
                _DisposeHandle

loc_FFC5D1C6:                           ; CODE XREF: sub_FFC5D170+16↑j
                movea.l arg_0(a6),a0
                move.l  $52(a3),(a0)
                clr.w   arg_4(a6)
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5D170

; ---------------------------------------------------------------------------
aSysbeep:       dc.b 7,'SysBeep',0      ; DATA XREF: sub_FFC5D170+2A↑o
                align 4

loc_FFC5D1E8:                           ; CODE XREF: ROM:FFC62524↓j
                move.l  ([$2070],$150),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D200:                           ; DATA XREF: ROM:FFC07AC0↑o

arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movea.l ($2B6).w,a0
                movea.l $110(a0),a0
                move.l  arg_0(a6),$52(a0)
                clr.w   arg_4(a6)
                unlk    a6
                rtd     #4
; End of function sub_FFC5D200

; ---------------------------------------------------------------------------

loc_FFC5D21C:                           ; CODE XREF: ROM:FFC62528↓j
                move.l  ([$2070],$170),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D230:                           ; DATA XREF: ROM:FFC07A90↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d3/d7,-(sp)
                subq.l  #2,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$68766F6C,-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$6440018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                sne     d3
                neg.b   d3
                move.w  d7,arg_4(a6)
                movem.l var_8(a6),d3/d7
                unlk    a6
                rtd     #4
; End of function sub_FFC5D230

; ---------------------------------------------------------------------------

loc_FFC5D266:                           ; CODE XREF: ROM:FFC6252C↓j
                move.l  ([$2070],$140),-(sp)
                rts

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D270:                           ; DATA XREF: ROM:FFC07AB0↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d3/d6-d7/a4,-(sp)
                move.l  arg_0(a6),d6
                movea.l ($2B6).w,a0
                movea.l $110(a0),a4
                clr.w   d7
                tst.w   4(a4)
                ble.s   loc_FFC5D2AA
                subq.l  #2,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$68766F6C,-(sp)
                move.l  d6,-(sp)
                move.l  #$6480018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                sne     d3
                neg.b   d3
                bra.s   loc_FFC5D2B4
; ---------------------------------------------------------------------------

loc_FFC5D2AA:                           ; CODE XREF: sub_FFC5D270+1A↑j
                move.b  #1,$5C(a4)
                move.l  d6,$5E(a4)

loc_FFC5D2B4:                           ; CODE XREF: sub_FFC5D270+38↑j
                move.w  d7,arg_4(a6)
                movem.l var_10(a6),d3/d6-d7/a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5D270

; ---------------------------------------------------------------------------

loc_FFC5D2C4:                           ; CODE XREF: ROM:FFC62530↓j
                move.l  ([$2070],$160),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D2D0:                           ; DATA XREF: ROM:FFC07A9C↑o

var_1A          = -$1A
var_2           = -2
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-2
                movem.l d5-d7/a2-a4,-(sp)
                movea.l arg_4(a6),a2
                movea.l arg_0(a6),a3
                moveq   #0,d0
                move.b  (a2),d0
                tst.l   d0
                bne.s   loc_FFC5D2EC
                moveq   #$FFFFFFCE,d7
                bra.s   loc_FFC5D366
; ---------------------------------------------------------------------------

loc_FFC5D2EC:                           ; CODE XREF: sub_FFC5D2D0+16↑j
                move.l  a3,d0
                bne.s   loc_FFC5D2F4
                moveq   #$FFFFFFCE,d7
                bra.s   loc_FFC5D366
; ---------------------------------------------------------------------------

loc_FFC5D2F4:                           ; CODE XREF: sub_FFC5D2D0+1E↑j
                subq.l  #2,sp
                _CurResFile
                move.w  (sp)+,d6
                pea     var_2(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFC5E36C
                move.w  d0,d7
                addq.w  #8,sp
                beq.s   loc_FFC5D316
                move.w  d6,-(sp)
                _UseResFile
                move.w  d7,arg_C(a6)
                bra.s   loc_FFC5D36A
; ---------------------------------------------------------------------------

loc_FFC5D316:                           ; CODE XREF: sub_FFC5D2D0+3A↑j
                subq.l  #4,sp
                move.l  arg_8(a6),-(sp)
                move.l  a2,-(sp)
                _Get1NamedResource
                movea.l (sp)+,a4
                move.l  a4,d0
                beq.s   loc_FFC5D350
                movea.l a4,a0
                _GetHandleSize
                move.l  d0,d5
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bne.s   loc_FFC5D35C
                movea.l a3,a0
                move.l  d5,d0
                _SetHandleSize
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bne.s   loc_FFC5D35C
                movea.l (a4),a0
                movea.l (a3),a1
                move.l  d5,d0
                _BlockMoveData
                bra.s   loc_FFC5D35C
; ---------------------------------------------------------------------------

loc_FFC5D350:                           ; CODE XREF: sub_FFC5D2D0+54↑j
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7
                bne.s   loc_FFC5D35C
                move.w  #$FF40,d7

loc_FFC5D35C:                           ; CODE XREF: sub_FFC5D2D0+64↑j
                                        ; sub_FFC5D2D0+74↑j ...
                move.w  var_2(a6),-(sp)
                _CloseResFile
                move.w  d6,-(sp)
                _UseResFile

loc_FFC5D366:                           ; CODE XREF: sub_FFC5D2D0+1A↑j
                                        ; sub_FFC5D2D0+22↑j
                move.w  d7,arg_C(a6)

loc_FFC5D36A:                           ; CODE XREF: sub_FFC5D2D0+44↑j
                movem.l var_1A(a6),d5-d7/a2-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC5D2D0

; ---------------------------------------------------------------------------

loc_FFC5D376:                           ; CODE XREF: ROM:FFC62538↓j
                move.l  ([$2070],$14C),-(sp)
                rts

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D380:                           ; DATA XREF: ROM:FFC07AB8↑o

var_1A          = -$1A
var_6           = -6
var_2           = -2
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-6
                movem.l d5-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                move.l  arg_8(a6),d6
                movea.l arg_4(a6),a4
                moveq   #0,d0
                move.b  (a4),d0
                tst.l   d0
                bne.s   loc_FFC5D3A2
                moveq   #$FFFFFFCE,d7
                bra.w   loc_FFC5D42C
; ---------------------------------------------------------------------------

loc_FFC5D3A2:                           ; CODE XREF: sub_FFC5D380+1A↑j
                move.l  a3,d0
                bne.s   loc_FFC5D3AC
                moveq   #$FFFFFFCE,d7
                bra.w   loc_FFC5D42C
; ---------------------------------------------------------------------------

loc_FFC5D3AC:                           ; CODE XREF: sub_FFC5D380+24↑j
                subq.l  #2,sp
                _CurResFile
                move.w  (sp)+,d5
                pea     var_2(a6)
                moveq   #1,d0
                move.l  d0,-(sp)
                jsr     sub_FFC5E36C
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFC5D428
                subq.l  #4,sp
                move.l  d6,-(sp)
                move.l  a4,-(sp)
                _Get1NamedResource
                move.l  (sp)+,var_6(a6)
                beq.s   loc_FFC5D3DE
                move.l  var_6(a6),-(sp)
                _RemoveResource
                movea.l var_6(a6),a0
                _DisposeHandle

loc_FFC5D3DE:                           ; CODE XREF: sub_FFC5D380+50↑j
                move.l  a3,var_6(a6)
                subq.l  #2,sp
                pea     var_6(a6)
                jsr     sub_FFC5D450
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                addq.w  #2,sp
                bne.s   loc_FFC5D422
                move.l  var_6(a6),-(sp)
                move.l  d6,-(sp)
                moveq   #0,d0
                move.w  d0,-(sp)
                move.l  a4,-(sp)
                _AddResource
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7
                beq.s   loc_FFC5D416
                movea.l var_6(a6),a0
                _DisposeHandle
                bra.s   loc_FFC5D422
; ---------------------------------------------------------------------------

loc_FFC5D416:                           ; CODE XREF: sub_FFC5D380+8C↑j
                move.l  var_6(a6),-(sp)
                _ChangedResource
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7

loc_FFC5D422:                           ; CODE XREF: sub_FFC5D380+76↑j
                                        ; sub_FFC5D380+94↑j
                move.w  var_2(a6),-(sp)
                _CloseResFile

loc_FFC5D428:                           ; CODE XREF: sub_FFC5D380+42↑j
                move.w  d5,-(sp)
                _UseResFile

loc_FFC5D42C:                           ; CODE XREF: sub_FFC5D380+1E↑j
                                        ; sub_FFC5D380+28↑j
                move.w  d7,arg_C(a6)
                movem.l var_1A(a6),d5-d7/a3-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC5D380

; ---------------------------------------------------------------------------

loc_FFC5D43C:                           ; CODE XREF: ROM:FFC62534↓j
                move.l  ([$2070],$168),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC5D450:                           ; CODE XREF: sub_FFC5D380+68↑p
                bra.l   sub_FFCC97B0
; End of function sub_FFC5D450

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D460:                           ; DATA XREF: ROM:FFC07B04↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_8(a6),a3
                move.l  a3,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5D47E
                move.w  #$FF33,d7
                bra.s   loc_FFC5D4A0
; ---------------------------------------------------------------------------

loc_FFC5D47E:                           ; CODE XREF: sub_FFC5D460+16↑j
                movea.l 4(a3),a4
                subq.l  #4,sp
                move.l  (a4),-(sp)
                move.l  $10(a4),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$C0103,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7

loc_FFC5D4A0:                           ; CODE XREF: sub_FFC5D460+1C↑j
                move.w  d7,arg_C(a6)
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC5D460

; ---------------------------------------------------------------------------

loc_FFC5D4B0:                           ; CODE XREF: ROM:FFC6253C↓j
                move.l  ([$2070],$1B4),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D4C0:                           ; DATA XREF: ROM:FFC07B08↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_8(a6),a3
                move.l  a3,-(sp)
                jsr     sub_FFC5E5F6
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC5D4DE
                move.w  #$FF33,d7
                bra.s   loc_FFC5D500
; ---------------------------------------------------------------------------

loc_FFC5D4DE:                           ; CODE XREF: sub_FFC5D4C0+16↑j
                movea.l 4(a3),a4
                subq.l  #4,sp
                move.l  (a4),-(sp)
                move.l  $10(a4),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$C0104,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7

loc_FFC5D500:                           ; CODE XREF: sub_FFC5D4C0+1C↑j
                move.w  d7,arg_C(a6)
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC5D4C0

; ---------------------------------------------------------------------------

loc_FFC5D510:                           ; CODE XREF: ROM:FFC62540↓j
                move.l  ([$2070],$1B8),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D520:                           ; DATA XREF: ROM:FFC07B0C↑o

var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-4
                move.l  d7,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     var_4(a6)
                move.l  d0,-(sp)
                move.l  arg_8(a6),-(sp)
                jsr     sub_FFC5E4A0
                move.w  d0,d7
                lea     $14(sp),sp
                bne.s   loc_FFC5D56C
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$C0103,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC5E4EA
                addq.w  #4,sp

loc_FFC5D56C:                           ; CODE XREF: sub_FFC5D520+20↑j
                move.w  d7,arg_C(a6)
                move.l  var_8(a6),d7
                unlk    a6
                rtd     #$C
; End of function sub_FFC5D520

; ---------------------------------------------------------------------------

loc_FFC5D57A:                           ; CODE XREF: ROM:FFC62544↓j
                move.l  ([$2070],$1BC),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D590:                           ; DATA XREF: ROM:FFC07B10↑o

var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-4
                move.l  d7,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     var_4(a6)
                move.l  d0,-(sp)
                move.l  arg_8(a6),-(sp)
                jsr     sub_FFC5E4A0
                move.w  d0,d7
                lea     $14(sp),sp
                bne.s   loc_FFC5D5DC
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$C0104,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC5E4EA
                addq.w  #4,sp

loc_FFC5D5DC:                           ; CODE XREF: sub_FFC5D590+20↑j
                move.w  d7,arg_C(a6)
                move.l  var_8(a6),d7
                unlk    a6
                rtd     #$C
; End of function sub_FFC5D590

; ---------------------------------------------------------------------------

loc_FFC5D5EA:                           ; CODE XREF: ROM:FFC62548↓j
                move.l  ([$2070],$1C0),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D600:                           ; DATA XREF: ROM:FFC079CC↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                move    sr,d0
                ori     #$700,sr
                move.w  d0,d7
                move.w  $20(a4),d0
                cmp.w   $22(a4),d0
                bne.s   loc_FFC5D628
                ext.l   d7
                move.l  d7,d0
                move    d0,sr
                moveq   #1,d0
                bra.s   loc_FFC5D662
; ---------------------------------------------------------------------------

loc_FFC5D628:                           ; CODE XREF: sub_FFC5D600+1C↑j
                moveq   #$FFFFFFFF,d0
                cmp.w   $20(a4),d0
                bne.s   loc_FFC5D636
                move.w  $22(a4),$20(a4)

loc_FFC5D636:                           ; CODE XREF: sub_FFC5D600+2E↑j
                movea.l arg_4(a6),a0
                move.w  $22(a4),d0
                addq.w  #1,$22(a4)
                ext.l   d0
                lea     $24(a4,d0.l*8),a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                move.w  $22(a4),d0
                cmp.w   $1E(a4),d0
                bne.s   loc_FFC5D65A
                clr.w   $22(a4)

loc_FFC5D65A:                           ; CODE XREF: sub_FFC5D600+54↑j
                ext.l   d7
                move.l  d7,d0
                move    d0,sr
                moveq   #0,d0

loc_FFC5D662:                           ; CODE XREF: sub_FFC5D600+26↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC5D600


; =============== S U B R O U T I N E =======================================


sub_FFC5D66C:                           ; CODE XREF: sub_FFC5C280+2C↑p
                move.l  ([$2070],$7C),-(sp)
                rts
; End of function sub_FFC5D66C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D680:                           ; DATA XREF: ROM:FFC079F0↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                moveq   #$FFFFFFFF,d0
                cmp.w   $20(a4),d0
                bne.s   loc_FFC5D69C
                moveq   #0,d0
                bra.s   loc_FFC5D6DA
; ---------------------------------------------------------------------------

loc_FFC5D69C:                           ; CODE XREF: sub_FFC5D680+16↑j
                move.w  $20(a4),d0
                addq.w  #1,$20(a4)
                ext.l   d0
                lea     $24(a4,d0.l*8),a0
                movea.l a3,a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                lea     $14(a4),a0
                movea.l a3,a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.w  $20(a4),d0
                cmp.w   $1E(a4),d0
                bne.s   loc_FFC5D6C8
                clr.w   $20(a4)

loc_FFC5D6C8:                           ; CODE XREF: sub_FFC5D680+42↑j
                move.w  $20(a4),d0
                cmp.w   $22(a4),d0
                bne.s   loc_FFC5D6D8
                move.w  #$FFFF,$20(a4)

loc_FFC5D6D8:                           ; CODE XREF: sub_FFC5D680+50↑j
                moveq   #1,d0

loc_FFC5D6DA:                           ; CODE XREF: sub_FFC5D680+1A↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5D680


; =============== S U B R O U T I N E =======================================


sub_FFC5D6E4:                           ; CODE XREF: sub_FFC5D800+16↓p
                move.l  ([$2070],$A0),-(sp)
                rts
; End of function sub_FFC5D6E4

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D6F0:                           ; DATA XREF: ROM:FFC07A24↑o

var_20          = -$20
var_8           = -8
var_6           = -6
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l d5-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l arg_4(a6),a3
                clr.w   d7
                moveq   #1,d0
                cmp.w   (a3),d0
                bne.w   loc_FFC5D79E
                lea     (4).w,a0
                movea.l a3,a4
                adda.l  a0,a4
                tst.w   2(a3)
                bne.s   loc_FFC5D736
                movea.l 4(a2),a0
                tst.w   $94(a0)
                bne.s   loc_FFC5D75A
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC5E7F4
                move.w  d0,d7
                addq.w  #8,sp
                bne.w   loc_FFC5D7E0
                bra.s   loc_FFC5D75A
; ---------------------------------------------------------------------------

loc_FFC5D736:                           ; CODE XREF: sub_FFC5D6F0+26↑j
                moveq   #0,d0
                move.w  (a4),d0
                move.l  d0,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC5E7F4
                move.w  d0,d7
                addq.w  #8,sp
                bne.w   loc_FFC5D7E0
                move.w  2(a3),d1
                ext.l   d1
                add.l   d1,d1
                move.l  d1,d0
                add.l   d0,d0
                add.l   d0,d1
                adda.l  d1,a4

loc_FFC5D75A:                           ; CODE XREF: sub_FFC5D6F0+30↑j
                                        ; sub_FFC5D6F0+44↑j
                move.w  (a4)+,d5
                move.w  d5,d6
                subq.w  #1,d6
                tst.w   d6
                blt.s   loc_FFC5D7E0

loc_FFC5D764:                           ; CODE XREF: sub_FFC5D6F0+A8↓j
                lea     var_8(a6),a0
                movea.l a4,a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.w  var_8(a6),d0
                and.w   #$8000,d0
                beq.s   loc_FFC5D784
                move.l  a3,d0
                add.l   d0,var_4(a6)
                andi.w  #$7FFF,var_8(a6)

loc_FFC5D784:                           ; CODE XREF: sub_FFC5D6F0+86↑j
                subq.l  #2,sp
                move.l  a2,-(sp)
                pea     var_8(a6)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDoCommand
                move.w  (sp)+,d7
                bne.s   loc_FFC5D7E0
                addq.l  #8,a4
                dbf     d6,loc_FFC5D764
                bra.s   loc_FFC5D7E0
; ---------------------------------------------------------------------------

loc_FFC5D79E:                           ; CODE XREF: sub_FFC5D6F0+16↑j
                moveq   #5,d0
                move.l  d0,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC5E7F4
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFC5D7E0
                move.w  #$51,var_8(a6) ; 'Q'
                clr.w   var_6(a6)
                lea     (6).w,a0
                move.l  a3,d0
                add.l   a0,d0
                move.l  d0,var_4(a6)
                move.w  4(a3),d0
                ext.l   d0
                asl.l   #3,d0
                add.l   d0,var_4(a6)
                subq.l  #2,sp
                move.l  a2,-(sp)
                pea     var_8(a6)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDoCommand
                move.w  (sp)+,d7

loc_FFC5D7E0:                           ; CODE XREF: sub_FFC5D6F0+40↑j
                                        ; sub_FFC5D6F0+56↑j ...
                move.w  d7,d0
                movem.l var_20(a6),d5-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC5D6F0


; =============== S U B R O U T I N E =======================================


sub_FFC5D7EC:                           ; CODE XREF: sub_FFC5C170+7A↑p
                                        ; sub_FFC5EF00+64↓p
                move.l  ([$2070],$D4),-(sp)
                rts
; End of function sub_FFC5D7EC

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D800:                           ; DATA XREF: ROM:FFC07A20↑o

var_10          = -$10
var_8           = -8
arg_0           =  8

                link    a6,#-8
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                clr.w   d7
                bra.s   loc_FFC5D82E
; ---------------------------------------------------------------------------

loc_FFC5D810:                           ; CODE XREF: sub_FFC5D800+42↓j
                pea     var_8(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC5D6E4
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFC5D844
                pea     var_8(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC5DF84
                move.w  d0,d7
                addq.w  #8,sp

loc_FFC5D82E:                           ; CODE XREF: sub_FFC5D800+E↑j
                movea.l 4(a4),a0
                move.w  $9E(a0),d0
                and.w   #$3C,d0 ; '<'
                bne.s   loc_FFC5D844
                moveq   #$FFFFFFFF,d0
                cmp.w   $20(a4),d0
                bne.s   loc_FFC5D810

loc_FFC5D844:                           ; CODE XREF: sub_FFC5D800+1E↑j
                                        ; sub_FFC5D800+3A↑j
                move.w  d7,d0
                movem.l var_10(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC5D800


; =============== S U B R O U T I N E =======================================


sub_FFC5D850:                           ; CODE XREF: sub_FFC5C280+48↑p
                                        ; sub_FFC5EFA0+30↓p ...
                move.l  ([$2070],$D0),-(sp)
                rts
; End of function sub_FFC5D850

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5D860:                           ; DATA XREF: ROM:FFC07A1C↑o

var_20          = -$20
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l d3-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l 4(a0),a3
                move.l  (a3),var_4(a6)
                movea.l arg_4(a6),a0
                move.w  (a0),d0
                cmpi.w  #$57,d0 ; 'W'
                bhi.w   loc_FFC5DF6C
                add.w   d0,d0
                move.w  word_FFC5D88C(pc,d0.w),d0
                jmp     (pc,d0.w)
; ---------------------------------------------------------------------------
word_FFC5D88C:  dc.w $6E6               ; DATA XREF: sub_FFC5D860+24↑r
                dc.w $6E2
                dc.l $6E2020A, $B6017A
                dcb.l 2,$6E206E2
                dc.l $4E000CC, $D601EE, $F006E2
                dcb.l $C,$6E206E2
                dc.l $3D204AA, $3D20542, $5000586, $59605EC
                dcb.l 6,$6E206E2
                dc.l $51806E2
                dcb.l 9,$6E206E2
                dc.l $3840242, $60C0242, $300064E, $6A006D4, $60000632
                dc.l $206E0008, $317CFFFF, $20206E, $84268, $226000, $61C006B
                dc.l $10009E, $60000612, $26BFFEF, $9E2F2E, $84EBA, $FEE44A40
                dc.l $56C34403, $584F6000, $5F8006B, $20009E, $42062078
                dc.l $2B62068, $1102850, $605E206C, $47020, $C068009E
                dc.l $6750206E, $C202C, $18B0A8, $46642, $536C0016, $4A6C0016
                dc.l $6638206C, $40268, $FFDF009E, $206C0004, $680040
                dc.l $9E206C, $47000, $214000D8, $2F0C4EBA, $FE7C4A40
                dc.l $56C34403, $206C0004, $268FFBF, $9E7C01, $584F2854
                dc.l $200C669E, $4A066700, $57C4EBA, $210A3E00, $6600057A
                dc.l $6000056E, $206E000C, $27680004, $8E206E, $C2F28
                dc.l $42F0B, $4EBA0C32, $2F2E0008, $4EBA0CBC, $2A00598F
                dc.l $2F2EFFFC, $2F2B0010, $2F3C766F, $6C752F05, $2F3C000C
                dc.l $1047000, $A82A201F, $3E004FEF, $C6600, $52C598F
                dc.l $2F2EFFFC, $2F2B0010, $2F3C7175, $616C2F2B, $962F3C
                dc.l $C0104, $7000A82A, $201F3E00, $66000506, $600004FA
                dc.l $206E0008, $4AA80008, $670004EE, $2F082F2E, $C2268
                dc.l $84E91, $600004DE, $2F2E0008, $4EBA160E, $598F2F2E
                dc.l $FFFC7001, $3F00486B, $102F3C, $60106, $7000A82A
                dc.l $201F3E00, $584F6600, $4BC026B, $FFFB009E, $426B0092
                dc.l $600004A6, $7005B06B, $946600, $4A0426B, $922F2E
                dc.l $84EBA, $15C8206E, $C2F28, $42F2E, $84EBA, $121C3E00
                dc.l $4FEF000C, $6600047E, $206E000C, $C68F3BB, $2662E
                dc.l $302B00D6, $48C0723C, $92802F01, $4EBA1C20, $28000CAB
                dc.l $10000, $9A584F, $670C598F, $2F042F2B, $9AA868, $281F2744
                dc.l $34006B, $4009E, $377C0001, $92302B, $9EC07C, $40670C
                dc.l $41EB0014, $274800D8, $6000041A, $598F2F2E, $FFFC2F2B
                dc.l $10486B, $147000, $2F002F3C, $C0108, $7000A82A, $201F3E00
                dc.l $670003F6, $26BFFFB, $9E426B, $926000, $3F07005, $B06B0094
                dc.l $660003E2, $426B0092, $2F2E0008, $4EBA150A, $206E000C
                dc.l $2F280004, $2F2E0008, $4EBA186A, $3E004FEF, $C6600
                dc.l $3C0006B, $4009E, $377C0006, $92302B, $9EC07C, $40670C
                dc.l $41EB0014, $274800D8, $60000396, $598F2F2E, $FFFC2F2B
                dc.l $10486B, $147000, $2F002F3C, $C0108, $7000A82A, $201F3E00
                dc.l $67000372, $26BFFFB, $9E426B, $926000, $36C7005, $B06B0094
                dc.l $6600035E, $426B0092, $206E000C, $2F280004, $2F2E0008
                dc.l $4EBA10E2, $3E00504F, $66000346, $598F2F2E, $FFFC2F2B
                dc.l $10486B, $147001, $2F002F3C, $C0108, $7000A82A, $201F3E00
                dc.l $66000322, $60000316, $7005B06B, $94660C, $4AAB002C
                dc.l $66064247, $6000030A, $426B0092, $206E000C, $707FC0A8
                dc.l $46700, $FE147005, $B06B0094, $6614707F, $C0A80004
                dc.l $2F002F2E, $84EBA, $150E504F, $6016206E, $C707F, $C0A80004
                dc.l $2F002F2E, $84EBA, $DC0504F, $206E000C, $70003010
                dc.l $7228B280, $661A3028, $248C0, $2F002F2E, $84EBA, $1440006B
                dc.l $4009E, $504F600A, $2F2E0008, $4EBA13C6, $584F377C
                dc.l $20092, $302B009E, $C07C0040, $670C41EB, $142748
                dc.l $D86000, $270598F, $2F2EFFFC, $2F2B0010, $486B0014
                dc.l $70002F00, $2F3C000C, $1087000, $A82A201F, $3E006700
                dc.l $24C026B, $FFFB009E, $426B0092, $60000246, $7002B06B
                dc.l $926708, $7003B06B, $926606, $377C0004, $92006B, $4009E
                dc.l $206E000C, $30280002, $48C02F00, $2F2E0008, $4EBA13AE
                dc.l $504F6000, $208006B, $C009E, $206E000C, $30280002
                dc.l $48C02F00, $2F2E0008, $4EBA138E, $504F6000, $1E87001
                dc.l $B06B0094, $660001E2, $206E000C, $37680002, $11E6000
                dc.l $1D07003, $B06B0094, $660001CA, $206E000C, $2F280004
                dc.l $30280002, $48C02F00, $486B0128, $4EBA0C50, $4FEF000C
                dc.l $600001A6, $206E000C, $303C00FF, $C0680002, $374000A0
                dc.l $2F2E0008, $4EBA08FC, $2A00598F, $2F2EFFFC, $2F2B0010
                dc.l $2F3C766F, $6C752F05, $2F3C000C, $1047000, $A82A201F
                dc.l $3E00584F, $6600016E, $60000162, $206E000C, $20680004
                dc.l $30AB00A0, $60000152, $206E000C, $203C0000, $FFFFC0A8
                dc.l $43740, $A4206E, $C7010, $22280004, $E0A13741, $A62F2E
                dc.l $84EBA, $8962A00, $598F2F2E, $FFFC2F2B, $102F3C, $766F6C75
                dc.l $2F052F3C, $C0104, $7000A82A, $201F3E00, $584F6600
                dc.l $1086000, $FC302B, $A648C0, $7210E3A8, $322B00A4
                dc.l $48C18280, $206E000C, $20680004, $20816000, $DC598F
                dc.l $2F2EFFFC, $2F2B0010, $2F3C726D, $756C598F, $206E000C
                dc.l $2F280004, $2F3C56EE, $8BA32F2B, $24203C, $60C0018
                dc.l $A8002F3C, $C0104, $7000A82A, $201F3E00, $660000A6
                dc.l $6000009A, $598F2F2E, $FFFC2F2B, $102F3C, $726D756C
                dc.l $206E000C, $2F280004, $2F3C000C, $1037000, $A82A201F
                dc.l $3E006678, $598F206E, $C2068, $42F10, $2F2B0024, $2F3C56EE
                dc.l $8BA3203C, $60C0018, $A800206E, $C2068, $4209F, $6046598F
                dc.l $2F2EFFFC, $2F2B0010, $2F3C726D, $756C206E, $C2F28
                dc.l $42F3C, $C0104, $7000A82A, $201F3E00, $6626206E, $C2768
                dc.l $4009A, $6012206E, $C2068, $420AB, $9A6004
; ---------------------------------------------------------------------------

loc_FFC5DF6C:                           ; CODE XREF: sub_FFC5D860+1E↑j
                moveq   #$FFFFFFCE,d7
                bra.s   loc_FFC5DF78
; ---------------------------------------------------------------------------
                moveq   #0,d0
                bra.s   loc_FFC5DF7A
; ---------------------------------------------------------------------------
                move.w  #$FF33,d7

loc_FFC5DF78:                           ; CODE XREF: sub_FFC5D860+70E↑j
                move.w  d7,d0

loc_FFC5DF7A:                           ; CODE XREF: sub_FFC5D860+712↑j
                movem.l var_20(a6),d3-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC5D860


; =============== S U B R O U T I N E =======================================


sub_FFC5DF84:                           ; CODE XREF: sub_FFC5BB50+156↑p
                                        ; sub_FFC5C2F0+30↑p ...
                move.l  ([$2070],$CC),-(sp)
                rts
; End of function sub_FFC5DF84

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5DF90:                           ; CODE XREF: sub_FFC00200+22A↑p

var_1C          = -$1C
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4

                link    a6,#-$14
                movem.l d7/a4,-(sp)
                jsr     sub_FFC5E28C
                jsr     sub_FFC62290
                jsr     sub_FFC62290
                subq.l  #2,sp
                moveq   #8,d0
                move.w  d0,-(sp)
                pea     sub_FFC62494(pc)
                move.l  #$40000,d0
                _SoundDispatch
                subq.l  #2,sp
                moveq   #$18,d0
                move.w  d0,-(sp)
                pea     sub_FFC62568(pc)
                move.l  #$40000,d0
                _SoundDispatch
                subq.l  #2,sp
                moveq   #$14,d0
                move.w  d0,-(sp)
                pea     sub_FFC624D0(pc)
                move.l  #$40000,d0
                _SoundDispatch
                move.l  #$63667267,d0
                lea     var_4(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                move.w  d0,d7
                addq.w  #6,sp
                bne.s   loc_FFC5E04E
                moveq   #1,d0
                and.l   var_4(a6),d0
                beq.s   loc_FFC5E04E
                subq.l  #4,sp
                move.l  #$6E6C6962,-(sp)
                move.w  #$29A,-(sp)
                _rGetResource
                movea.l (sp)+,a4
                move.l  a4,d0
                beq.s   loc_FFC5E062
                moveq   #0,d0
                move.l  d0,var_14(a6)
                move.l  (a4),var_10(a6)
                subq.l  #4,sp
                move.l  a4,-(sp)
                jsr     sub_FFC5E080
                move.l  (sp)+,var_C(a6)
                clr.b   var_8(a6)
                subq.l  #2,sp
                pea     var_14(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     aSoundlib(pc)   ; "\bSoundLib"
                moveq   #0,d1
                move.b  d1,-(sp)
                move.w  #$FFFC,-(sp)
                _CodeFragmentDispatch
                move.w  (sp)+,d7
                beq.s   loc_FFC5E048
                cmpi.w  #$F50B,d7
                bne.s   loc_FFC5E062

loc_FFC5E048:                           ; CODE XREF: sub_FFC5DF90+B0↑j
                jsr     sub_FFC5E090
                bra.s   loc_FFC5E062
; ---------------------------------------------------------------------------

loc_FFC5E04E:                           ; CODE XREF: sub_FFC5DF90+5E↑j
                                        ; sub_FFC5DF90+66↑j
                subq.l  #2,sp
                moveq   #$10,d0
                move.w  d0,-(sp)
                pea     loc_FFC62404(pc)
                move.l  #$40000,d0
                _SoundDispatch
                addq.w  #2,sp

loc_FFC5E062:                           ; CODE XREF: sub_FFC5DF90+7A↑j
                                        ; sub_FFC5DF90+B6↑j ...
                clr.b   ($27E).w
                moveq   #$FFFFFFFF,d0
                move.l  d0,($CC4).w
                movem.l var_1C(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC5DF90

; ---------------------------------------------------------------------------
aSoundlib:      dc.b 8,'SoundLib',0     ; DATA XREF: sub_FFC5DF90+A0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC5E080:                           ; CODE XREF: sub_FFC5DF90+8A↑p
                bra.l   sub_FFCC9520
; End of function sub_FFC5E080

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E090:                           ; CODE XREF: sub_FFC5DF90:loc_FFC5E048↑p

var_116         = -$116
var_106         = -$106
var_6           = -6
var_1           = -1

                link    a6,#-$106
                movem.l d7/a2-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $110(a0),a3
                subq.l  #2,sp
                pea     aSoundlib_0(pc) ; "\bSoundLib"
                move.l  #$70777063,-(sp)
                moveq   #1,d0
                move.l  d0,-(sp)
                pea     $62(a3)
                pea     var_6(a6)
                pea     var_106(a6)
                move.w  #1,-(sp)
                _CodeFragmentDispatch
                move.w  (sp)+,d7
                bne.w   loc_FFC5E190
                lea     word_FFC62462(pc),a0
                move.w  (a0),d1
                ext.l   d1
                move.l  d1,d0
                _NewPtr
                movea.l a0,a4
                move.l  a4,d0
                beq.w   loc_FFC5E190
                lea     dword_FFC62430(pc),a1
                movea.l a1,a0
                movea.l a4,a1
                lea     word_FFC62462(pc),a2
                move.w  (a2),d1
                ext.l   d1
                move.l  d1,d0
                _BlockMove
                subq.l  #2,sp
                move.l  $62(a3),-(sp)
                pea     word_FFC5E1D6(pc)
                move.l  a4,-(sp)
                pea     var_1(a6)
                move.w  #5,-(sp)
                _CodeFragmentDispatch
                move.w  (sp)+,d7
                bne.w   loc_FFC5E190
                subq.l  #2,sp
                move.l  $62(a3),-(sp)
                pea     aGComp3to1rd(pc) ; "\rg__Comp3to1RD"
                pea     4(a4)
                pea     var_1(a6)
                move.w  #5,-(sp)
                _CodeFragmentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5E190
                subq.l  #2,sp
                move.l  $62(a3),-(sp)
                pea     dword_FFC5E1B8(pc)
                pea     8(a4)
                pea     var_1(a6)
                move.w  #5,-(sp)
                _CodeFragmentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5E190
                subq.l  #2,sp
                move.l  $62(a3),-(sp)
                pea     aGComp6to1rd(pc) ; "\rg__Comp6to1RD"
                pea     $C(a4)
                pea     var_1(a6)
                move.w  #5,-(sp)
                _CodeFragmentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5E190
                subq.l  #2,sp
                move.l  $62(a3),-(sp)
                pea     word_FFC5E19A(pc)
                pea     $10(a4)
                pea     var_1(a6)
                move.w  #5,-(sp)
                _CodeFragmentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5E190
                subq.l  #2,sp
                moveq   #$10,d0
                move.w  d0,-(sp)
                pea     $14(a4)
                move.l  #$40000,d0
                _SoundDispatch
                move.w  (sp)+,d7

loc_FFC5E190:                           ; CODE XREF: sub_FFC5E090+34↑j
                                        ; sub_FFC5E090+48↑j ...
                movem.l var_116(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC5E090

; ---------------------------------------------------------------------------
word_FFC5E19A:  dc.w $C67               ; DATA XREF: sub_FFC5E090+D6↑o
aExp1to6rd:     dc.b '__Exp1to6RD',0
aGComp6to1rd:   dc.b $D,'g__Comp6to1RD',0 ; DATA XREF: sub_FFC5E090+BA↑o
                align 4
dword_FFC5E1B8: dc.l $C675F5F, $45787031, $746F3352 ; DATA XREF: sub_FFC5E090+9E↑o
                dc.b $44, 0
aGComp3to1rd:   dc.b $D,'g__Comp3to1RD',0 ; DATA XREF: sub_FFC5E090+82↑o
                align 2
word_FFC5E1D6:  dc.w $1067              ; DATA XREF: sub_FFC5E090+66↑o
aMaceversionrd: dc.b '__MACEVersionRD',0
aSoundlib_0:    dc.b 8,'SoundLib',0     ; DATA XREF: sub_FFC5E090+12↑o
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E200:                           ; DATA XREF: ROM:FFC079D0↑o

var_8           = -8

                link    a6,#0
                movem.l a3-a4,-(sp)
                moveq   #$66,d0 ; 'f'
                _NewPtrSysClear
                movea.l a0,a4
                move.l  a4,d0
                beq.s   loc_FFC5E282
                moveq   #$38,d0 ; '8'
                _NewPtrSysClear
                movea.l a0,a3
                move.l  a3,d0
                beq.s   loc_FFC5E282
                move.l  a3,$26(a4)
                moveq   #$66,d0 ; 'f'
                move.l  d0,$12(a4)
                move.w  #1,$18(a4)
                moveq   #$FFFFFFFF,d1
                move.l  d1,$52(a4)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #$FFFFFFFF,d0
                tst.b   (sp)+
                sne     d0
                move.w  d0,($B9E).w
                subq.l  #4,sp
                move.l  #$70726F63,-(sp)
                move.w  #$BF8F,-(sp)
                _GetResource
                movea.l $26(a4),a0
                move.l  (sp)+,$E(a0)
                moveq   #0,d0
                move.b  d0,-(sp)
                moveq   #$FFFFFFFF,d0
                tst.b   (sp)+
                sne     d0
                move.w  d0,($B9E).w
                subq.l  #4,sp
                move.l  #$70726F63,-(sp)
                move.w  #$BF8E,-(sp)
                _GetResource
                movea.l $26(a4),a0
                move.l  (sp)+,$14(a0)
                movea.l ($2B6).w,a0
                move.l  a4,$110(a0)

loc_FFC5E282:                           ; CODE XREF: sub_FFC5E200+10↑j
                                        ; sub_FFC5E200+1A↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5E200


; =============== S U B R O U T I N E =======================================


sub_FFC5E28C:                           ; CODE XREF: sub_FFC5DF90+8↑p
                move.l  ([$2070],$80),-(sp)
                rts
; End of function sub_FFC5E28C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E2A0:                           ; DATA XREF: ROM:FFC07A00↑o

var_58          = -$58
var_4C          = -$4C
var_6           = -6
var_2           = -2
arg_3           =  $B
arg_4           =  $C

                link    a6,#-$4C
                movem.l d6-d7/a4,-(sp)
                subq.l  #4,sp
                move.l  #$53545220,-(sp)
                move.w  #$BF48,-(sp)
                _GetResource
                movea.l (sp)+,a4
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7
                move.l  a4,d0
                bne.s   loc_FFC5E2D0
                tst.w   d7
                bne.w   loc_FFC5E360
                move.w  #$FF40,d7
                bra.w   loc_FFC5E360
; ---------------------------------------------------------------------------

loc_FFC5E2D0:                           ; CODE XREF: sub_FFC5E2A0+20↑j
                subq.l  #2,sp
                move.w  #$8000,-(sp)
                move.l  #$70726566,-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                pea     var_2(a6)
                pea     var_6(a6)
                moveq   #0,d0
                _AliasDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5E360
                movea.l a4,a0
                _HLock
                subq.l  #2,sp
                move.w  var_2(a6),-(sp)
                move.l  var_6(a6),-(sp)
                move.l  (a4),-(sp)
                pea     var_4C(a6)
                moveq   #1,d0
                _HighLevelFSDispatch
                move.w  (sp)+,d7
                movea.l a4,a0
                _HUnlock
                cmpi.w  #$FFD5,d7
                bne.s   loc_FFC5E334
                tst.b   arg_3(a6)
                beq.s   loc_FFC5E334
                pea     var_4C(a6)
                move.l  #$73616420,-(sp)
                move.l  #$70726566,-(sp)
                moveq   #$FFFFFFFF,d0
                move.w  d0,-(sp)
                moveq   #$E,d0
                _HighLevelFSDispatch
                clr.w   d7

loc_FFC5E334:                           ; CODE XREF: sub_FFC5E2A0+72↑j
                                        ; sub_FFC5E2A0+78↑j
                tst.w   d7
                bne.s   loc_FFC5E360
                subq.l  #2,sp
                pea     var_4C(a6)
                moveq   #3,d0
                move.b  d0,-(sp)
                moveq   #$D,d0
                _HighLevelFSDispatch
                move.w  (sp)+,d6
                cmpi.w  #$FFFF,d6
                bne.s   loc_FFC5E356
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7
                bra.s   loc_FFC5E360
; ---------------------------------------------------------------------------

loc_FFC5E356:                           ; CODE XREF: sub_FFC5E2A0+AC↑j
                movea.l arg_4(a6),a0
                move.w  d6,(a0)
                moveq   #0,d0
                bra.s   loc_FFC5E362
; ---------------------------------------------------------------------------

loc_FFC5E360:                           ; CODE XREF: sub_FFC5E2A0+24↑j
                                        ; sub_FFC5E2A0+2C↑j ...
                move.w  d7,d0

loc_FFC5E362:                           ; CODE XREF: sub_FFC5E2A0+BE↑j
                movem.l var_58(a6),d6-d7/a4
                unlk    a6
                rts
; End of function sub_FFC5E2A0


; =============== S U B R O U T I N E =======================================


sub_FFC5E36C:                           ; CODE XREF: sub_FFC5D2D0+32↑p
                                        ; sub_FFC5D380+3A↑p
                move.l  ([$2070],$B0),-(sp)
                rts
; End of function sub_FFC5E36C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E380:                           ; DATA XREF: ROM:FFC079FC↑o

var_18          = -$18
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_13          =  $1B

                link    a6,#-8
                movem.l d6-d7/a3-a4,-(sp)
                movea.l ($2B6).w,a0
                move.l  $110(a0),var_8(a6)
                subq.l  #2,sp
                _CurResFile
                move.w  (sp)+,d6
                moveq   #0,d0
                move.l  d0,var_4(a6)
                movea.l var_8(a6),a0
                movea.l (a0),a4
                bra.s   loc_FFC5E3BC
; ---------------------------------------------------------------------------

loc_FFC5E3A6:                           ; CODE XREF: sub_FFC5E380+3E↓j
                movea.l 4(a4),a3
                move.l  4(a3),d0
                cmp.l   arg_0(a6),d0
                bne.s   loc_FFC5E3BA
                move.l  (a3),var_4(a6)
                bra.s   loc_FFC5E3C0
; ---------------------------------------------------------------------------

loc_FFC5E3BA:                           ; CODE XREF: sub_FFC5E380+32↑j
                movea.l (a4),a4

loc_FFC5E3BC:                           ; CODE XREF: sub_FFC5E380+24↑j
                move.l  a4,d0
                bne.s   loc_FFC5E3A6

loc_FFC5E3C0:                           ; CODE XREF: sub_FFC5E380+38↑j
                tst.l   var_4(a6)
                bne.w   loc_FFC5E456
                tst.l   arg_0(a6)
                bne.s   loc_FFC5E3E2
                subq.l  #2,sp
                pea     arg_0(a6)
                move.l  #$21C0018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                bne.w   loc_FFC5E490

loc_FFC5E3E2:                           ; CODE XREF: sub_FFC5E380+4C↑j
                subq.l  #4,sp
                move.l  arg_0(a6),-(sp)
                moveq   #7,d0
                _ComponentDispatch
                move.l  (sp)+,var_4(a6)
                bne.s   loc_FFC5E3FA
                move.w  #$F82C,d7
                bra.w   loc_FFC5E490
; ---------------------------------------------------------------------------

loc_FFC5E3FA:                           ; CODE XREF: sub_FFC5E380+70↑j
                tst.b   arg_13(a6)
                beq.s   loc_FFC5E424
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                move.l  arg_C(a6),-(sp)
                move.l  #$40001,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7
                beq.s   loc_FFC5E424
                ext.l   d7
                cmpi.l  #$80008002,d7
                bne.s   loc_FFC5E486

loc_FFC5E424:                           ; CODE XREF: sub_FFC5E380+7E↑j
                                        ; sub_FFC5E380+98↑j
                movea.l var_8(a6),a0
                tst.b   $5C(a0)
                beq.s   loc_FFC5E456
                clr.b   $5C(a0)
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$68766F6C,-(sp)
                movea.l var_8(a6),a0
                move.l  $5E(a0),-(sp)
                move.l  #$C0104,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                addq.w  #4,sp

loc_FFC5E456:                           ; CODE XREF: sub_FFC5E380+44↑j
                                        ; sub_FFC5E380+AC↑j
                tst.l   arg_4(a6)
                beq.s   loc_FFC5E476
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  #$40101,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7
                bne.s   loc_FFC5E486

loc_FFC5E476:                           ; CODE XREF: sub_FFC5E380+DA↑j
                move.w  d6,-(sp)
                _UseResFile
                movea.l arg_8(a6),a0
                move.l  var_4(a6),(a0)
                moveq   #0,d0
                bra.s   loc_FFC5E496
; ---------------------------------------------------------------------------

loc_FFC5E486:                           ; CODE XREF: sub_FFC5E380+A2↑j
                                        ; sub_FFC5E380+F4↑j
                move.l  var_4(a6),-(sp)
                jsr     sub_FFC5E4EA
                addq.w  #4,sp

loc_FFC5E490:                           ; CODE XREF: sub_FFC5E380+5E↑j
                                        ; sub_FFC5E380+76↑j
                move.w  d6,-(sp)
                _UseResFile
                move.w  d7,d0

loc_FFC5E496:                           ; CODE XREF: sub_FFC5E380+104↑j
                movem.l var_18(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC5E380


; =============== S U B R O U T I N E =======================================


sub_FFC5E4A0:                           ; CODE XREF: sub_FFC5BD60+134↑p
                                        ; sub_FFC5BD60+174↑p ...
                move.l  ([$2070],$AC),-(sp)
                rts
; End of function sub_FFC5E4A0

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E4B0:                           ; DATA XREF: ROM:FFC07968↑o

var_10          = -$10
arg_0           =  8

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l ($2B6).w,a0
                movea.l $110(a0),a2
                movea.l (a2),a4
                bra.s   loc_FFC5E4D2
; ---------------------------------------------------------------------------

loc_FFC5E4C8:                           ; CODE XREF: sub_FFC5E4B0+24↓j
                movea.l 4(a4),a0
                cmpa.l  (a0),a3
                beq.s   loc_FFC5E4E0
                movea.l (a4),a4

loc_FFC5E4D2:                           ; CODE XREF: sub_FFC5E4B0+16↑j
                move.l  a4,d0
                bne.s   loc_FFC5E4C8
                subq.l  #2,sp
                move.l  a3,-(sp)
                moveq   #8,d0
                _ComponentDispatch
                addq.w  #2,sp

loc_FFC5E4E0:                           ; CODE XREF: sub_FFC5E4B0+1E↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC5E4B0


; =============== S U B R O U T I N E =======================================


sub_FFC5E4EA:                           ; CODE XREF: sub_FFC5BD60+20C↑p
                                        ; sub_FFC5BFA0+CE↑p ...
                move.l  ([$2070],$18),-(sp)
                rts
; End of function sub_FFC5E4EA

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E500:                           ; DATA XREF: ROM:FFC079AC↑o

var_1C          = -$1C
var_18          = -$18
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4

                link    a6,#-$18
                move.l  d3,-(sp)
                move.l  #$2A2A2A2A,var_4(a6)
                move.l  #$736E6877,d0
                lea     var_4(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                tst.w   d0
                sne     d3
                neg.b   d3
                move.l  #$73646576,var_18(a6)
                moveq   #0,d0
                move.l  d0,var_C(a6)
                move.l  d0,var_8(a6)
                move.l  var_4(a6),var_14(a6)
                move.l  #$6170706C,var_10(a6)
                subq.l  #4,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_18(a6)
                moveq   #4,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.l  var_1C(a6),d3
                unlk    a6
                rts
; End of function sub_FFC5E500


; =============== S U B R O U T I N E =======================================


sub_FFC5E55C:                           ; CODE XREF: sub_FFC5CFF0+60↑p
                                        ; sub_FFC5CFF0+132↑p
                move.l  ([$2070],$5C),-(sp)
                rts
; End of function sub_FFC5E55C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E570:                           ; DATA XREF: ROM:FFC079D8↑o

var_A           = -$A
var_1           = -1
arg_0           =  8

                link    a6,#-$A
                clr.b   var_1(a6)
                movea.l ($2B6).w,a0
                tst.w   $128(a0)
                beq.s   loc_FFC5E5A8
                subq.l  #2,sp
                pea     var_A(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                tst.w   (sp)+
                bne.s   loc_FFC5E5A8
                subq.l  #2,sp
                pea     var_A(a6)
                pea     arg_0(a6)
                pea     var_1(a6)
                move.w  #$3D,-(sp) ; '='
                _OSDispatch
                addq.w  #2,sp

loc_FFC5E5A8:                           ; CODE XREF: sub_FFC5E570+10↑j
                                        ; sub_FFC5E570+20↑j
                move.b  var_1(a6),d0
                unlk    a6
                rts
; End of function sub_FFC5E570


; =============== S U B R O U T I N E =======================================


sub_FFC5E5B0:                           ; CODE XREF: sub_FFC5C400+34↑p
                                        ; sub_FFC5C400+64↑p
                move.l  ([$2070],$88),-(sp)
                rts
; End of function sub_FFC5E5B0

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E5C0:                           ; DATA XREF: ROM:FFC079DC↑o

var_10          = -$10
arg_0           =  8

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l ($2B6).w,a0
                movea.l $110(a0),a2
                moveq   #1,d1
                movea.l (a2),a4
                bra.s   loc_FFC5E5E6
; ---------------------------------------------------------------------------

loc_FFC5E5DA:                           ; CODE XREF: sub_FFC5E5C0+28↓j
                cmpa.l  a3,a4
                beq.s   loc_FFC5E5E2
                movea.l (a4),a4
                bra.s   loc_FFC5E5E6
; ---------------------------------------------------------------------------

loc_FFC5E5E2:                           ; CODE XREF: sub_FFC5E5C0+1C↑j
                clr.b   d1
                bra.s   loc_FFC5E5EA
; ---------------------------------------------------------------------------

loc_FFC5E5E6:                           ; CODE XREF: sub_FFC5E5C0+18↑j
                                        ; sub_FFC5E5C0+20↑j
                move.l  a4,d0
                bne.s   loc_FFC5E5DA

loc_FFC5E5EA:                           ; CODE XREF: sub_FFC5E5C0+24↑j
                move.b  d1,d0
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC5E5C0


; =============== S U B R O U T I N E =======================================


sub_FFC5E5F6:                           ; CODE XREF: sub_FFC5BD60+92↑p
                                        ; sub_FFC5BFA0+1E↑p ...
                move.l  ([$2070],$8C),-(sp)
                rts
; End of function sub_FFC5E5F6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E600:                           ; DATA XREF: ROM:FFC07954↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d3/d7/a4,-(sp)
                move.l  arg_4(a6),d7
                movea.l arg_0(a6),a4
                moveq   #4,d0
                and.l   d7,d0
                beq.s   loc_FFC5E61E
                moveq   #0,d0
                move.l  d0,$96(a4)
                bra.s   loc_FFC5E624
; ---------------------------------------------------------------------------

loc_FFC5E61E:                           ; CODE XREF: sub_FFC5E600+14↑j
                moveq   #1,d0
                move.l  d0,$96(a4)

loc_FFC5E624:                           ; CODE XREF: sub_FFC5E600+1C↑j
                andi.l  #3,d7
                moveq   #3,d0
                cmp.l   d7,d0
                seq     d3
                neg.b   d3
                move.b  d3,$A2(a4)
                moveq   #2,d0
                cmp.l   d7,d0
                seq     d3
                neg.b   d3
                move.b  d3,$A3(a4)
                movem.l var_C(a6),d3/d7/a4
                unlk    a6
                rts
; End of function sub_FFC5E600


; =============== S U B R O U T I N E =======================================


sub_FFC5E64C:                           ; CODE XREF: sub_FFC5E6F0+16↓p
                move.l  ([$2070],4),-(sp)
                rts
; End of function sub_FFC5E64C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E660:                           ; DATA XREF: ROM:FFC079B0↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l 4(a0),a4
                tst.b   $A2(a4)
                beq.s   loc_FFC5E67A
                clr.w   $A8(a4)
                bra.s   loc_FFC5E698
; ---------------------------------------------------------------------------

loc_FFC5E67A:                           ; CODE XREF: sub_FFC5E660+12↑j
                move.w  $A0(a4),d2
                muls.w  $A4(a4),d2
                addi.l  #$FE,d2
                move.l  d2,d0
                divu.l  #$FF,d0
                move.l  d0,d2
                move.w  d2,$A8(a4)

loc_FFC5E698:                           ; CODE XREF: sub_FFC5E660+18↑j
                tst.b   $A3(a4)
                beq.s   loc_FFC5E6A4
                clr.w   $AA(a4)
                bra.s   loc_FFC5E6C2
; ---------------------------------------------------------------------------

loc_FFC5E6A4:                           ; CODE XREF: sub_FFC5E660+3C↑j
                move.w  $A0(a4),d2
                muls.w  $A6(a4),d2
                addi.l  #$FE,d2
                move.l  d2,d0
                divu.l  #$FF,d0
                move.l  d0,d2
                move.w  d2,$AA(a4)

loc_FFC5E6C2:                           ; CODE XREF: sub_FFC5E660+42↑j
                move.w  $AA(a4),d0
                ext.l   d0
                moveq   #$10,d1
                lsl.l   d1,d0
                move.w  $A8(a4),d1
                ext.l   d1
                or.l    d0,d1
                move.l  d1,d0
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC5E660


; =============== S U B R O U T I N E =======================================


sub_FFC5E6DE:                           ; CODE XREF: sub_FFC5E6F0+36↓p
                move.l  ([$2070],$60),-(sp)
                rts
; End of function sub_FFC5E6DE

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E6F0:                           ; DATA XREF: ROM:FFC07A08↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l 4(a3),a4
                move.l  arg_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC5E64C
                move.l  #$10000,$9A(a4)
                move.w  #$100,$A4(a4)
                move.w  #$100,$A6(a4)
                move.w  #$FF,$A0(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC5E6DE
                movea.l ($2B6).w,a0
                tst.w   $128(a0)
                lea     $C(sp),sp
                beq.s   loc_FFC5E746
                subq.l  #2,sp
                pea     8(a4)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                addq.w  #2,sp

loc_FFC5E746:                           ; CODE XREF: sub_FFC5E6F0+46↑j
                move.l  a3,$C2(a4)
                lea     $AC(a4),a1
                movea.l a1,a0
                _InsTime
                move.l  a3,-(sp)
                jsr     sub_FFC5E85A
                moveq   #0,d0
                addq.w  #4,sp
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5E6F0


; =============== S U B R O U T I N E =======================================


sub_FFC5E766:                           ; CODE XREF: sub_FFC5BD60+1AC↑p
                move.l  ([$2070],$B8),-(sp)
                rts
; End of function sub_FFC5E766


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E770:                           ; DATA XREF: ROM:FFC07A3C↑o

var_10          = -$10
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                move.w  arg_6(a6),d7
                movea.l 4(a3),a4
                cmp.w   $94(a4),d7
                bne.s   loc_FFC5E78E
                moveq   #0,d0
                bra.s   loc_FFC5E7EA
; ---------------------------------------------------------------------------

loc_FFC5E78E:                           ; CODE XREF: sub_FFC5E770+18↑j
                moveq   #4,d0
                and.w   $9E(a4),d0
                beq.s   loc_FFC5E79C
                move.w  #$FF1D,d6
                bra.s   loc_FFC5E7E8
; ---------------------------------------------------------------------------

loc_FFC5E79C:                           ; CODE XREF: sub_FFC5E770+24↑j
                move.w  d7,d0
                subq.w  #1,d0
                beq.s   loc_FFC5E7AC
                subq.w  #2,d0
                beq.s   loc_FFC5E7AC
                subq.w  #2,d0
                beq.s   loc_FFC5E7E0
                bra.s   loc_FFC5E7DC
; ---------------------------------------------------------------------------

loc_FFC5E7AC:                           ; CODE XREF: sub_FFC5E770+30↑j
                                        ; sub_FFC5E770+34↑j
                moveq   #0,d0
                move.l  d0,$96(a4)
                move.l  a3,-(sp)
                jsr     sub_FFC5E8DE
                cmpi.w  #1,d7
                addq.w  #4,sp
                bne.s   loc_FFC5E7CE
                moveq   #$50,d0 ; 'P'
                move.l  d0,-(sp)
                pea     $128(a4)
                jsr     sub_FFC5E97A
                addq.w  #8,sp

loc_FFC5E7CE:                           ; CODE XREF: sub_FFC5E770+4E↑j
                move.w  #$50,$11C(a4) ; 'P'
                move.w  #$50,$11E(a4) ; 'P'
                bra.s   loc_FFC5E7E0
; ---------------------------------------------------------------------------

loc_FFC5E7DC:                           ; CODE XREF: sub_FFC5E770+3A↑j
                moveq   #$FFFFFFCE,d6
                bra.s   loc_FFC5E7E8
; ---------------------------------------------------------------------------

loc_FFC5E7E0:                           ; CODE XREF: sub_FFC5E770+38↑j
                                        ; sub_FFC5E770+6A↑j
                move.w  d7,$94(a4)
                moveq   #0,d0
                bra.s   loc_FFC5E7EA
; ---------------------------------------------------------------------------

loc_FFC5E7E8:                           ; CODE XREF: sub_FFC5E770+2A↑j
                                        ; sub_FFC5E770+6E↑j
                move.w  d6,d0

loc_FFC5E7EA:                           ; CODE XREF: sub_FFC5E770+1C↑j
                                        ; sub_FFC5E770+76↑j
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC5E770


; =============== S U B R O U T I N E =======================================


sub_FFC5E7F4:                           ; CODE XREF: sub_FFC5BD60+1C6↑p
                                        ; sub_FFC5C110+32↑p ...
                move.l  ([$2070],$EC),-(sp)
                rts
; End of function sub_FFC5E7F4

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E800:                           ; DATA XREF: ROM:FFC07A14↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l 4(a3),a4
                moveq   #$3E,d0 ; '>'
                move.l  d0,$14(a4)
                move.l  $9A(a4),$34(a4)
                move.w  $A8(a4),$38(a4)
                move.w  $AA(a4),$3A(a4)
                move.l  $96(a4),$3C(a4)
                moveq   #0,d1
                move.l  d1,$44(a4)
                lea     sub_FFC5F002(pc),a0
                move.l  a0,$48(a4)
                move.l  a3,$4C(a4)
                clr.w   $50(a4)
                move.l  d1,$40(a4)
                move.l  d1,$30(a4)
                move.l  d1,$18(a4)
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5E800


; =============== S U B R O U T I N E =======================================


sub_FFC5E85A:                           ; CODE XREF: sub_FFC5E6F0+64↑p
                                        ; sub_FFC5EB50+1A↓p ...
                move.l  ([$2070],$C4),-(sp)
                rts
; End of function sub_FFC5E85A

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E870:                           ; DATA XREF: ROM:FFC079C8↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l 4(a0),a4
                moveq   #0,d0
                move.l  d0,$120(a4)
                move.l  d0,$124(a4)
                move.w  $A8(a4),$38(a4)
                move.w  $AA(a4),$3A(a4)
                move.l  $96(a4),$3C(a4)
                lea     sub_FFC5EB44(pc),a0
                move.l  a0,$44(a4)
                move.l  d0,$48(a4)
                move.l  #$10000,$34(a4)
                move.l  #$72617720,$1C(a4)
                move.l  #$56EE8BA3,$24(a4)
                move.w  #8,$22(a4)
                move.w  #1,$20(a4)
                move.l  d0,$28(a4)
                lea     $228(a4),a0
                move.l  a0,$2C(a4)
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC5E870


; =============== S U B R O U T I N E =======================================


sub_FFC5E8DE:                           ; CODE XREF: sub_FFC5E770+44↑p
                move.l  ([$2070],$78),-(sp)
                rts
; End of function sub_FFC5E8DE

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E8F0:                           ; DATA XREF: ROM:FFC07A44↑o

var_18          = -$18
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l d4-d6/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                move.w  #$FF,d0
                and.w   arg_6(a6),d0
                lsr.w   #1,d0
                moveq   #$7F,d1
                sub.w   d0,d1
                lea     dword_FFC62210(pc),a0
                move.w  #$FF,d0
                sub.b   (a0,d1.w),d0
                moveq   #0,d4
                move.b  d0,d4
                cmpi.w  #8,d4
                bge.s   loc_FFC5E922
                moveq   #8,d4

loc_FFC5E922:                           ; CODE XREF: sub_FFC5E8F0+2E↑j
                clr.w   d6
                movea.l a2,a4
                movea.l a4,a3
                lea     $81(a3),a3
                moveq   #$40,d2 ; '@'

loc_FFC5E92E:                           ; CODE XREF: sub_FFC5E8F0:loc_FFC5E958↓j
                lea     dword_FFC62210(pc),a0
                moveq   #0,d0
                move.b  (a0,d6.w),d0
                move.w  #$80,d1
                eor.b   d1,d0
                asr.b   #2,d0
                ext.w   d0
                move.w  #$80,d1
                eor.b   d1,d0
                move.b  d0,d5
                move.b  d5,(a4)+
                move.b  d5,-(a3)
                add.w   d4,d6
                cmpi.w  #$7F,d6
                ble.s   loc_FFC5E958
                moveq   #$7F,d6

loc_FFC5E958:                           ; CODE XREF: sub_FFC5E8F0+64↑j
                dbf     d2,loc_FFC5E92E
                movea.l a2,a3
                movea.l a3,a4
                lea     $80(a4),a4
                moveq   #$1F,d2

loc_FFC5E966:                           ; CODE XREF: sub_FFC5E8F0+7C↓j
                moveq   #$FFFFFFFF,d0
                sub.l   (a3)+,d0
                move.l  d0,(a4)+
                dbf     d2,loc_FFC5E966
                movem.l var_18(a6),d4-d6/a2-a4
                unlk    a6
                rts
; End of function sub_FFC5E8F0


; =============== S U B R O U T I N E =======================================


sub_FFC5E97A:                           ; CODE XREF: sub_FFC5E770+58↑p
                move.l  ([$2070],$F4),-(sp)
                rts
; End of function sub_FFC5E97A

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5E990:                           ; DATA XREF: ROM:FFC07A50↑o

var_1C          = -$1C
arg_0           =  8
arg_6           =  $E
arg_8           =  $10

                link    a6,#-4
                movem.l d3-d7/a3,-(sp)
                moveq   #0,d7
                move.w  arg_6(a6),d0
                ext.l   d0
                moveq   #$10,d1
                lsl.l   d1,d0
                divs.l  #$100,d0
                move.l  d0,d3
                movea.l arg_0(a6),a3
                movea.l arg_8(a6),a1
                move.w  #$FF,d4

loc_FFC5E9BA:                           ; CODE XREF: sub_FFC5E990+74↓j
                move.b  (a1),d6
                moveq   #0,d5
                move.b  1(a1),d5
                ext.w   d6
                sub.w   d6,d5
                move.l  #$FFFF,d0
                and.l   d7,d0
                lsr.l   #1,d0
                muls.w  d5,d0
                move.w  d0,d5
                ext.l   d5
                moveq   #$F,d0
                move.l  d5,d1
                asr.l   d0,d1
                add.b   d1,d6
                ext.w   d6
                move.w  #$80,d0
                move.w  d6,d1
                eor.w   d0,d1
                asr.b   #2,d1
                ext.w   d1
                move.w  #$80,d0
                eor.w   d0,d1
                move.b  d1,(a3)+
                add.l   d3,d7
                moveq   #$10,d0
                move.l  d7,d1
                asr.l   d0,d1
                adda.l  d1,a1
                andi.l  #$FFFF,d7
                dbf     d4,loc_FFC5E9BA
                movem.l var_1C(a6),d3-d7/a3
                unlk    a6
                rts
; End of function sub_FFC5E990

; ---------------------------------------------------------------------------
                move.l  ([$2070],$100),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5EA20:                           ; DATA XREF: ROM:FFC07A18↑o

var_4           = -4
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l 4(a0),a4
                subq.l  #4,sp
                move.l  #$50FBA,-(sp)
                move.w  arg_6(a6),d0
                ext.l   d0
                moveq   #$45,d1 ; 'E'
                sub.l   d1,d0
                move.l  d0,-(sp)
                jsr     sub_FFC5F736
                addq.l  #4,sp
                move.l  d0,-(sp)
                _FixMul
                move.l  (sp)+,$120(a4)
                move.w  $A8(a4),$38(a4)
                move.w  $AA(a4),$3A(a4)
                move.l  $96(a4),$3C(a4)
                moveq   #0,d0
                move.l  d0,$28(a4)
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFC5EA20

; ---------------------------------------------------------------------------
                move.l  ([$2070],$C8),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5EA80:                           ; DATA XREF: ROM:FFC079F8↑o

var_26          = -$26
arg_0           =  8
arg_4           =  $C

                link    a6,#-6
                movem.l d3-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                movea.l $38(a0),a4
                movea.l 4(a4),a2
                move.l  #$FF0000,d5
                moveq   #1,d3
                move.w  $92(a2),d0
                bmi.w   loc_FFC5EB32
                cmpi.w  #4,d0
                bgt.w   loc_FFC5EB32
                add.w   d0,d0
                move.w  word_FFC5EAB8(pc,d0.w),d0
                jmp     (pc,d0.w)
; ---------------------------------------------------------------------------
word_FFC5EAB8:  dc.w $78                ; DATA XREF: sub_FFC5EA80+30↑r
                dc.w $7C
                dc.l $C000C, $70302A, $11EB06A, $11C6718, $302A011E, $48C02F00
                dc.l $486A0128, $4EBAFEA0, $356A011E, $11C504F, $2E2A0124
                dc.l $282A0120, $49EA0128, $47EA0228, $3C3C01FF, $2005C087
                dc.l $7210E2A8, $16F40000, $DE842005, $C0877210, $E2A816F4
                dc.l $DE84, $51CEFFE2, $25470124, $257C0000, $4000028
                dc.l $600E426A, $924203, $60064203
; ---------------------------------------------------------------------------
                bra.s   loc_FFC5EB34
; ---------------------------------------------------------------------------

loc_FFC5EB32:                           ; CODE XREF: sub_FFC5EA80+22↑j
                                        ; sub_FFC5EA80+2A↑j
                clr.b   d3

loc_FFC5EB34:                           ; CODE XREF: sub_FFC5EA80+B0↑j
                move.b  d3,arg_4(a6)
                movem.l var_26(a6),d3-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5EA80


; =============== S U B R O U T I N E =======================================


sub_FFC5EB44:                           ; DATA XREF: sub_FFC5E870+2A↑o
                move.l  ([$2070],$A8),-(sp)
                rts
; End of function sub_FFC5EB44

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5EB50:                           ; DATA XREF: ROM:FFC07A40↑o

var_1C          = -$1C
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a0
                movea.l 4(a0),a4
                clr.w   d7
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC5E85A
                move.b  $14(a3),d0
                addq.w  #4,sp
                beq.s   loc_FFC5EB84
                subi.b  #$FE,d0
                beq.s   loc_FFC5EBB4
                subq.b  #1,d0
                beq.s   loc_FFC5EBEC
                bra.w   loc_FFC5EC2A
; ---------------------------------------------------------------------------

loc_FFC5EB84:                           ; CODE XREF: sub_FFC5EB50+24↑j
                move.w  #8,$22(a4)
                move.l  8(a3),$24(a4)
                move.w  #1,$20(a4)
                move.l  4(a3),$28(a4)
                clr.w   d6
                tst.l   (a3)
                bne.s   loc_FFC5EBAE
                lea     $16(a3),a0
                move.l  a0,$2C(a4)
                bra.w   loc_FFC5EC32
; ---------------------------------------------------------------------------

loc_FFC5EBAE:                           ; CODE XREF: sub_FFC5EB50+50↑j
                move.l  (a3),$2C(a4)
                bra.s   loc_FFC5EC32
; ---------------------------------------------------------------------------

loc_FFC5EBB4:                           ; CODE XREF: sub_FFC5EB50+2A↑j
                movea.l a3,a2
                move.l  $28(a2),$1C(a4)
                move.w  $3E(a2),$22(a4)
                move.l  8(a2),$24(a4)
                move.w  6(a2),$20(a4)
                move.l  $16(a2),$28(a4)
                move.w  $38(a2),d6
                tst.l   (a2)
                bne.s   loc_FFC5EBE6
                lea     $40(a2),a0
                move.l  a0,$2C(a4)
                bra.s   loc_FFC5EC32
; ---------------------------------------------------------------------------

loc_FFC5EBE6:                           ; CODE XREF: sub_FFC5EB50+8A↑j
                move.l  (a2),$2C(a4)
                bra.s   loc_FFC5EC32
; ---------------------------------------------------------------------------

loc_FFC5EBEC:                           ; CODE XREF: sub_FFC5EB50+2E↑j
                movea.l a3,a1
                move.w  $30(a1),$22(a4)
                moveq   #8,d0
                cmp.w   $22(a4),d0
                ble.s   loc_FFC5EC02
                move.w  #8,$22(a4)

loc_FFC5EC02:                           ; CODE XREF: sub_FFC5EB50+AA↑j
                move.l  8(a1),$24(a4)
                move.w  6(a1),$20(a4)
                move.l  $16(a1),$28(a4)
                clr.w   d6
                tst.l   (a1)
                bne.s   loc_FFC5EC24
                lea     $40(a1),a0
                move.l  a0,$2C(a4)
                bra.s   loc_FFC5EC32
; ---------------------------------------------------------------------------

loc_FFC5EC24:                           ; CODE XREF: sub_FFC5EB50+C8↑j
                move.l  (a1),$2C(a4)
                bra.s   loc_FFC5EC32
; ---------------------------------------------------------------------------

loc_FFC5EC2A:                           ; CODE XREF: sub_FFC5EB50+30↑j
                move.w  #$FF21,d7
                bra.w   loc_FFC5ED00
; ---------------------------------------------------------------------------

loc_FFC5EC32:                           ; CODE XREF: sub_FFC5EB50+5A↑j
                                        ; sub_FFC5EB50+62↑j ...
                moveq   #2,d0
                cmp.w   $20(a4),d0
                bge.s   loc_FFC5EC42
                move.w  #$FF32,d7
                bra.w   loc_FFC5ED00
; ---------------------------------------------------------------------------

loc_FFC5EC42:                           ; CODE XREF: sub_FFC5EB50+E8↑j
                moveq   #$14,d0
                move.l  d0,$DC(a4)
                move.l  a1,-(sp)
                subq.l  #2,sp
                move.w  d6,-(sp)
                move.l  $1C(a4),-(sp)
                move.w  $20(a4),-(sp)
                move.w  $22(a4),-(sp)
                pea     $DC(a4)
                move.l  #$7100018,d0
                _SoundDispatch
                move.w  (sp)+,d0
                movea.l (sp)+,a1
                move.w  d0,d7
                bne.w   loc_FFC5ED00
                move.l  $E0(a4),$1C(a4)
                moveq   #0,d0
                move.w  $E6(a4),d0
                cmpi.w  #1,d0
                bls.s   loc_FFC5EC94
                moveq   #0,d0
                move.w  $E6(a4),d0
                tst.l   d0
                muls.l  $28(a4),d0
                move.l  d0,$28(a4)

loc_FFC5EC94:                           ; CODE XREF: sub_FFC5EB50+130↑j
                move.l  $2C(a4),$2C(a4)
                move.l  $2C(a4),$C6(a4)
                move.l  $28(a4),$D2(a4)
                moveq   #0,d0
                move.b  $15(a3),d0
                move.w  d0,$D6(a4)
                move.l  $10(a3),d0
                sub.l   $C(a3),d0
                moveq   #2,d1
                cmp.l   d0,d1
                bcc.s   loc_FFC5ECF6
                move.l  $10(a3),d0
                cmp.l   $C(a3),d0
                bls.s   loc_FFC5ECF6
                move.l  a1,-(sp)
                pea     $DC(a4)
                move.l  $C(a3),-(sp)
                jsr     sub_FFC5F2F0
                addq.l  #8,sp
                movea.l (sp)+,a1
                move.l  d0,$CA(a4)
                move.l  a1,-(sp)
                pea     $DC(a4)
                move.l  $10(a3),-(sp)
                jsr     sub_FFC5F2F0
                addq.l  #8,sp
                movea.l (sp)+,a1
                move.l  d0,$CE(a4)
                bra.s   loc_FFC5ED00
; ---------------------------------------------------------------------------

loc_FFC5ECF6:                           ; CODE XREF: sub_FFC5EB50+16C↑j
                                        ; sub_FFC5EB50+176↑j
                moveq   #0,d0
                move.l  d0,$CA(a4)
                move.l  d0,$CE(a4)

loc_FFC5ED00:                           ; CODE XREF: sub_FFC5EB50+DE↑j
                                        ; sub_FFC5EB50+EE↑j ...
                move.w  d7,d0
                movem.l var_1C(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC5EB50

; ---------------------------------------------------------------------------
                move.l  ([$2070],$F0),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5ED20:                           ; DATA XREF: ROM:FFC07B2C↑o

var_1A          = -$1A
var_12          = -$12
var_E           = -$E
var_A           = -$A
var_6           = -6
var_2           = -2
arg_0           =  8

                link    a6,#-$12
                movem.l d7/a4,-(sp)
                subq.l  #2,sp
                pea     var_6(a6)
                move.l  #$22C0018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                bne.w   loc_FFC5EE1E
                tst.l   var_6(a6)
                bne.s   loc_FFC5ED4A
                move.w  #$FF37,d0
                bra.w   loc_FFC5EE20
; ---------------------------------------------------------------------------

loc_FFC5ED4A:                           ; CODE XREF: sub_FFC5ED20+20↑j
                subq.l  #2,sp
                pea     var_6(a6)
                move.l  #$2240018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                bne.w   loc_FFC5EE1E
                tst.l   var_6(a6)
                bne.s   loc_FFC5ED6C
                move.w  #$FF37,d0
                bra.w   loc_FFC5EE20
; ---------------------------------------------------------------------------

loc_FFC5ED6C:                           ; CODE XREF: sub_FFC5ED20+42↑j
                jsr     sub_FFC5EEBA
                move.l  d0,var_A(a6)
                beq.s   loc_FFC5ED92
                movea.l var_A(a6),a0
                movea.l 4(a0),a4
                tst.w   $118(a4)
                bne.s   loc_FFC5EDB8
                lea     $F0(a4),a1
                movea.l a1,a0
                _NMRemove
                clr.w   $F4(a4)
                bra.s   loc_FFC5EDB8
; ---------------------------------------------------------------------------

loc_FFC5ED92:                           ; CODE XREF: sub_FFC5ED20+54↑j
                subq.l  #2,sp
                pea     var_A(a6)
                moveq   #0,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                pea     sub_FFC5EF88(pc)
                _SndNewChannel
                move.w  (sp)+,d7
                bne.s   loc_FFC5EE1E
                movea.l var_A(a6),a0
                movea.l 4(a0),a4
                ori.w   #2,$9E(a4)

loc_FFC5EDB8:                           ; CODE XREF: sub_FFC5ED20+62↑j
                                        ; sub_FFC5ED20+70↑j
                subq.l  #4,sp
                move.l  (a4),-(sp)
                move.l  $10(a4),-(sp)
                move.l  #$686D7574,-(sp)
                pea     var_2(a6)
                move.l  #$C0103,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7
                bne.s   loc_FFC5EDE6
                tst.w   var_2(a6)
                beq.s   loc_FFC5EDE6
                move.w  #$FF37,d7
                bra.s   loc_FFC5EE10
; ---------------------------------------------------------------------------

loc_FFC5EDE6:                           ; CODE XREF: sub_FFC5ED20+B8↑j
                                        ; sub_FFC5ED20+BE↑j
                move.w  #$2E,var_12(a6) ; '.'
                move.l  var_6(a6),var_E(a6)
                pea     var_12(a6)
                move.l  var_A(a6),-(sp)
                jsr     sub_FFC5DF84
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFC5EE10
                movea.l arg_0(a6),a0
                move.l  var_A(a6),(a0)
                moveq   #0,d0
                bra.s   loc_FFC5EE20
; ---------------------------------------------------------------------------

loc_FFC5EE10:                           ; CODE XREF: sub_FFC5ED20+C4↑j
                                        ; sub_FFC5ED20+E2↑j
                subq.l  #2,sp
                move.l  var_A(a6),-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                _SndDisposeChannel
                addq.w  #2,sp

loc_FFC5EE1E:                           ; CODE XREF: sub_FFC5ED20+18↑j
                                        ; sub_FFC5ED20+3A↑j ...
                move.w  d7,d0

loc_FFC5EE20:                           ; CODE XREF: sub_FFC5ED20+26↑j
                                        ; sub_FFC5ED20+48↑j ...
                movem.l var_1A(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC5ED20


; =============== S U B R O U T I N E =======================================


sub_FFC5EE2A:                           ; CODE XREF: sub_FFC5BB50+AC↑p
                move.l  ([$2070],$1DC),-(sp)
                rts
; End of function sub_FFC5EE2A

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5EE40:                           ; DATA XREF: ROM:FFC07B30↑o

var_12          = -$12
var_A           = -$A
var_6           = -6
var_1           = -1

                link    a6,#-$A
                movem.l a3-a4,-(sp)
                movea.l ($2B6).w,a0
                tst.w   $128(a0)
                bne.s   loc_FFC5EE56
                moveq   #0,d0
                bra.s   loc_FFC5EEB0
; ---------------------------------------------------------------------------

loc_FFC5EE56:                           ; CODE XREF: sub_FFC5EE40+10↑j
                moveq   #0,d0
                move.l  d0,var_A(a6)
                move.l  d0,var_6(a6)
                subq.l  #2,sp
                pea     var_A(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                movea.l ($2B6).w,a0
                movea.l $110(a0),a0
                movea.l (a0),a4
                addq.w  #2,sp
                bra.s   loc_FFC5EEAA
; ---------------------------------------------------------------------------

loc_FFC5EE7A:                           ; CODE XREF: sub_FFC5EE40+6C↓j
                movea.l 4(a4),a3
                moveq   #2,d0
                and.w   $9E(a3),d0
                beq.s   loc_FFC5EEA8
                subq.l  #2,sp
                pea     var_A(a6)
                pea     8(a3)
                pea     var_1(a6)
                move.w  #$3D,-(sp) ; '='
                _OSDispatch
                tst.w   (sp)+
                beq.s   loc_FFC5EEA2
                clr.b   var_1(a6)

loc_FFC5EEA2:                           ; CODE XREF: sub_FFC5EE40+5C↑j
                tst.b   var_1(a6)
                bne.s   loc_FFC5EEAE

loc_FFC5EEA8:                           ; CODE XREF: sub_FFC5EE40+44↑j
                movea.l (a4),a4

loc_FFC5EEAA:                           ; CODE XREF: sub_FFC5EE40+38↑j
                move.l  a4,d0
                bne.s   loc_FFC5EE7A

loc_FFC5EEAE:                           ; CODE XREF: sub_FFC5EE40+66↑j
                move.l  a4,d0

loc_FFC5EEB0:                           ; CODE XREF: sub_FFC5EE40+14↑j
                movem.l var_12(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5EE40


; =============== S U B R O U T I N E =======================================


sub_FFC5EEBA:                           ; CODE XREF: sub_FFC5ED20:loc_FFC5ED6C↑p
                move.l  ([$2070],$1E0),-(sp)
                rts
; End of function sub_FFC5EEBA

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5EED0:                           ; DATA XREF: ROM:FFC07B34↑o

arg_0           =  8

                link    a6,#0
                subq.l  #2,sp
                movea.l arg_0(a6),a0
                move.l  $20(a0),-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                _SndDisposeChannel
                unlk    a6
                rtd     #4
; End of function sub_FFC5EED0


; =============== S U B R O U T I N E =======================================


sub_FFC5EEEA:                           ; DATA XREF: sub_FFC5EF00+46↓o
                move.l  ([$2070],$1E4),-(sp)
                rts
; End of function sub_FFC5EEEA

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5EF00:                           ; DATA XREF: ROM:FFC07B38↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l arg_4(a6),a3
                movea.l 4(a3),a4
                subq.w  #1,$118(a4)
                moveq   #1,d0
                cmp.w   $118(a4),d0
                ble.s   loc_FFC5EF5C
                tst.w   $F4(a4)
                beq.s   loc_FFC5EF2E
                lea     $F0(a4),a1
                movea.l a1,a0
                _NMRemove

loc_FFC5EF2E:                           ; CODE XREF: sub_FFC5EF00+24↑j
                move.w  #8,$F4(a4)
                clr.w   $FE(a4)
                moveq   #0,d0
                move.l  d0,$100(a4)
                move.l  d0,$104(a4)
                move.l  d0,$108(a4)
                lea     sub_FFC5EEEA(pc),a0
                move.l  a0,$10C(a4)
                move.l  a3,$110(a4)
                lea     $F0(a4),a1
                movea.l a1,a0
                _NMInstall
                bra.s   loc_FFC5EF7C
; ---------------------------------------------------------------------------

loc_FFC5EF5C:                           ; CODE XREF: sub_FFC5EF00+1E↑j
                movea.l $114(a4),a0
                move.l  (a0),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC5D7EC
                move.w  #$D,(a2)
                subq.l  #2,sp
                move.l  a3,-(sp)
                move.l  a2,-(sp)
                moveq   #0,d0
                move.b  d0,-(sp)
                _SndDoCommand
                lea     $A(sp),sp

loc_FFC5EF7C:                           ; CODE XREF: sub_FFC5EF00+5A↑j
                movem.l var_C(a6),a2-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC5EF00


; =============== S U B R O U T I N E =======================================


sub_FFC5EF88:                           ; DATA XREF: sub_FFC5ED20+80↑o
                move.l  ([$2070],$1E8),-(sp)
                rts
; End of function sub_FFC5EF88

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5EFA0:                           ; DATA XREF: ROM:FFC07A60↑o

var_14          = -$14
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l (a2),a0
                movea.l $38(a0),a3
                movea.l 4(a3),a4
                clr.w   $92(a4)
                andi.w  #$FFFB,$9E(a4)
                ori.w   #$40,$9E(a4) ; '@'
                moveq   #0,d0
                move.l  d0,$D8(a4)
                clr.b   d7
                move.l  a3,-(sp)
                jsr     sub_FFC5D850
                move.w  d0,d6
                addq.w  #4,sp
                bne.s   loc_FFC5EFEC
                tst.l   $D8(a4)
                beq.s   loc_FFC5EFEC
                moveq   #1,d7
                move.l  $D8(a4),(a2)
                moveq   #0,d0
                move.l  d0,$D8(a4)

loc_FFC5EFEC:                           ; CODE XREF: sub_FFC5EFA0+38↑j
                                        ; sub_FFC5EFA0+3E↑j
                andi.w  #$FFBF,$9E(a4)
                move.b  d7,arg_4(a6)
                movem.l var_14(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5EFA0


; =============== S U B R O U T I N E =======================================


sub_FFC5F002:                           ; DATA XREF: sub_FFC5E800+34↑o
                move.l  ([$2070],$110),-(sp)
                rts
; End of function sub_FFC5F002

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F010:                           ; DATA XREF: ROM:FFC07A80↑o

var_8           = -8

                link    a6,#0
                movem.l a3-a4,-(sp)
                move.l  a1,d0
                movea.l d0,a3
                movea.l $16(a3),a0
                movea.l 4(a0),a4
                andi.w  #$FFF3,$9E(a4)
                movea.l $16(a3),a0
                moveq   #0,d0
                move.w  $14(a0),d0
                moveq   #$28,d1 ; '('
                cmp.l   d0,d1
                bne.s   loc_FFC5F050
                moveq   #2,d0
                cmp.w   $92(a4),d0
                beq.s   loc_FFC5F04A
                moveq   #3,d0
                cmp.w   $92(a4),d0
                bne.s   loc_FFC5F050

loc_FFC5F04A:                           ; CODE XREF: sub_FFC5F010+30↑j
                move.w  #4,$92(a4)

loc_FFC5F050:                           ; CODE XREF: sub_FFC5F010+28↑j
                                        ; sub_FFC5F010+38↑j
                move.l  $16(a3),-(sp)
                jsr     sub_FFC5D850
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5F010


; =============== S U B R O U T I N E =======================================


sub_FFC5F062:                           ; DATA XREF: sub_FFC5F0C0+16↓o
                move.l  ([$2070],$130),-(sp)
                rts
; End of function sub_FFC5F062

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F070:                           ; DATA XREF: ROM:FFC0795C↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l 4(a0),a3
                andi.w  #$FFF7,$9E(a3)
                lea     $AC(a3),a4
                move.w  4(a4),d0
                ext.l   d0
                and.w   #$8000,d0
                beq.s   loc_FFC5F09E
                movea.l a4,a0
                _RmvTime
                movea.l a4,a0
                _InsTime

loc_FFC5F09E:                           ; CODE XREF: sub_FFC5F070+24↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5F070


; =============== S U B R O U T I N E =======================================


sub_FFC5F0A8:                           ; CODE XREF: sub_FFC5F0C0+12↓p
                move.l  ([$2070],$C),-(sp)
                rts
; End of function sub_FFC5F0A8

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F0C0:                           ; DATA XREF: ROM:FFC07A38↑o

var_8           = -8
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l 4(a3),a4
                move.l  a3,-(sp)
                jsr     sub_FFC5F0A8
                lea     sub_FFC5F062(pc),a0
                move.l  a0,$B2(a4)
                moveq   #0,d0
                move.l  d0,$B6(a4)
                move.l  d0,$BA(a4)
                move.l  d0,$BE(a4)
                lea     $AC(a4),a1
                movea.l a1,a0
                moveq   #0,d1
                move.w  arg_6(a6),d1
                tst.l   d1
                muls.l  #$FFFFFE0C,d1
                move.l  d1,d0
                _PrimeTime
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5F0C0

; ---------------------------------------------------------------------------
                move.l  ([$2070],$E8),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F120:                           ; DATA XREF: ROM:FFC07A10↑o

var_8           = -8
arg_0           =  8
arg_6           =  $E

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l 4(a0),a4
                move.w  $A8(a4),$38(a4)
                move.w  $AA(a4),$3A(a4)
                move.l  $96(a4),$3C(a4)
                moveq   #0,d0
                move.l  d0,$48(a4)
                lea     sub_FFC5F2AE(pc),a0
                move.l  a0,$44(a4)
                move.l  $C6(a4),$2C(a4)
                move.w  arg_6(a6),d0
                ext.l   d0
                move.w  $D6(a4),d1
                ext.l   d1
                sub.l   d1,d0
                move.l  d0,-(sp)
                jsr     sub_FFC5F736
                move.l  d0,d7
                cmpi.l  #$10000,$9A(a4)
                addq.w  #4,sp
                beq.s   loc_FFC5F184
                subq.l  #4,sp
                move.l  d7,-(sp)
                move.l  $9A(a4),-(sp)
                _FixMul
                move.l  (sp)+,d7

loc_FFC5F184:                           ; CODE XREF: sub_FFC5F120+56↑j
                move.l  d7,$34(a4)
                tst.l   $CE(a4)
                ble.s   loc_FFC5F196
                move.l  $CE(a4),$28(a4)
                bra.s   loc_FFC5F19C
; ---------------------------------------------------------------------------

loc_FFC5F196:                           ; CODE XREF: sub_FFC5F120+6C↑j
                move.l  $D2(a4),$28(a4)

loc_FFC5F19C:                           ; CODE XREF: sub_FFC5F120+74↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC5F120

; ---------------------------------------------------------------------------
                move.l  ([$2070],$C0),-(sp)
                rts

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F1B0:                           ; DATA XREF: ROM:FFC079F4↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                movea.l $38(a0),a3
                movea.l 4(a3),a4
                move.w  $92(a4),d0
                bmi.w   loc_FFC5F29E
                cmpi.w  #5,d0
                bgt.w   loc_FFC5F29E
                add.w   d0,d0
                move.w  word_FFC5F1E0(pc,d0.w),d0
                jmp     (pc,d0.w)
; ---------------------------------------------------------------------------
word_FFC5F1E0:  dc.w $BA                ; DATA XREF: sub_FFC5F1B0+28↑r
                dc.w $C0
                dc.l $E0016, $5E00B2, $397C0003, $9260D2, $4AAC00CE, $6F3C486C
                dc.l $DC2F2C, $CA4EBA, $BCD0AC, $C62940, $2C202C, $CE90AC
                dc.l $CA2940, $28486C, $DC2F2C, $284EBA, $CC2940, $281D7C
                dc.l $1000C, $4FEF0010, $606C426C, $92608A, $4AAC00CE
                dc.l $6F46486C, $DC202C, $CE5280, $2F004EBA, $70D0AC, $C62940
                dc.l $2C202C, $D290AC, $CE2940, $28486C, $DC2F2C, $284EBA
                dc.l $802940, $28397C, $50092, $1D7C0001, $C4FEF, $10601A
                dc.l $426C0092, $6000FF38, $426C0092, $6000FF30, $422E000C
; ---------------------------------------------------------------------------
                bra.s   loc_FFC5F2A2
; ---------------------------------------------------------------------------

loc_FFC5F29E:                           ; CODE XREF: sub_FFC5F1B0+1A↑j
                                        ; sub_FFC5F1B0+22↑j
                clr.b   arg_4(a6)

loc_FFC5F2A2:                           ; CODE XREF: sub_FFC5F1B0+EC↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5F1B0


; =============== S U B R O U T I N E =======================================


sub_FFC5F2AE:                           ; DATA XREF: sub_FFC5F120+28↑o
                move.l  ([$2070],$A4),-(sp)
                rts
; End of function sub_FFC5F2AE

; ---------------------------------------------------------------------------
                align 4
                link    a6,#0
                movea.l $C(a6),a1
                moveq   #0,d0
                move.w  $A(a1),d0
                move.l  8(a6),d1
                divu.l  d0,d1
                moveq   #0,d0
                move.w  $E(a1),d0
                tst.l   d0
                muls.l  d1,d0
                unlk    a6
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F2F0:                           ; CODE XREF: sub_FFC5EB50+182↑p
                                        ; sub_FFC5EB50+198↑p

arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  arg_0(a6),d2
                movea.l arg_4(a6),a1
                moveq   #0,d0
                move.w  $A(a1),d0
                moveq   #1,d1
                cmp.l   d0,d1
                bne.s   loc_FFC5F30C
                move.l  d2,d0
                bra.s   loc_FFC5F324
; ---------------------------------------------------------------------------

loc_FFC5F30C:                           ; CODE XREF: sub_FFC5F2F0+16↑j
                moveq   #0,d0
                move.w  $A(a1),d0
                move.l  d2,d1
                divu.l  d0,d1
                moveq   #0,d0
                move.w  $A(a1),d0
                tst.l   d0
                muls.l  d1,d0

loc_FFC5F324:                           ; CODE XREF: sub_FFC5F2F0+1A↑j
                unlk    a6
                rts
; End of function sub_FFC5F2F0

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F330:                           ; DATA XREF: ROM:FFC07A0C↑o

var_1C          = -$1C
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l d5-d7/a2-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a0
                movea.l 4(a0),a4
                clr.w   d5
                moveq   #2,d0
                cmp.w   (a3),d0
                bge.s   loc_FFC5F354
                move.w  #$FF32,d5
                bra.w   loc_FFC5F40C
; ---------------------------------------------------------------------------

loc_FFC5F354:                           ; CODE XREF: sub_FFC5F330+1A↑j
                lea     $52(a4),a0
                movea.l a3,a1
                moveq   #5,d0

loc_FFC5F35C:                           ; CODE XREF: sub_FFC5F330+2E↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC5F35C
                move.l  $5E(a4),$5E(a4)
                move.l  $62(a4),$62(a4)
                move.l  $66(a4),$66(a4)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFC5E85A
                lea     sub_FFC5F6A6(pc),a0
                move.l  a0,$44(a4)
                lea     sub_FFC5F51C(pc),a0
                move.l  a0,$48(a4)
                move.l  8(a3),$24(a4)
                move.w  2(a3),$22(a4)
                move.w  (a3),$20(a4)
                moveq   #$14,d0
                move.l  d0,$DC(a4)
                subq.l  #2,sp
                move.w  4(a3),-(sp)
                move.l  $18(a3),-(sp)
                move.w  (a3),-(sp)
                move.w  2(a3),-(sp)
                pea     $DC(a4)
                move.l  #$7100018,d0
                _SoundDispatch
                move.w  (sp)+,d5
                addq.w  #4,sp
                bne.s   loc_FFC5F40C
                move.l  $E0(a4),$1C(a4)
                cmpi.l  #$72617720,$1C(a4)
                bne.s   loc_FFC5F3DC
                move.l  #$80808080,d6
                bra.s   loc_FFC5F3DE
; ---------------------------------------------------------------------------

loc_FFC5F3DC:                           ; CODE XREF: sub_FFC5F330+A2↑j
                moveq   #0,d6

loc_FFC5F3DE:                           ; CODE XREF: sub_FFC5F330+AA↑j
                moveq   #0,d0
                move.w  $EA(a4),d0
                move.l  #$400,d1
                divs.l  d0,d1
                move.l  d1,$11C(a4)
                moveq   #0,d0
                move.l  d0,$120(a4)
                lea     $12C(a4),a2
                move.w  #$FF,d7

loc_FFC5F400:                           ; CODE XREF: sub_FFC5F330+D2↓j
                move.l  d6,(a2)+
                dbf     d7,loc_FFC5F400
                moveq   #0,d0
                move.l  d0,$28(a4)

loc_FFC5F40C:                           ; CODE XREF: sub_FFC5F330+20↑j
                                        ; sub_FFC5F330+92↑j
                move.w  d5,d0
                movem.l var_1C(a6),d5-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC5F330

; ---------------------------------------------------------------------------
                move.l  ([$2070],$BC),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F430:                           ; DATA XREF: ROM:FFC07A48↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_0(a6),a4
                cmpi.l  #$72617720,$1C(a4)
                beq.s   loc_FFC5F454
                cmpi.l  #$74776F73,$1C(a4)
                bne.s   loc_FFC5F45A

loc_FFC5F454:                           ; CODE XREF: sub_FFC5F430+18↑j
                move.l  (a3),$28(a4)
                bra.s   loc_FFC5F46A
; ---------------------------------------------------------------------------

loc_FFC5F45A:                           ; CODE XREF: sub_FFC5F430+22↑j
                moveq   #0,d0
                move.w  $E6(a4),d0
                tst.l   d0
                muls.l  (a3),d0
                move.l  d0,$28(a4)

loc_FFC5F46A:                           ; CODE XREF: sub_FFC5F430+28↑j
                lea     $10(a3),a0
                move.l  a0,$2C(a4)
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5F430


; =============== S U B R O U T I N E =======================================


sub_FFC5F47C:                           ; CODE XREF: sub_FFC5F530+58↓p
                                        ; sub_FFC5F530+66↓p ...
                move.l  ([$2070],$F8),-(sp)
                rts
; End of function sub_FFC5F47C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F490:                           ; DATA XREF: ROM:FFC07998↑o

var_14          = -$14
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                movea.l $38(a0),a2
                movea.l 4(a2),a4
                lea     $52(a4),a3
                tst.w   $92(a4)
                beq.s   loc_FFC5F4F8
                move.b  #1,$6B(a4)
                move.b  #1,$6E(a4)
                move.w  $92(a4),d0
                subq.w  #6,d0
                bmi.s   loc_FFC5F4E6
                cmpi.w  #3,d0
                bgt.s   loc_FFC5F4E6
                add.w   d0,d0
                move.w  word_FFC5F4D4(pc,d0.w),d0
                jmp     (pc,d0.w)
; ---------------------------------------------------------------------------
word_FFC5F4D4:  dc.w $A                 ; DATA XREF: sub_FFC5F490+3C↑r
                dc.w $A
                dc.l $100010, $226B000C, $6004226B
                dc.b 0, $10
; ---------------------------------------------------------------------------

loc_FFC5F4E6:                           ; CODE XREF: sub_FFC5F490+32↑j
                                        ; sub_FFC5F490+38↑j
                move.l  a1,-(sp)
                move.l  a2,-(sp)
                move.l  a1,-(sp)
                movea.l $14(a3),a0
                jsr     (a0)
                movea.l (sp)+,a1
                clr.w   $92(a4)

loc_FFC5F4F8:                           ; CODE XREF: sub_FFC5F490+1E↑j
                andi.w  #$FFFB,$9E(a4)
                move.l  a1,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC5D850
                addq.l  #4,sp
                movea.l (sp)+,a1
                tst.w   d0
                clr.b   arg_4(a6)
                movem.l var_14(a6),a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5F490


; =============== S U B R O U T I N E =======================================


sub_FFC5F51C:                           ; DATA XREF: sub_FFC5F330+54↑o
                move.l  ([$2070],$48),-(sp)
                rts
; End of function sub_FFC5F51C

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F530:                           ; DATA XREF: ROM:FFC079EC↑o

var_18          = -$18
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                movea.l $38(a0),a0
                move.l  a0,var_8(a6)
                movea.l 4(a0),a3
                lea     $52(a3),a2
                clr.w   d7

loc_FFC5F550:                           ; CODE XREF: sub_FFC5F530+B8↓j
                                        ; sub_FFC5F530+CE↓j ...
                move.w  $92(a3),d0
                beq.w   loc_FFC5F690
                subq.w  #6,d0
                beq.s   loc_FFC5F570
                subq.w  #1,d0
                beq.s   loc_FFC5F5C2
                subq.w  #1,d0
                beq.w   loc_FFC5F602
                subq.w  #1,d0
                beq.w   loc_FFC5F650
                bra.w   loc_FFC5F696
; ---------------------------------------------------------------------------

loc_FFC5F570:                           ; CODE XREF: sub_FFC5F530+2A↑j
                movea.l $C(a2),a4
                move.l  4(a4),d0
                and.l   #1,d0
                beq.s   loc_FFC5F5AC
                tst.l   (a4)
                beq.s   loc_FFC5F590
                move.l  a4,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC5F47C
                addq.w  #8,sp
                bra.s   loc_FFC5F59C
; ---------------------------------------------------------------------------

loc_FFC5F590:                           ; CODE XREF: sub_FFC5F530+52↑j
                pea     $11C(a3)
                move.l  a3,-(sp)
                jsr     sub_FFC5F47C
                addq.w  #8,sp

loc_FFC5F59C:                           ; CODE XREF: sub_FFC5F530+5E↑j
                move.w  #7,$92(a3)
                move.b  #1,arg_4(a6)
                bra.w   loc_FFC5F69A
; ---------------------------------------------------------------------------

loc_FFC5F5AC:                           ; CODE XREF: sub_FFC5F530+4E↑j
                pea     $11C(a3)
                move.l  a3,-(sp)
                jsr     sub_FFC5F47C
                move.b  #1,arg_4(a6)
                addq.w  #8,sp
                bra.w   loc_FFC5F69A
; ---------------------------------------------------------------------------

loc_FFC5F5C2:                           ; CODE XREF: sub_FFC5F530+2E↑j
                movea.l $C(a2),a4
                bclr    #0,7(a4)
                move.l  4(a4),d0
                and.l   #4,d0
                beq.s   loc_FFC5F5EC
                move.l  var_8(a6),-(sp)
                move.l  a4,-(sp)
                movea.l $14(a2),a0
                jsr     (a0)
                clr.w   $92(a3)
                bra.w   loc_FFC5F550
; ---------------------------------------------------------------------------

loc_FFC5F5EC:                           ; CODE XREF: sub_FFC5F530+A6↑j
                move.l  var_8(a6),-(sp)
                move.l  a4,-(sp)
                movea.l $14(a2),a0
                jsr     (a0)
                move.w  #8,$92(a3)
                bra.w   loc_FFC5F550
; ---------------------------------------------------------------------------

loc_FFC5F602:                           ; CODE XREF: sub_FFC5F530+32↑j
                movea.l $10(a2),a4
                move.l  4(a4),d0
                and.l   #1,d0
                beq.s   loc_FFC5F63C
                tst.l   (a4)
                beq.s   loc_FFC5F622
                move.l  a4,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC5F47C
                addq.w  #8,sp
                bra.s   loc_FFC5F62E
; ---------------------------------------------------------------------------

loc_FFC5F622:                           ; CODE XREF: sub_FFC5F530+E4↑j
                pea     $11C(a3)
                move.l  a3,-(sp)
                jsr     sub_FFC5F47C
                addq.w  #8,sp

loc_FFC5F62E:                           ; CODE XREF: sub_FFC5F530+F0↑j
                move.w  #9,$92(a3)
                move.b  #1,arg_4(a6)
                bra.s   loc_FFC5F69A
; ---------------------------------------------------------------------------

loc_FFC5F63C:                           ; CODE XREF: sub_FFC5F530+E0↑j
                pea     $11C(a3)
                move.l  a3,-(sp)
                jsr     sub_FFC5F47C
                move.b  #1,arg_4(a6)
                addq.w  #8,sp
                bra.s   loc_FFC5F69A
; ---------------------------------------------------------------------------

loc_FFC5F650:                           ; CODE XREF: sub_FFC5F530+38↑j
                movea.l $10(a2),a4
                bclr    #0,7(a4)
                move.l  4(a4),d0
                and.l   #4,d0
                beq.s   loc_FFC5F67A
                move.l  var_8(a6),-(sp)
                move.l  a4,-(sp)
                movea.l $14(a2),a0
                jsr     (a0)
                clr.w   $92(a3)
                bra.w   loc_FFC5F550
; ---------------------------------------------------------------------------

loc_FFC5F67A:                           ; CODE XREF: sub_FFC5F530+134↑j
                move.l  var_8(a6),-(sp)
                move.l  a4,-(sp)
                movea.l $14(a2),a0
                jsr     (a0)
                move.w  #6,$92(a3)
                bra.w   loc_FFC5F550
; ---------------------------------------------------------------------------

loc_FFC5F690:                           ; CODE XREF: sub_FFC5F530+24↑j
                clr.b   arg_4(a6)
                bra.s   loc_FFC5F69A
; ---------------------------------------------------------------------------

loc_FFC5F696:                           ; CODE XREF: sub_FFC5F530+3C↑j
                clr.b   arg_4(a6)

loc_FFC5F69A:                           ; CODE XREF: sub_FFC5F530+78↑j
                                        ; sub_FFC5F530+8E↑j ...
                movem.l var_18(a6),d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5F530


; =============== S U B R O U T I N E =======================================


sub_FFC5F6A6:                           ; DATA XREF: sub_FFC5F330+4C↑o
                move.l  ([$2070],$9C),-(sp)
                rts
; End of function sub_FFC5F6A6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F6B0:                           ; DATA XREF: ROM:FFC07A78↑o

var_C           = -$C
arg_2           =  $A

                link    a6,#0
                movem.l d5-d7,-(sp)
                move.w  arg_2(a6),d7
                cmpi.w  #$FF81,d7
                bge.s   loc_FFC5F6C6
                moveq   #$FFFFFF81,d7
                bra.s   loc_FFC5F6CE
; ---------------------------------------------------------------------------

loc_FFC5F6C6:                           ; CODE XREF: sub_FFC5F6B0+10↑j
                cmpi.w  #$7F,d7
                ble.s   loc_FFC5F6CE
                moveq   #$7F,d7

loc_FFC5F6CE:                           ; CODE XREF: sub_FFC5F6B0+14↑j
                                        ; sub_FFC5F6B0+1A↑j
                tst.w   d7
                bge.s   loc_FFC5F6F2
                ext.l   d7
                move.l  d7,d0
                neg.l   d0
                ext.l   d0
                divs.w  #$C,d0
                move.w  d0,d6
                subq.l  #4,sp
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #1,d1
                lsl.l   d6,d1
                move.l  d1,-(sp)
                _FixDiv
                move.l  (sp)+,d5
                bra.s   loc_FFC5F706
; ---------------------------------------------------------------------------

loc_FFC5F6F2:                           ; CODE XREF: sub_FFC5F6B0+20↑j
                move.w  d7,d0
                ext.l   d0
                divs.w  #$C,d0
                move.w  d0,d6
                moveq   #1,d0
                lsl.l   d6,d0
                moveq   #$10,d1
                move.l  d0,d5
                lsl.l   d1,d5

loc_FFC5F706:                           ; CODE XREF: sub_FFC5F6B0+40↑j
                move.w  d7,d0
                ext.l   d0
                divs.w  #$C,d0
                swap    d0
                move.w  d0,d6
                addi.w  #$B,d6
                move.l  d6,d0
                asl.w   #2,d0
                lea     dword_FFC621B0(pc),a0
                move.l  (a0,d0.w),d7
                subq.l  #4,sp
                move.l  d7,-(sp)
                move.l  d5,-(sp)
                _FracMul
                move.l  (sp)+,d0
                movem.l var_C(a6),d5-d7
                unlk    a6
                rts
; End of function sub_FFC5F6B0


; =============== S U B R O U T I N E =======================================


sub_FFC5F736:                           ; CODE XREF: sub_FFC5EA20+22↑p
                                        ; sub_FFC5F120+46↑p
                move.l  ([$2070],$128),-(sp)
                rts
; End of function sub_FFC5F736


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F740:                           ; DATA XREF: ROM:FFC07974↑o

var_14          = -$14
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d3-d7,-(sp)
                move.l  arg_0(a6),d4
                clr.w   d5
                moveq   #1,d7
                moveq   #$1F,d6

loc_FFC5F752:                           ; CODE XREF: sub_FFC5F740+30↓j
                move.l  arg_8(a6),d0
                and.l   d7,d0
                beq.s   loc_FFC5F76E
                move.l  d7,d0
                and.l   arg_4(a6),d0
                move.l  d7,d1
                and.l   d4,d1
                cmp.l   d0,d1
                seq     d3
                neg.b   d3
                ext.w   d3
                add.w   d3,d5

loc_FFC5F76E:                           ; CODE XREF: sub_FFC5F740+18↑j
                lsl.l   #1,d7
                dbf     d6,loc_FFC5F752
                move.w  d5,d0
                movem.l var_14(a6),d3-d7
                unlk    a6
                rts
; End of function sub_FFC5F740


; =============== S U B R O U T I N E =======================================


sub_FFC5F780:                           ; CODE XREF: sub_FFC5F870+98↓p
                move.l  ([$2070],$24),-(sp)
                rts
; End of function sub_FFC5F780

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F790:                           ; DATA XREF: ROM:FFC07958↑o

var_14          = -$14
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-4
                movem.l d7/a2-a4,-(sp)
                movea.l arg_C(a6),a2
                movea.l arg_8(a6),a3
                movea.l arg_0(a6),a4
                move.l  a4,d0
                bne.s   loc_FFC5F7AC
                moveq   #0,d0
                bra.s   loc_FFC5F7FC
; ---------------------------------------------------------------------------

loc_FFC5F7AC:                           ; CODE XREF: sub_FFC5F790+16↑j
                tst.l   (a2)
                bne.s   loc_FFC5F7D2
                move.l  a4,(a2)
                move.l  a4,(a3)
                subq.l  #4,sp
                move.l  a4,-(sp)
                move.l  arg_4(a6),-(sp)
                pea     var_4(a6)
                move.l  #$80005,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFC5F7F0
                moveq   #1,d0
                bra.s   loc_FFC5F7FC
; ---------------------------------------------------------------------------

loc_FFC5F7D2:                           ; CODE XREF: sub_FFC5F790+1E↑j
                subq.l  #4,sp
                move.l  (a3),-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                move.l  #$80002,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFC5F7F0
                move.l  a4,(a3)
                moveq   #1,d0
                bra.s   loc_FFC5F7FC
; ---------------------------------------------------------------------------

loc_FFC5F7F0:                           ; CODE XREF: sub_FFC5F790+3C↑j
                                        ; sub_FFC5F790+58↑j
                subq.l  #2,sp
                move.l  a4,-(sp)
                moveq   #8,d0
                _ComponentDispatch
                moveq   #0,d0
                addq.w  #2,sp

loc_FFC5F7FC:                           ; CODE XREF: sub_FFC5F790+1A↑j
                                        ; sub_FFC5F790+40↑j ...
                movem.l var_14(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC5F790


; =============== S U B R O U T I N E =======================================


sub_FFC5F806:                           ; CODE XREF: sub_FFC5F870+E6↓p
                                        ; sub_FFC5F870+122↓p ...
                move.l  ([$2070],8),-(sp)
                rts
; End of function sub_FFC5F806


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F810:                           ; DATA XREF: ROM:FFC079E8↑o

arg_0           =  8

                link    a6,#0
                movea.l arg_0(a6),a1
                moveq   #8,d0
                cmp.w   $A(a1),d0
                bne.s   loc_FFC5F844
                cmpi.l  #$72617720,4(a1)
                bne.s   loc_FFC5F832
                move.l  #$101,d1
                bra.s   loc_FFC5F84A
; ---------------------------------------------------------------------------

loc_FFC5F832:                           ; CODE XREF: sub_FFC5F810+18↑j
                cmpi.l  #$74776F73,4(a1)
                bne.s   loc_FFC5F84A
                move.l  #$202,d1
                bra.s   loc_FFC5F84A
; ---------------------------------------------------------------------------

loc_FFC5F844:                           ; CODE XREF: sub_FFC5F810+E↑j
                move.l  #$404,d1

loc_FFC5F84A:                           ; CODE XREF: sub_FFC5F810+20↑j
                                        ; sub_FFC5F810+2A↑j ...
                moveq   #2,d0
                cmp.w   8(a1),d0
                bne.s   loc_FFC5F858
                ori.l   #$808,d1

loc_FFC5F858:                           ; CODE XREF: sub_FFC5F810+40↑j
                move.l  d1,d0
                unlk    a6
                rts
; End of function sub_FFC5F810


; =============== S U B R O U T I N E =======================================


sub_FFC5F85E:                           ; CODE XREF: sub_FFC5CC40+7C↑p
                                        ; sub_FFC5CC40+86↑p
                move.l  ([$2070],$98),-(sp)
                rts
; End of function sub_FFC5F85E

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5F870:                           ; DATA XREF: ROM:FFC079B8↑o

var_58          = -$58
var_38          = -$38
var_34          = -$34
var_30          = -$30
var_2C          = -$2C
var_28          = -$28
var_24          = -$24
var_18          = -$18
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20
arg_1C          =  $24
arg_20          =  $28

                link    a6,#-$38
                movem.l d3-d7/a2-a4,-(sp)
                move.l  arg_10(a6),d3
                movea.l arg_14(a6),a2
                movea.l arg_C(a6),a3
                moveq   #0,d0
                movea.l d0,a4
                moveq   #0,d7
                moveq   #0,d4
                move.l  d0,var_8(a6)
                moveq   #$FFFFFFFF,d6
                moveq   #$FFFFFFFF,d5
                move.l  d0,var_4(a6)
                move.l  #$FF00,d1
                and.l   arg_8(a6),d1
                lsr.l   #8,d1
                move.l  d1,var_10(a6)
                move.l  #$FF,d1
                and.l   (a3),d1
                lsl.l   #8,d1
                move.l  d1,var_C(a6)
                move.l  arg_0(a6),var_38(a6)
                move.l  arg_4(a6),var_34(a6)
                move.l  d0,var_30(a6)
                move.l  var_C(a6),d1
                or.l    var_10(a6),d1
                move.l  (a2),d2
                or.l    d1,d2
                move.l  d2,var_2C(a6)
                move.l  var_10(a6),d1
                lsl.l   #8,d1
                and.l   var_C(a6),d1
                or.l    d3,d1
                move.l  d1,var_28(a6)
                bra.s   loc_FFC5F928
; ---------------------------------------------------------------------------

loc_FFC5F8E8:                           ; CODE XREF: sub_FFC5F870+C8↓j
                subq.l  #2,sp
                move.l  a4,-(sp)
                pea     var_24(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.l  var_2C(a6),-(sp)
                move.l  var_2C(a6),-(sp)
                move.l  var_18(a6),-(sp)
                jsr     sub_FFC5F780
                move.w  d0,d6
                cmp.w   d6,d5
                lea     $E(sp),sp
                bge.s   loc_FFC5F928
                move.w  d6,d5
                move.l  var_8(a6),var_4(a6)
                move.l  d7,d4
                move.l  a4,var_8(a6)
                move.l  var_18(a6),d7

loc_FFC5F928:                           ; CODE XREF: sub_FFC5F870+76↑j
                                        ; sub_FFC5F870+A4↑j
                subq.l  #4,sp
                move.l  a4,-(sp)
                pea     var_38(a6)
                moveq   #4,d0
                _ComponentDispatch
                movea.l (sp)+,a4
                move.l  a4,d0
                bne.s   loc_FFC5F8E8
                tst.l   var_8(a6)
                beq.s   loc_FFC5F976
                move.l  arg_20(a6),-(sp)
                move.l  arg_1C(a6),-(sp)
                move.l  arg_18(a6),-(sp)
                subq.l  #4,sp
                move.l  var_8(a6),-(sp)
                moveq   #7,d0
                _ComponentDispatch
                jsr     sub_FFC5F806
                tst.b   d0
                lea     $10(sp),sp
                beq.s   loc_FFC5F976
                move.l  d7,(a3)
                move.l  #$FF0000,d0
                and.l   d7,d0
                not.l   d0
                and.l   d0,(a2)
                moveq   #0,d0
                bra.w   loc_FFC5FA5C
; ---------------------------------------------------------------------------

loc_FFC5F976:                           ; CODE XREF: sub_FFC5F870+CE↑j
                                        ; sub_FFC5F870+F0↑j
                tst.l   var_4(a6)
                beq.s   loc_FFC5F9B2
                move.l  arg_20(a6),-(sp)
                move.l  arg_1C(a6),-(sp)
                move.l  arg_18(a6),-(sp)
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                moveq   #7,d0
                _ComponentDispatch
                jsr     sub_FFC5F806
                tst.b   d0
                lea     $10(sp),sp
                beq.s   loc_FFC5F9B2
                move.l  d4,(a3)
                move.l  #$FF0000,d0
                and.l   d4,d0
                not.l   d0
                and.l   d0,(a2)
                moveq   #0,d0
                bra.w   loc_FFC5FA5C
; ---------------------------------------------------------------------------

loc_FFC5F9B2:                           ; CODE XREF: sub_FFC5F870+10A↑j
                                        ; sub_FFC5F870+12C↑j
                move.l  arg_20(a6),-(sp)
                move.l  arg_1C(a6),-(sp)
                move.l  arg_18(a6),-(sp)
                subq.l  #4,sp
                move.l  #$73696674,-(sp)
                move.l  #$636F6E76,-(sp)
                moveq   #$21,d0 ; '!'
                _ComponentDispatch
                jsr     sub_FFC5F806
                tst.b   d0
                lea     $10(sp),sp
                beq.s   loc_FFC5FA58
                move.w  #$7FF,d6
                bra.s   loc_FFC5FA54
; ---------------------------------------------------------------------------

loc_FFC5F9E2:                           ; CODE XREF: sub_FFC5F870+1E6↓j
                ext.l   d6
                move.l  d6,d0
                and.l   var_28(a6),d0
                move.l  d3,d1
                or.l    d0,d1
                move.l  d1,var_28(a6)
                moveq   #0,d0
                movea.l d0,a4
                bra.s   loc_FFC5FA40
; ---------------------------------------------------------------------------

loc_FFC5F9F8:                           ; CODE XREF: sub_FFC5F870+1E0↓j
                subq.l  #2,sp
                move.l  a4,-(sp)
                pea     var_24(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.l  arg_20(a6),-(sp)
                move.l  arg_1C(a6),-(sp)
                move.l  arg_18(a6),-(sp)
                subq.l  #4,sp
                move.l  a4,-(sp)
                moveq   #7,d0
                _ComponentDispatch
                jsr     sub_FFC5F806
                tst.b   d0
                lea     $12(sp),sp
                beq.s   loc_FFC5FA40
                move.l  var_18(a6),(a3)
                move.l  #$FF0000,d0
                and.l   d7,d0
                not.l   d0
                and.l   d0,(a2)
                moveq   #0,d0
                bra.s   loc_FFC5FA5C
; ---------------------------------------------------------------------------

loc_FFC5FA40:                           ; CODE XREF: sub_FFC5F870+186↑j
                                        ; sub_FFC5F870+1BA↑j
                subq.l  #4,sp
                move.l  a4,-(sp)
                pea     var_38(a6)
                moveq   #4,d0
                _ComponentDispatch
                movea.l (sp)+,a4
                move.l  a4,d0
                bne.s   loc_FFC5F9F8
                asr.w   #1,d6

loc_FFC5FA54:                           ; CODE XREF: sub_FFC5F870+170↑j
                tst.w   d6
                bne.s   loc_FFC5F9E2

loc_FFC5FA58:                           ; CODE XREF: sub_FFC5F870+16A↑j
                move.w  #$FF37,d0

loc_FFC5FA5C:                           ; CODE XREF: sub_FFC5F870+102↑j
                                        ; sub_FFC5F870+13E↑j ...
                movem.l var_58(a6),d3-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC5F870


; =============== S U B R O U T I N E =======================================


sub_FFC5FA66:                           ; CODE XREF: sub_FFC5CC40+C4↑p
                                        ; sub_FFC5CC40+182↑p ...
                move.l  ([$2070],$68),-(sp)
                rts
; End of function sub_FFC5FA66


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FA70:                           ; DATA XREF: ROM:FFC07A70↑o

var_44          = -$44
var_2C          = -$2C
var_28          = -$28

                link    a6,#-$2C
                movem.l d3/d5-d7/a3-a4,-(sp)
                moveq   #0,d5
                clr.w   d6
                movea.l ($2B6).w,a0
                movea.l $110(a0),a0
                movea.l (a0),a3
                bra.s   loc_FFC5FAD6
; ---------------------------------------------------------------------------

loc_FFC5FA88:                           ; CODE XREF: sub_FFC5FA70+68↓j
                movea.l 4(a3),a4
                tst.l   $D8(a4)
                beq.s   loc_FFC5FAD4
                cmpi.w  #$A,d6
                blt.s   loc_FFC5FA9C
                moveq   #0,d7
                bra.s   loc_FFC5FAAE
; ---------------------------------------------------------------------------

loc_FFC5FA9C:                           ; CODE XREF: sub_FFC5FA70+26↑j
                move.w  d6,d0
                addq.w  #1,d6
                asl.w   #2,d0
                move.l  $10(a4),var_28(a6,d0.w)
                moveq   #1,d7
                move.l  (a4),var_2C(a6)

loc_FFC5FAAE:                           ; CODE XREF: sub_FFC5FA70+2A↑j
                subq.l  #4,sp
                move.l  var_2C(a6),-(sp)
                move.l  $10(a4),-(sp)
                move.l  $D8(a4),-(sp)
                move.l  d7,-(sp)
                move.l  #$C0108,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                tst.l   (sp)+
                sne     d3
                neg.b   d3
                moveq   #0,d0
                move.l  d0,$D8(a4)

loc_FFC5FAD4:                           ; CODE XREF: sub_FFC5FA70+20↑j
                movea.l (a3),a3

loc_FFC5FAD6:                           ; CODE XREF: sub_FFC5FA70+16↑j
                move.l  a3,d0
                bne.s   loc_FFC5FA88
                tst.w   d6
                ble.s   loc_FFC5FAF6
                subq.l  #4,sp
                move.l  var_2C(a6),-(sp)
                move.w  d6,-(sp)
                pea     var_28(a6)
                move.l  #$60105,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d5

loc_FFC5FAF6:                           ; CODE XREF: sub_FFC5FA70+6C↑j
                move.w  d5,d0
                movem.l var_44(a6),d3/d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC5FA70

; ---------------------------------------------------------------------------
                move.l  ([$2070],$120),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FB10:                           ; DATA XREF: ROM:FFC07A74↑o

var_10          = -$10
var_4           = -4
arg_2           =  $A

                link    a6,#-4
                movem.l d6-d7/a4,-(sp)
                moveq   #0,d0
                movea.l d0,a4
                clr.b   d7
                move.l  #$726F6D76,d0
                lea     var_4(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                move.w  d0,d6
                bne.s   loc_FFC5FB62
                move.l  var_4(a6),d0
                subi.l  #$75,d0 ; 'u'
                beq.s   loc_FFC5FB48
                subi.l  #$201,d0
                beq.s   loc_FFC5FB50
                bra.s   loc_FFC5FB56
; ---------------------------------------------------------------------------

loc_FFC5FB48:                           ; CODE XREF: sub_FFC5FB10+2C↑j
                movea.l #$4011DC,a4
                bra.s   loc_FFC5FB56
; ---------------------------------------------------------------------------

loc_FFC5FB50:                           ; CODE XREF: sub_FFC5FB10+34↑j
                movea.l #$4029B4,a4

loc_FFC5FB56:                           ; CODE XREF: sub_FFC5FB10+36↑j
                                        ; sub_FFC5FB10+3E↑j
                move.l  a4,d0
                beq.s   loc_FFC5FB62
                move.w  arg_2(a6),-(sp)
                jsr     (a4)
                moveq   #1,d7

loc_FFC5FB62:                           ; CODE XREF: sub_FFC5FB10+20↑j
                                        ; sub_FFC5FB10+48↑j
                move.b  d7,d0
                movem.l var_10(a6),d6-d7/a4
                unlk    a6
                rts
; End of function sub_FFC5FB10


; =============== S U B R O U T I N E =======================================


sub_FFC5FB6E:                           ; CODE XREF: sub_FFC5BB50+72↑p
                                        ; sub_FFC5BB50+96↑p
                move.l  ([$2070],$124),-(sp)
                rts
; End of function sub_FFC5FB6E

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FB80:                           ; DATA XREF: ROM:FFC079BC↑o

var_42          = -$42
var_3E          = -$3E
var_32          = -$32
var_2C          = -$2C
var_28          = -$28
var_26          = -$26
var_22          = -$22
var_A           = -$A
var_4           = -4
arg_2           =  $A
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-$3E
                move.l  d7,-(sp)
                lea     var_3E(a6),a1
                movea.l a1,a0
                moveq   #$3E,d0 ; '>'
                bra.s   loc_FFC5FB92
; ---------------------------------------------------------------------------

loc_FFC5FB90:                           ; CODE XREF: sub_FFC5FB80:loc_FFC5FB92↓j
                clr.b   (a0)+

loc_FFC5FB92:                           ; CODE XREF: sub_FFC5FB80+E↑j
                dbf     d0,loc_FFC5FB90
                moveq   #0,d0
                move.l  d0,var_32(a6)
                move.l  arg_C(a6),var_2C(a6)
                clr.w   var_28(a6)
                move.w  arg_2(a6),var_26(a6)
                clr.w   var_22(a6)
                lea     var_3E(a6),a1
                movea.l a1,a0
                moveq   #8,d0
                _HFSDispatch
                move.w  d0,d7
                beq.s   loc_FFC5FBC2
                move.w  d7,d0
                bra.s   loc_FFC5FBD4
; ---------------------------------------------------------------------------

loc_FFC5FBC2:                           ; CODE XREF: sub_FFC5FB80+3C↑j
                movea.l arg_4(a6),a0
                move.w  var_A(a6),(a0)
                movea.l arg_8(a6),a0
                move.l  var_4(a6),(a0)
                moveq   #0,d0

loc_FFC5FBD4:                           ; CODE XREF: sub_FFC5FB80+40↑j
                move.l  var_42(a6),d7
                unlk    a6
                rts
; End of function sub_FFC5FB80

; ---------------------------------------------------------------------------
                move.l  ([$2070],$6C),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FBF0:                           ; DATA XREF: ROM:FFC07B14↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l d7/a4,-(sp)
                move.l  #$AA,d0
                _NewPtrClear
                movea.l a0,a4
                move.l  a4,d0
                bne.s   loc_FFC5FC10
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.s   loc_FFC5FC5C
; ---------------------------------------------------------------------------

loc_FFC5FC10:                           ; CODE XREF: sub_FFC5FBF0+14↑j
                pea     $3C(a4)
                pea     4(a4)
                move.l  arg_8(a6),-(sp)
                jsr     sub_FFC5FCB0
                move.w  d0,d7
                lea     $C(sp),sp
                bne.s   loc_FFC5FC58
                pea     $50(a4)
                pea     $20(a4)
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFC5FCB0
                move.w  d0,d7
                lea     $C(sp),sp
                bne.s   loc_FFC5FC58
                move.l  a4,-(sp)
                jsr     sub_FFC5FD90
                move.w  d0,d7
                addq.w  #4,sp
                bne.s   loc_FFC5FC58
                movea.l arg_0(a6),a0
                move.l  a4,(a0)
                clr.w   arg_C(a6)
                bra.s   loc_FFC5FC60
; ---------------------------------------------------------------------------

loc_FFC5FC58:                           ; CODE XREF: sub_FFC5FBF0+36↑j
                                        ; sub_FFC5FBF0+4E↑j ...
                movea.l a4,a0
                _DisposePtr

loc_FFC5FC5C:                           ; CODE XREF: sub_FFC5FBF0+1E↑j
                move.w  d7,arg_C(a6)

loc_FFC5FC60:                           ; CODE XREF: sub_FFC5FBF0+66↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC5FBF0

; ---------------------------------------------------------------------------

loc_FFC5FC6C:                           ; CODE XREF: ROM:FFC62550↓j
                move.l  ([$2070],$1C4),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FC80:                           ; DATA XREF: ROM:FFC07B18↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                subq.l  #2,sp
                move.l  $64(a4),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                movea.l a4,a0
                _DisposePtr
                clr.w   arg_4(a6)
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #4
; End of function sub_FFC5FC80

; ---------------------------------------------------------------------------

loc_FFC5FCA6:                           ; CODE XREF: ROM:FFC62554↓j
                move.l  ([$2070],$1C8),-(sp)
                rts

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FCB0:                           ; CODE XREF: sub_FFC5FBF0+2C↑p
                                        ; sub_FFC5FBF0+44↑p

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_8(a6),a3
                movea.l arg_4(a6),a4
                movea.l arg_0(a6),a0
                movea.l a4,a1
                moveq   #6,d0

loc_FFC5FCC8:                           ; CODE XREF: sub_FFC5FCB0+1A↓j
                move.l  (a0)+,(a1)+
                dbf     d0,loc_FFC5FCC8
                moveq   #1,d0
                cmp.w   8(a4),d0
                beq.s   loc_FFC5FCE4
                moveq   #2,d0
                cmp.w   8(a4),d0
                beq.s   loc_FFC5FCE4
                moveq   #$FFFFFFCE,d7
                bra.w   loc_FFC5FD76
; ---------------------------------------------------------------------------

loc_FFC5FCE4:                           ; CODE XREF: sub_FFC5FCB0+24↑j
                                        ; sub_FFC5FCB0+2C↑j
                moveq   #$14,d0
                move.l  d0,(a3)
                subq.l  #2,sp
                moveq   #$FFFFFFFF,d0
                move.w  d0,-(sp)
                move.l  4(a4),-(sp)
                move.w  8(a4),-(sp)
                move.w  $A(a4),-(sp)
                move.l  a3,-(sp)
                move.l  #$7100018,d0
                _SoundDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFC5FD76
                moveq   #0,d0
                move.w  $10(a3),d0
                lsl.l   #3,d0
                move.w  d0,$A(a4)
                moveq   #8,d0
                cmp.w   $A(a4),d0
                beq.s   loc_FFC5FD2A
                moveq   #$10,d0
                cmp.w   $A(a4),d0
                beq.s   loc_FFC5FD2A
                move.w  #$FF1E,d7
                bra.s   loc_FFC5FD76
; ---------------------------------------------------------------------------

loc_FFC5FD2A:                           ; CODE XREF: sub_FFC5FCB0+6A↑j
                                        ; sub_FFC5FCB0+72↑j
                tst.l   $10(a4)
                bne.s   loc_FFC5FD4C
                move.l  #$80,d0
                and.l   (a4),d0
                beq.s   loc_FFC5FD44
                move.l  #$7FFC,$10(a4)
                bra.s   loc_FFC5FD4C
; ---------------------------------------------------------------------------

loc_FFC5FD44:                           ; CODE XREF: sub_FFC5FCB0+88↑j
                move.l  #$400,$10(a4)

loc_FFC5FD4C:                           ; CODE XREF: sub_FFC5FCB0+7E↑j
                                        ; sub_FFC5FCB0+92↑j
                moveq   #0,d0
                move.w  $A(a3),d0
                move.l  $10(a4),d1
                divs.l  d0,d1
                move.l  d1,$10(a4)
                moveq   #0,d0
                move.w  $A(a3),d0
                tst.l   d0
                muls.l  $10(a4),d0
                move.l  d0,$10(a4)
                moveq   #0,d0
                move.l  d0,$14(a4)

loc_FFC5FD76:                           ; CODE XREF: sub_FFC5FCB0+30↑j
                                        ; sub_FFC5FCB0+56↑j ...
                move.w  d7,d0
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC5FCB0

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FD90:                           ; CODE XREF: sub_FFC5FBF0+52↑p

var_44          = -$44
var_38          = -$38
var_2C          = -$2C
var_24          = -$24
var_20          = -$20
var_1A          = -$1A
var_8           = -8
var_4           = -4
arg_0           =  8

                link    a6,#-$38
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                lea     var_24(a6),a0
                lea     $20(a4),a1
                moveq   #6,d0

loc_FFC5FDA6:                           ; CODE XREF: sub_FFC5FD90+18↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC5FDA6
                moveq   #0,d0
                move.l  d0,var_4(a6)
                movea.l d0,a3
                cmpi.l  #$72617720,$24(a4)
                beq.w   loc_FFC5FE42
                cmpi.l  #$74776F73,$24(a4)
                beq.s   loc_FFC5FE42
                subq.l  #4,sp
                move.l  #$73636F6D,-(sp)
                move.l  $24(a4),-(sp)
                moveq   #$21,d0 ; '!'
                _ComponentDispatch
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFC5FDEA
                move.l  #$FFFFFF21,d7
                bra.w   loc_FFC5FF42
; ---------------------------------------------------------------------------

loc_FFC5FDEA:                           ; CODE XREF: sub_FFC5FD90+4E↑j
                subq.l  #2,sp
                move.l  a3,-(sp)
                pea     var_38(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                moveq   #4,d0
                and.l   var_2C(a6),d0
                addq.w  #2,sp
                beq.s   loc_FFC5FE18
                move.w  #$10,var_1A(a6)
                move.l  #$74776F73,var_20(a6)
                bra.s   loc_FFC5FE7E
; ---------------------------------------------------------------------------

loc_FFC5FE18:                           ; CODE XREF: sub_FFC5FD90+76↑j
                move.l  var_2C(a6),d0
                btst    #0,d0
                beq.s   loc_FFC5FE32
                move.w  #8,var_1A(a6)
                move.l  #$72617720,var_20(a6)
                bra.s   loc_FFC5FE7E
; ---------------------------------------------------------------------------

loc_FFC5FE32:                           ; CODE XREF: sub_FFC5FD90+90↑j
                move.w  #8,var_1A(a6)
                move.l  #$74776F73,var_20(a6)
                bra.s   loc_FFC5FE7E
; ---------------------------------------------------------------------------

loc_FFC5FE42:                           ; CODE XREF: sub_FFC5FD90+2C↑j
                                        ; sub_FFC5FD90+38↑j
                moveq   #8,d0
                cmp.w   $2A(a4),d0
                bne.s   loc_FFC5FE7E
                cmpi.l  #$74776F73,$24(a4)
                bne.s   loc_FFC5FE7E
                subq.l  #4,sp
                move.l  #$73696674,-(sp)
                move.l  #$636F6E76,-(sp)
                moveq   #$21,d0 ; '!'
                _ComponentDispatch
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFC5FE76
                move.l  #$FFFFF82C,d7
                bra.w   loc_FFC5FF42
; ---------------------------------------------------------------------------

loc_FFC5FE76:                           ; CODE XREF: sub_FFC5FD90+DA↑j
                move.l  #$72617720,var_20(a6)

loc_FFC5FE7E:                           ; CODE XREF: sub_FFC5FD90+86↑j
                                        ; sub_FFC5FD90+A0↑j ...
                subq.l  #2,sp
                pea     var_24(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_4(a6)
                move.l  #$6140018,d0
                _SoundDispatch
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,d7
                bne.w   loc_FFC5FF42
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                pea     $68(a4)
                move.l  #$40101,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.w   loc_FFC5FF42
                move.l  a3,d0
                beq.s   loc_FFC5FEF6
                subq.l  #4,sp
                move.l  a3,-(sp)
                pea     $20(a4)
                pea     var_8(a6)
                move.l  #$80005,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFC5FF42
                subq.l  #4,sp
                move.l  a3,-(sp)
                move.l  $68(a4),-(sp)
                move.l  var_4(a6),-(sp)
                move.l  #$80002,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFC5FF42
                move.l  a3,$64(a4)
                bra.s   loc_FFC5FEFC
; ---------------------------------------------------------------------------

loc_FFC5FEF6:                           ; CODE XREF: sub_FFC5FD90+12A↑j
                move.l  var_4(a6),$64(a4)

loc_FFC5FEFC:                           ; CODE XREF: sub_FFC5FD90+164↑j
                moveq   #$3E,d0 ; '>'
                move.l  d0,$6C(a4)
                lea     $70(a4),a0
                movea.l a4,a1
                addq.l  #4,a1
                moveq   #6,d1

loc_FFC5FF0C:                           ; CODE XREF: sub_FFC5FD90+17E↓j
                move.l  (a1)+,(a0)+
                dbf     d1,loc_FFC5FF0C
                moveq   #0,d1
                move.l  d1,$98(a4)
                move.l  #$10000,$8C(a4)
                move.w  #$100,$90(a4)
                move.w  #$100,$92(a4)
                moveq   #1,d0
                move.l  d0,$94(a4)
                move.l  d1,$9C(a4)
                move.l  d1,$A0(a4)
                move.l  a4,$A4(a4)
                moveq   #0,d0
                bra.s   loc_FFC5FF64
; ---------------------------------------------------------------------------

loc_FFC5FF42:                           ; CODE XREF: sub_FFC5FD90+56↑j
                                        ; sub_FFC5FD90+E2↑j ...
                tst.l   var_4(a6)
                beq.s   loc_FFC5FF54
                subq.l  #2,sp
                move.l  var_4(a6),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                addq.w  #2,sp

loc_FFC5FF54:                           ; CODE XREF: sub_FFC5FD90+1B6↑j
                move.l  a3,d0
                beq.s   loc_FFC5FF62
                subq.l  #2,sp
                move.l  a3,-(sp)
                moveq   #8,d0
                _ComponentDispatch
                addq.w  #2,sp

loc_FFC5FF62:                           ; CODE XREF: sub_FFC5FD90+1C6↑j
                move.l  d7,d0

loc_FFC5FF64:                           ; CODE XREF: sub_FFC5FD90+1B0↑j
                movem.l var_44(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC5FD90

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5FF70:                           ; DATA XREF: ROM:FFC07B1C↑o

var_18          = -$18
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C

                link    a6,#-$10
                movem.l d7/a4,-(sp)
                move.l  arg_C(a6),d7
                movea.l arg_10(a6),a4
                pea     var_4(a6)
                pea     var_8(a6)
                pea     var_C(a6)
                pea     var_10(a6)
                move.l  d7,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC60040
                cmp.l   var_4(a6),d7
                lea     $18(sp),sp
                bcc.s   loc_FFC5FFD8
                subq.l  #4,sp
                move.l  var_C(a6),-(sp)
                move.l  d7,-(sp)
                move.l  var_4(a6),-(sp)
                move.l  #$60C0018,d0
                _SoundDispatch
                move.l  (sp)+,var_C(a6)
                pea     var_4(a6)
                pea     var_8(a6)
                pea     var_C(a6)
                pea     var_10(a6)
                move.l  var_C(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC60040
                lea     $18(sp),sp

loc_FFC5FFD8:                           ; CODE XREF: sub_FFC5FF70+30↑j
                tst.l   var_10(a6)
                beq.s   loc_FFC5FFE4
                tst.l   var_8(a6)
                bne.s   loc_FFC5FFEC

loc_FFC5FFE4:                           ; CODE XREF: sub_FFC5FF70+6C↑j
                move.w  #$FF31,arg_14(a6)
                bra.s   loc_FFC60020
; ---------------------------------------------------------------------------

loc_FFC5FFEC:                           ; CODE XREF: sub_FFC5FF70+72↑j
                movea.l arg_8(a6),a0
                move.l  var_10(a6),(a0)
                moveq   #0,d0
                move.w  $4A(a4),d0
                tst.l   d0
                mulu.l  var_10(a6),d0
                movea.l arg_4(a6),a0
                move.l  d0,(a0)
                moveq   #0,d0
                move.w  $5E(a4),d0
                tst.l   d0
                mulu.l  var_8(a6),d0
                movea.l arg_0(a6),a0
                move.l  d0,(a0)
                clr.w   arg_14(a6)

loc_FFC60020:                           ; CODE XREF: sub_FFC5FF70+7A↑j
                movem.l var_18(a6),d7/a4
                unlk    a6
                rtd     #$14
; End of function sub_FFC5FF70

; ---------------------------------------------------------------------------

loc_FFC6002C:                           ; CODE XREF: ROM:FFC62558↓j
                move.l  ([$2070],$1CC),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC60040:                           ; CODE XREF: sub_FFC5FF70+24↑p
                                        ; sub_FFC5FF70+60↑p

var_14          = -$14
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C

                link    a6,#0
                movem.l d4-d7/a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.w  $4A(a4),d0
                move.l  arg_4(a6),d1
                divu.l  d0,d1
                move.l  d1,d4
                moveq   #0,d0
                move.w  $46(a4),d0
                tst.l   d0
                mulu.l  d4,d0
                move.l  d0,d6
                move.l  $10(a4),d0
                cmp.l   $2C(a4),d0
                bne.s   loc_FFC6009C
                moveq   #0,d0
                move.w  $5A(a4),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.w  $46(a4),d0
                move.l  d0,-(sp)
                jsr     sub_FFC60120
                move.l  d0,d7
                move.l  d6,d0
                divu.l  d7,d0
                mulu.l  d7,d0
                move.l  d0,d6
                move.l  d6,d5
                addq.w  #8,sp
                bra.s   loc_FFC600C6
; ---------------------------------------------------------------------------

loc_FFC6009C:                           ; CODE XREF: sub_FFC60040+32↑j
                subq.l  #4,sp
                move.l  d6,-(sp)
                move.l  $2C(a4),-(sp)
                move.l  $10(a4),-(sp)
                move.l  #$60C0018,d0
                _SoundDispatch
                move.l  (sp)+,d5
                moveq   #0,d7
                move.w  $5A(a4),d7
                move.l  d5,d0
                add.l   d7,d0
                divu.l  d7,d0
                mulu.l  d7,d0
                move.l  d0,d5

loc_FFC600C6:                           ; CODE XREF: sub_FFC60040+5A↑j
                moveq   #0,d0
                move.w  $46(a4),d0
                move.l  d6,d1
                divu.l  d0,d1
                move.l  d1,d4
                movea.l arg_8(a6),a0
                move.l  d4,(a0)
                moveq   #0,d0
                move.w  $4A(a4),d0
                tst.l   d0
                mulu.l  d4,d0
                movea.l arg_C(a6),a0
                move.l  d0,(a0)
                moveq   #0,d0
                move.w  $5A(a4),d0
                move.l  d5,d1
                divu.l  d0,d1
                move.l  d1,d4
                movea.l arg_10(a6),a0
                move.l  d4,(a0)
                moveq   #0,d0
                move.w  $5E(a4),d0
                tst.l   d0
                mulu.l  d4,d0
                movea.l arg_14(a6),a0
                move.l  d0,(a0)
                movem.l var_14(a6),d4-d7/a4
                unlk    a6
                rts
; End of function sub_FFC60040

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC60120:                           ; CODE XREF: sub_FFC60040+44↑p

arg_2           =  $A
arg_6           =  $E

                link    a6,#0
                move.w  arg_6(a6),d2
                move.w  arg_2(a6),d1
                cmp.w   d1,d2
                bne.s   loc_FFC60138
                moveq   #0,d0
                move.w  d1,d0
                tst.l   d0
                bra.s   loc_FFC60168
; ---------------------------------------------------------------------------

loc_FFC60138:                           ; CODE XREF: sub_FFC60120+E↑j
                cmp.w   d1,d2
                bcc.s   loc_FFC60150
                moveq   #0,d0
                move.w  d1,d0
                divu.w  d2,d0
                swap    d0
                tst.w   d0
                bne.s   loc_FFC60164
                moveq   #0,d0
                move.w  d1,d0
                tst.l   d0
                bra.s   loc_FFC60168
; ---------------------------------------------------------------------------

loc_FFC60150:                           ; CODE XREF: sub_FFC60120+1A↑j
                moveq   #0,d0
                move.w  d2,d0
                divu.w  d1,d0
                swap    d0
                tst.w   d0
                bne.s   loc_FFC60164
                moveq   #0,d0
                move.w  d2,d0
                tst.l   d0
                bra.s   loc_FFC60168
; ---------------------------------------------------------------------------

loc_FFC60164:                           ; CODE XREF: sub_FFC60120+26↑j
                                        ; sub_FFC60120+3A↑j
                move.w  d2,d0
                mulu.w  d1,d0

loc_FFC60168:                           ; CODE XREF: sub_FFC60120+16↑j
                                        ; sub_FFC60120+2E↑j ...
                unlk    a6
                rts
; End of function sub_FFC60120

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC60170:                           ; DATA XREF: ROM:FFC07B20↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                subq.l  #4,sp
                move.l  $64(a4),-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                pea     $68(a4)
                move.l  #$60106,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                move.w  d7,arg_4(a6)
                movem.l var_8(a6),d7/a4
                unlk    a6
                rtd     #4
; End of function sub_FFC60170

; ---------------------------------------------------------------------------

loc_FFC601A6:                           ; CODE XREF: ROM:FFC6255C↓j
                move.l  ([$2070],$1D0),-(sp)
                rts

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC601B0:                           ; DATA XREF: ROM:FFC07B24↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_14(a6),a4
                move.l  arg_0(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_8(a6),-(sp)
                moveq   #0,d0
                move.w  $46(a4),d0
                tst.l   d0
                mulu.l  arg_C(a6),d0
                move.l  d0,-(sp)
                move.l  arg_10(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC60280
                move.w  d0,d7
                move.w  d7,arg_18(a6)
                movem.l var_8(a6),d7/a4
                unlk    a6
                rtd     #$18
; End of function sub_FFC601B0

; ---------------------------------------------------------------------------

loc_FFC601F4:                           ; CODE XREF: ROM:FFC62560↓j
                move.l  ([$2070],$1D4),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC60200:                           ; DATA XREF: ROM:FFC07B28↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18

                link    a6,#0
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l arg_4(a6),a3
                movea.l arg_C(a6),a4
                moveq   #0,d0
                move.w  $5A(a4),d0
                cmpi.w  #1,d0
                bls.s   loc_FFC60256
                move.l  a2,-(sp)
                move.l  a3,-(sp)
                move.l  arg_8(a6),-(sp)
                moveq   #0,d0
                move.w  $5A(a4),d0
                subq.l  #1,d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC60280
                move.w  d0,d7
                moveq   #1,d0
                cmp.l   (a3),d0
                lea     $18(sp),sp
                bcc.s   loc_FFC6025E
                moveq   #1,d0
                move.l  d0,(a3)
                moveq   #0,d1
                move.w  $5E(a4),d1
                move.l  d1,(a2)
                bra.s   loc_FFC6025E
; ---------------------------------------------------------------------------

loc_FFC60256:                           ; CODE XREF: sub_FFC60200+1E↑j
                moveq   #0,d0
                move.l  d0,(a3)
                move.l  d0,(a2)
                clr.w   d7

loc_FFC6025E:                           ; CODE XREF: sub_FFC60200+46↑j
                                        ; sub_FFC60200+54↑j
                move.w  d7,arg_10(a6)
                movem.l var_10(a6),d7/a2-a4
                unlk    a6
                rtd     #$10
; End of function sub_FFC60200

; ---------------------------------------------------------------------------

loc_FFC6026E:                           ; CODE XREF: ROM:FFC62564↓j
                move.l  ([$2070],$1D8),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC60280:                           ; CODE XREF: sub_FFC601B0+2E↑p
                                        ; sub_FFC60200+38↑p

var_2C          = -$2C
var_10          = -$10
var_C           = -$C
var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C

                link    a6,#-$10
                movem.l d3-d7/a3-a4,-(sp)
                movea.l arg_C(a6),a3
                movea.l arg_0(a6),a4
                move.l  arg_4(a6),$84(a4)
                move.l  arg_8(a6),$80(a4)
                subq.l  #4,sp
                move.l  $64(a4),-(sp)
                move.l  $68(a4),-(sp)
                pea     $6C(a4)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  #$C0108,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d4
                bne.w   loc_FFC60396
                moveq   #0,d0
                move.l  d0,var_C(a6)
                move.l  d0,var_8(a6)
                moveq   #0,d3
                move.l  d0,var_10(a6)
                subq.l  #4,sp
                move.l  $64(a4),-(sp)
                pea     var_10(a6)
                move.l  #$40004,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d4
                bra.w   loc_FFC60372
; ---------------------------------------------------------------------------

loc_FFC602E8:                           ; CODE XREF: sub_FFC60280+104↓j
                movea.l var_10(a6),a0
                move.l  $10(a0),d5
                moveq   #0,d0
                move.w  $5A(a4),d0
                move.l  d5,d1
                divu.l  d0,d1
                move.l  d1,d6
                moveq   #0,d0
                move.w  $5E(a4),d0
                tst.l   d0
                mulu.l  d6,d0
                move.l  d0,d7
                movea.l var_10(a6),a0
                moveq   #1,d0
                cmp.w   8(a0),d0
                bne.s   loc_FFC6033A
                moveq   #2,d0
                cmp.w   $28(a4),d0
                bne.s   loc_FFC6033A
                moveq   #0,d0
                move.w  $5C(a4),d0
                move.l  d0,-(sp)
                move.l  d6,-(sp)
                move.l  a3,-(sp)
                move.l  $14(a0),-(sp)
                jsr     sub_FFC603B0
                lea     $10(sp),sp
                bra.s   loc_FFC60348
; ---------------------------------------------------------------------------

loc_FFC6033A:                           ; CODE XREF: sub_FFC60280+96↑j
                                        ; sub_FFC60280+9E↑j
                movea.l var_10(a6),a1
                movea.l $14(a1),a0
                movea.l a3,a1
                move.l  d7,d0
                _BlockMoveData

loc_FFC60348:                           ; CODE XREF: sub_FFC60280+B8↑j
                movea.l var_10(a6),a0
                sub.l   d5,$10(a0)
                adda.l  d7,a3
                add.l   d5,var_C(a6)
                add.l   d6,var_8(a6)
                add.l   d7,d3
                subq.l  #4,sp
                move.l  $64(a4),-(sp)
                pea     var_10(a6)
                move.l  #$40004,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d4

loc_FFC60372:                           ; CODE XREF: sub_FFC60280+64↑j
                tst.l   d4
                bne.s   loc_FFC60388
                tst.l   var_10(a6)
                beq.s   loc_FFC60388
                movea.l var_10(a6),a0
                tst.l   $10(a0)
                bne.w   loc_FFC602E8

loc_FFC60388:                           ; CODE XREF: sub_FFC60280+F4↑j
                                        ; sub_FFC60280+FA↑j
                movea.l arg_10(a6),a0
                move.l  var_8(a6),(a0)
                movea.l arg_14(a6),a0
                move.l  d3,(a0)

loc_FFC60396:                           ; CODE XREF: sub_FFC60280+3A↑j
                move.w  d4,d0
                movem.l var_2C(a6),d3-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC60280

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC603B0:                           ; CODE XREF: sub_FFC60280+B0↑p

var_24          = -$24
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-4
                movem.l d3-d7/a2-a4,-(sp)
                move.l  arg_8(a6),d3
                movea.l arg_0(a6),a2
                move.l  arg_C(a6),d5
                movea.l arg_4(a6),a4
                moveq   #1,d0
                cmp.l   d5,d0
                bne.s   loc_FFC603E2
                move.l  d3,d4
                moveq   #0,d1
                bra.s   loc_FFC603DC
; ---------------------------------------------------------------------------

loc_FFC603D4:                           ; CODE XREF: sub_FFC603B0+2E↓j
                move.b  (a2)+,d6
                move.b  d6,(a4)+
                move.b  d6,(a4)+
                subq.l  #1,d4

loc_FFC603DC:                           ; CODE XREF: sub_FFC603B0+22↑j
                cmp.l   d4,d1
                bne.s   loc_FFC603D4
                bra.s   loc_FFC60408
; ---------------------------------------------------------------------------

loc_FFC603E2:                           ; CODE XREF: sub_FFC603B0+1C↑j
                movea.l a4,a3
                adda.l  d5,a3
                move.l  d3,d4
                moveq   #0,d1
                bra.s   loc_FFC60404
; ---------------------------------------------------------------------------

loc_FFC603EC:                           ; CODE XREF: sub_FFC603B0+56↓j
                move.l  d5,d7
                bra.s   loc_FFC603F8
; ---------------------------------------------------------------------------

loc_FFC603F0:                           ; CODE XREF: sub_FFC603B0+4A↓j
                move.b  (a2)+,d6
                move.b  d6,(a4)+
                move.b  d6,(a3)+
                subq.l  #1,d7

loc_FFC603F8:                           ; CODE XREF: sub_FFC603B0+3E↑j
                cmp.l   d7,d1
                bne.s   loc_FFC603F0
                move.l  d5,d3
                adda.l  d3,a4
                adda.l  d3,a3
                subq.l  #1,d4

loc_FFC60404:                           ; CODE XREF: sub_FFC603B0+3A↑j
                cmp.l   d4,d1
                bne.s   loc_FFC603EC

loc_FFC60408:                           ; CODE XREF: sub_FFC603B0+30↑j
                movem.l var_24(a6),d3-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC603B0

; ---------------------------------------------------------------------------
                align 4
dword_FFC60420: dc.l $40003D44, $3AA63825, $35BF3373, $31402F26, $2D222B34
                                        ; DATA XREF: sub_FFC61540+72↓o
                                        ; sub_FFC61540+126↓o ...
                dc.l $295C2797, $25E62448, $22BB213F, $1FD41E78, $1D2A1BEB
                dc.l $1ABA1996, $187E1772, $1672157C, $149113B0, $12D9120B
                dc.l $11451089, $FD40F27, $E810DE2, $D4B0CB9, $C2E0BA9
                dc.l $B290AAF, $A3A09CB, $95F08F9, $8970839, $7DF0789
                dc.l $73706E8, $69C0654, $60F05CC, $58D0550, $51604DF
                dc.l $4A90476, $4460417, $3EA03BF, $396036F, $34A0326
                dc.l $30302E2, $2C302A5, $288026C, $2520238, $2200209
                dc.l $1F201DD, $1C901B5, $1A30191, $180016F, $1600151
                dc.l $1420134, $127011B, $10F0103, $F800ED, $E300DA, $D000C7
                dc.l $BF00B7, $AF00A7, $A0009A, $93008D, $870081, $7B0076
                dc.l $71006C, $680063, $5F005B, $570053, $50004C, $490046
                dc.l $430040
dword_FFC60520: dc.l $FFEE008C, $8CFFEE ; DATA XREF: sub_FFC61540+17C↓o
                                        ; sub_FFC617C0+94↓o ...
                dcb.l 2,0
dword_FFC60530: dc.l $4000D8, $FF27FFBF ; DATA XREF: sub_FFC61540+152↓o
                dcb.l 2,0
                dc.l $4300E2, $FF1DFFBC
                dcb.l 2,0
                dc.l $4600EC, $FF13FFB9
                dcb.l 2,0
                dc.l $4A00F6, $FF09FFB5
                dcb.l 2,0
                dc.l $4D0101, $FEFEFFB2
                dcb.l 2,0
                dc.l $50010C, $FEF3FFAF
                dcb.l 2,0
                dc.l $540118, $FEE7FFAB
                dcb.l 2,0
                dc.l $580126, $FED9FFA7
                dcb.l 2,0
                dc.l $5C0133, $FECCFFA3
                dcb.l 2,0
                dc.l $600141, $FEBEFF9F
                dcb.l 2,0
                dc.l $64014E, $FEB1FF9B
                dcb.l 2,0
                dc.l $68015E, $FEA1FF97
                dcb.l 2,0
                dc.l $6D016D, $FE92FF92
                dcb.l 2,0
                dc.l $72017E, $FE81FF8D
                dcb.l 2,0
                dc.l $77018F, $FE70FF88
                dcb.l 2,0
                dc.l $7C01A0, $FE5FFF83
                dcb.l 2,0
                dc.l $8201B2, $FE4DFF7D
                dcb.l 2,0
                dc.l $8801C6, $FE39FF77
                dcb.l 2,0
                dc.l $8E01DB, $FE24FF71
                dcb.l 2,0
                dc.l $9401EF, $FE10FF6B
                dcb.l 2,0
                dc.l $9B0207, $FDF8FF64
                dcb.l 2,0
                dc.l $A2021D, $FDE2FF5D
                dcb.l 2,0
                dc.l $A90234, $FDCBFF56
                dcb.l 2,0
                dc.l $B0024E, $FDB1FF4F
                dcb.l 2,0
                dc.l $B90269, $FD96FF46
                dcb.l 2,0
                dc.l $C10284, $FD7BFF3E
                dcb.l 2,0
                dc.l $C902A1, $FD5EFF36
                dcb.l 2,0
                dc.l $D202BF, $FD40FF2D
                dcb.l 2,0
                dc.l $DC02DF, $FD20FF23
                dcb.l 2,0
                dc.l $E602FF, $FD00FF19
                dcb.l 2,0
                dc.l $F00321, $FCDEFF0F
                dcb.l 2,0
                dc.l $FB0346, $FCB9FF04
                dcb.l 2,0
                dc.l $106036C, $FC93FEF9
                dcb.l 2,0
                dc.l $1120392, $FC6DFEED
                dcb.l 2,0
                dc.l $11E03BB, $FC44FEE1
                dcb.l 2,0
                dc.l $12B03E5, $FC1AFED4
                dcb.l 2,0
                dc.l $1380411, $FBEEFEC7
                dcb.l 2,0
                dc.l $1460441, $FBBEFEB9
                dcb.l 2,0
                dc.l $1550472, $FB8DFEAA
                dc.b 0
                align 4
                dc.l $16404A4, $FB5BFE9B
                dcb.l 2,0
                dc.l $17404D9, $FB26FE8B
                dcb.l 2,0
                dc.l $1840511, $FAEEFE7B
                dcb.l 2,0
                dc.l $196054A, $FAB5FE69
                dcb.l 2,0
                dc.l $1A80587, $FA78FE57
                dcb.l 2,0
                dc.l $1BB05C6, $FA39FE44
                dcb.l 2,0
                dc.l $1CE0608, $F9F7FE31
                dcb.l 2,0
                dc.l $1E3064D, $F9B2FE1C
                dcb.l 2,0
                dc.l $1F90694, $F96BFE06
                dcb.l 2,0
                dc.l $20F06E0, $F91FFDF0
                dcb.l 2,0
                dc.l $227072E, $F8D1FDD8
                dcb.l 2,0
                dc.l $2400781, $F87EFDBF
                dcb.l 2,0
                dc.l $25907D7, $F828FDA6
                dcb.l 2,0
                dc.l $2740831, $F7CEFD8B
                dcb.l 2,0
                dc.l $290088E, $F771FD6F
                dcb.l 2,0
                dc.l $2AE08F0, $F70FFD51
                dcb.l 2,0
                dc.l $2CC0955, $F6AAFD33
                dcb.l 2,0
                dc.l $2EC09C0, $F63FFD13
                dcb.l 2,0
                dc.l $30D0A2F, $F5D0FCF2
                dcb.l 2,0
                dc.l $3300AA4, $F55BFCCF
                dcb.l 2,0
                dc.l $3550B1E, $F4E1FCAA
                dcb.l 2,0
                dc.l $37B0B9D, $F462FC84
                dcb.l 2,0
                dc.l $3A20C20, $F3DFFC5D
                dcb.l 2,0
                dc.l $3CC0CAB, $F354FC33
                dcb.l 2,0
                dc.l $3F80D3D, $F2C2FC07
                dcb.l 2,0
                dc.l $4250DD3, $F22CFBDA
                dcb.l 2,0
                dc.l $4540E72, $F18DFBAB
                dcb.l 2,0
                dc.l $4860F16, $F0E9FB79
                dcb.l 2,0
                dc.l $4B90FC3, $F03CFB46
                dcb.l 2,0
                dc.l $4F01078, $EF87FB0F
                dcb.l 2,0
                dc.l $5281133, $EECCFAD7
                dcb.l 2,0
                dc.l $56311F7, $EE08FA9C
                dcb.l 2,0
                dc.l $5A112C6, $ED39FA5E
                dcb.l 2,0
                dc.l $5E1139B, $EC64FA1E
                dcb.l 2,0
                dc.l $624147C, $EB83F9DB
                dcb.l 2,0
                dc.l $66A1565, $EA9AF995
                dcb.l 2,0
                dc.l $6B3165A, $E9A5F94C
                dcb.l 2,0
                dc.l $700175A, $E8A5F8FF
                dcb.l 2,0
                dc.l $7501865, $E79AF8AF
                dcb.l 2,0
                dc.l $7A3197A, $E685F85C
                dcb.l 2,0
                dc.l $7FB1A9D, $E562F804
                dcb.l 2,0
                dc.l $8561BCE, $E431F7A9
                dcb.l 2,0
                dc.l $8B51D0C, $E2F3F74A
                dcb.l 2,0
                dc.l $9191E57, $E1A8F6E6
                dcb.l 2,0
                dc.l $9801FB2, $E04DF67F
                dcb.l 2,0
                dc.l $9ED211D, $DEE2F612
                dcb.l 2,0
                dc.l $A5F2296, $DD69F5A0
                dcb.l 2,0
                dc.l $AD52422, $DBDDF52A
                dcb.l 2,0
                dc.l $B5125BF, $DA40F4AE
                dcb.l 2,0
                dc.l $BD2276E, $D891F42D
                dcb.l 2,0
                dc.l $C5A2932, $D6CDF3A5
                dcb.l 2,0
                dc.l $CE72B08, $D4F7F318
                dcb.l 2,0
                dc.l $D7A2CF4, $D30BF285
                dcb.l 2,0
                dc.l $E142EF4, $D10BF1EB
                dcb.l 2,0
                dc.l $EB5310C, $CEF3F14A
                dcb.l 2,0
                dc.l $F5D333E, $CCC1F0A2
                dcb.l 2,0
                dc.l $100C3587, $CA78EFF3
                dcb.l 2,0
                dc.l $10C437EB, $C814EF3B
                dcb.l 2,0
                dc.l $11833A69, $C596EE7C
                dcb.l 2,0
                dc.l $124B3D05, $C2FAEDB4
                dcb.l 2,0
                dc.l $131C3FBE, $C041ECE3
                dcb.l 2,0
                dc.l $13F74296, $BD69EC08
                dcb.l 2,0
                dc.l $14DB458F, $BA70EB24
                dcb.l 2,0
                dc.l $15C948AA, $B755EA36
                dcb.l 2,0
                dc.l $16C24BE9, $B416E93D
                dcb.l 2,0
                dc.l $17C64F4C, $B0B3E839
                dcb.l 2,0
                dc.l $18D652D5, $AD2AE729
                dcb.l 2,0
                dc.l $19F25688, $A977E60D
                dcb.l 2,0
                dc.l $1B1A5A65, $A59AE4E5
                dcb.l 2,0
                dc.l $1C505E6D, $A192E3AF
                dcb.l 2,0
                dc.l $1D9362A4, $9D5BE26C
                dcb.l 2,0
                dc.l $1EE5670C, $98F3E11A
                dcb.l 2,0
                dc.l $20466BA5, $945ADFB9
                dcb.l 2,0
                dc.l $21B77072, $8F8DDE48
                dcb.l 2,0
                dc.l $23387578, $8A87DCC7
                dcb.l 2,0
                dc.l $24CB7AB5, $854ADB34
                dcb.l 2,0
                dc.l $266F7FFF, $8000D990
                dcb.l 2,0
                dc.l $28267FFF, $8000D7D9
                dcb.l 2,0
                dc.l $29F17FFF, $8000D60E
                dcb.l 2,0
                dc.l $2BD07FFF, $8000D42F
                dcb.l 2,0
                dc.l $2DC57FFF, $8000D23A
                dcb.l 2,0
                dc.l $2FD07FFF, $8000D02F
                dcb.l 2,0
                dc.l $31F27FFF, $8000CE0D
                dcb.l 2,0
                dc.l $342C7FFF, $8000CBD3
                dcb.l 2,0
                dc.l $36817FFF, $8000C97E
                dcb.l 2,0
                dc.l $38F07FFF, $8000C70F
                dcb.l 2,0
                dc.l $3B7A7FFF, $8000C485
                dcb.l 2,0
                dc.l $3E227FFF, $8000C1DD
                dcb.l 2,0
                dc.l $40E77FFF, $8000BF18
                dcb.l 2,0
dword_FFC60D30: dc.l $FFF30008, $4C00DE, $DE004C, $8FFF3
                                        ; DATA XREF: sub_FFC61540+F0↓o
                                        ; sub_FFC61540+232↓o ...
dword_FFC60D40: dc.l $250074, $CE014A, $FEB5FF31, $FF8BFFDA, $270079, $D8015A
                                        ; DATA XREF: sub_FFC61540+C6↓o
                                        ; sub_FFC61540+208↓o
                dc.l $FEA5FF27, $FF86FFD8, $29007F, $E10169, $FE96FF1E
                dc.l $FF80FFD6, $2A0084, $EB0179, $FE86FF14, $FF7BFFD5
                dc.l $2C0089, $F50188, $FE77FF0A, $FF76FFD3, $2E0090, $100019A
                dc.l $FE65FEFF, $FF6FFFD1, $300096, $10B01AC, $FE53FEF4
                dc.l $FF69FFCF, $33009D, $11801C1, $FE3EFEE7, $FF62FFCC
                dc.l $3500A5, $12501D6, $FE29FEDA, $FF5AFFCA, $3700AC
                dc.l $13201EA, $FE15FECD, $FF53FFC8, $3A00B3, $13F01FF
                dc.l $FE00FEC0, $FF4CFFC5, $3C00BB, $14D0216, $FDE9FEB2
                dc.l $FF44FFC3, $3F00C3, $15C022D, $FDD2FEA3, $FF3CFFC0
                dc.l $4200CD, $16C0247, $FDB8FE93, $FF32FFBD, $4500D6
                dc.l $17C0261, $FD9EFE83, $FF29FFBA, $4800DF, $18C027B
                dc.l $FD84FE73, $FF20FFB7, $4B00E9, $19E0297, $FD68FE61
                dc.l $FF16FFB4, $4F00F4, $1B102B6, $FD49FE4E, $FF0BFFB0
                dc.l $5200FE, $1C502D5, $FD2AFE3A, $FF01FFAD, $560109
                dc.l $1D802F4, $FD0BFE27, $FEF6FFA9, $5A0116, $1EF0318
                dc.l $FCE7FE10, $FEE9FFA5, $5E0122, $204033A, $FCC5FDFB
                dc.l $FEDDFFA1, $62012F, $21A035E, $FCA1FDE5, $FED0FF9D
                dc.l $66013C, $2320385, $FC7AFDCD, $FEC3FF99, $6B014B
                dc.l $24C03AE, $FC51FDB3, $FEB4FF94, $700159, $26603D7
                dc.l $FC28FD99, $FEA6FF8F, $750169, $2810403, $FBFCFD7E
                dc.l $FE96FF8A, $7A0179, $29E0432, $FBCDFD61, $FE86FF85
                dc.l $7F018A, $2BD0463, $FB9CFD42, $FE75FF80, $85019B
                dc.l $2DC0494, $FB6BFD23, $FE64FF7A, $8B01AE, $2FC04C8
                dc.l $FB37FD03, $FE51FF74, $9101C1, $31F0500, $FAFFFCE0
                dc.l $FE3EFF6E, $9801D5, $3430539, $FAC6FCBC, $FE2AFF67
                dc.l $9F01EA, $3680575, $FA8AFC97, $FE15FF60, $A60200
                dc.l $38F05B3, $FA4CFC70, $FDFFFF59, $AD0217, $3B705F3
                dc.l $FA0CFC48, $FDE8FF52, $B5022E, $3E10636, $F9C9FC1E
                dc.l $FDD1FF4A, $BD0248, $40E067F, $F980FBF1, $FDB7FF42
                dc.l $C50262, $43D06CA, $F935FBC2, $FD9DFF3A, $CE027D
                dc.l $46D0717, $F8E8FB92, $FD82FF31, $D70299, $49F0767
                dc.l $F898FB60, $FD66FF28, $E102B7, $4D507BC, $F843FB2A
                dc.l $FD48FF1E, $EB02D6, $50B0814, $F7EBFAF4, $FD29FF14
                dc.l $F602F7, $5450871, $F78EFABA, $FD08FF09, $1010318
                dc.l $58108D1, $F72EFA7E, $FCE7FEFE, $10C033C, $5C00935
                dc.l $F6CAFA3F, $FCC3FEF3, $1180361, $602099F, $F660F9FD
                dc.l $FC9EFEE7, $1250387, $6460A0C, $F5F3F9B9, $FC78FEDA
                dc.l $13203B0, $68E0A80, $F57FF971, $FC4FFECD, $13F03DA
                dc.l $6D90AF7, $F508F926, $FC25FEC0, $14E0406, $7280B75
                dc.l $F48AF8D7, $FBF9FEB1, $15D0434, $77A0BF9, $F406F885
                dc.l $FBCBFEA2, $16C0464, $7CF0C82, $F37DF830, $FB9BFE93
                dc.l $17C0496, $8280D10, $F2EFF7D7, $FB69FE83, $18E04CB
                dc.l $8860DA6, $F259F779, $FB34FE71, $19F0501, $8E60E41
                dc.l $F1BEF719, $FAFEFE60, $1B2053B, $94C0EE3, $F11CF6B3
                dc.l $FAC4FE4D, $1C50576, $9B60F8E, $F071F649, $FA89FE3A
                dc.l $1D905B5, $A261040, $EFBFF5D9, $FA4AFE26, $1EF05F6
                dc.l $A9A10FA, $EF05F565, $FA09FE10, $205063A, $B1311BC
                dc.l $EE43F4EC, $F9C5FDFA, $21C0681, $B911285, $ED7AF46E
                dc.l $F97EFDE3, $23406CC, $C151359, $ECA6F3EA, $F933FDCB
                dc.l $24D071A, $CA01437, $EBC8F35F, $F8E5FDB2, $267076A
                dc.l $D2F151D, $EAE2F2D0, $F895FD98, $28307C0, $DC7160F
                dc.l $E9F0F238, $F83FFD7C, $29F0818, $E63170A, $E8F5F19C
                dc.l $F7E7FD60, $2BD0874, $F081811, $E7EEF0F7, $F78BFD42
                dc.l $2DD08D5, $FB41926, $E6D9F04B, $F72AFD22, $2FE093A
                dc.l $10671A44, $E5BBEF98, $F6C5FD01, $32009A3, $11221B70
                dc.l $E48FEEDD, $F65CFCDF, $3440A12, $11E71CAB, $E354EE18
                dc.l $F5EDFCBB, $3690A84, $12B21DF0, $E20FED4D, $F57BFC96
                dc.l $3900AFD, $13891F48, $E0B7EC76, $F502FC6F, $3B80B7A
                dc.l $146720AC, $DF53EB98, $F485FC47, $3E30BFE, $15512223
                dc.l $DDDCEAAE, $F401FC1C, $40F0C87, $164523A9, $DC56E9BA
                dc.l $F378FBF0, $43E0D16, $17442541, $DABEE8BB, $F2E9FBC1
                dc.l $46E0DAB, $184C26E8, $D917E7B3, $F254FB91, $4A10E47
                dc.l $196128A4, $D75BE69E, $F1B8FB5E, $4D60EEA, $1A842A75
                dc.l $D58AE57B, $F115FB29, $50D0F95, $1BB32C5B, $D3A4E44C
                dc.l $F06AFAF2, $5471046, $1CEF2E55, $D1AAE310, $EFB9FAB8
                dc.l $5831100, $1E3A3066, $CF99E1C5, $EEFFFA7C, $5C211C3
                dc.l $1F943292, $CD6DE06B, $EE3CFA3D, $604128E, $20FC34D2
                dc.l $CB2DDF03, $ED71F9FB, $6491362, $2275372E, $C8D1DD8A
                dc.l $EC9DF9B6, $690143F, $23FF39A4, $C65BDC00, $EBC0F96F
                dc.l $6DC1527, $259A3C37, $C3C8DA65, $EAD8F923, $72A1619
                dc.l $27493EE8, $C117D8B6, $E9E6F8D5, $77C1715, $290941B6
                dc.l $BE49D6F6, $E8EAF883, $7D1181D, $2ADF44A6, $BB59D520
                dc.l $E7E2F82E, $82B1930, $2CC747B4, $B84BD338, $E6CFF7D4
                dc.l $8881A50, $2EC64AE7, $B518D139, $E5AFF777, $8EA1B7D
                dc.l $30DE4E40, $B1BFCF21, $E482F715, $94F1CB7, $330C51BE
                dc.l $AE41CCF3, $E348F6B0, $9BA1DFF, $35545565, $AA9ACAAB
                dc.l $E200F645, $A291F55, $37B45932, $A6CDC84B, $E0AAF5D6
                dc.l $A9D20BC, $3A315D2E, $A2D1C5CE, $DF43F562, $B162231
                dc.l $3CC96156, $9EA9C336, $DDCEF4E9, $B9523B8, $3F8065AF
                dc.l $9A50C07F, $DC47F46A, $C192551, $42566A39, $95C6BDA9
                dc.l $DAAEF3E6, $CA426FB, $454C6EF7, $9108BAB3, $D904F35B
                dc.l $D3428B8, $486473EB, $8C14B79B, $D747F2CB, $DCB2A8A
                dc.l $4B9F7918, $86E7B460, $D575F234, $E682C6F, $4EFE7E7E
                dc.l $8181B101, $D390F197, $F0D2E6B, $52857FFF, $8000AD7A
                dc.l $D194F0F2, $FB9307E, $56357FFF, $8000A9CA, $CF81F046
                dc.l $106D32A7, $5A0D7FFF, $8000A5F2, $CD58EF92, $112834EA
                dc.l $5E127FFF, $8000A1ED, $CB15EED7, $11ED3747, $62457FFF
                dc.l $80009DBA, $C8B8EE12, $12B939BF, $66A87FFF, $80009957
                dc.l $C640ED46, $138F3C52, $6B3C7FFF, $800094C3, $C3ADEC70
                dc.l $146F3F04, $70067FFF, $80008FF9, $C0FBEB90, $155841D3
                dc.l $75057FFF, $80008AFA, $BE2CEAA7, $164C44C3, $7A3E7FFF
                dc.l $800085C1, $BB3CE9B3, $174B47D5, $7FB37FFF, $8000804C
                dc.l $B82AE8B4, $18554B0A, $7FFF7FFF, $80008000, $B4F5E7AA
                dc.l $196B4E63, $7FFF7FFF, $80008000, $B19CE694, $1A8D51E3
                dc.l $7FFF7FFF, $80008000, $AE1CE572, $1BBD558B, $7FFF7FFF
                dc.l $80008000, $AA74E442, $1CFA595C, $7FFF7FFF, $80008000
                dc.l $A6A3E305, $1E455D59, $7FFF7FFF, $80008000, $A2A6E1BA
                dc.l $1F9F6184, $7FFF7FFF, $80008000, $9E7BE060, $210865DE
                dc.l $7FFF7FFF, $80008000, $9A21DEF7, $22816A6A, $7FFF7FFF
                dc.l $80008000, $9595DD7E, $240C6F29, $7FFF7FFF, $80008000
                dc.l $90D6DBF3, $25A7741F, $7FFF7FFF, $80008000, $8BE0DA58

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC61540:                           ; DATA XREF: ROM:FFC0796C↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20

                link    a6,#0
                movem.l d0-d7/a0-a5,-(sp)
                cmpi.l  #6,arg_10(a6)
                blt.w   loc_FFC617A6
                movea.l arg_C(a6),a0
                cmpa.w  #0,a0
                bne.s   loc_FFC61568
                clr.w   d3
                move.w  d3,d4
                move.w  d3,d5
                move.w  d3,d6
                bra.s   loc_FFC61576
; ---------------------------------------------------------------------------

loc_FFC61568:                           ; CODE XREF: sub_FFC61540+1C↑j
                move.w  (a0),d3
                move.w  2(a0),d4
                move.w  4(a0),d5
                move.w  6(a0),d6

loc_FFC61576:                           ; CODE XREF: sub_FFC61540+26↑j
                movea.l arg_18(a6),a2
                movea.l arg_14(a6),a3
                move.l  arg_0(a6),d0
                subq.l  #1,d0
                adda.l  d0,a2
                movea.l arg_4(a6),a5
                subq.l  #1,a5

loc_FFC6158C:                           ; CODE XREF: sub_FFC61540+24A↓j
                move.b  (a2)+,d0
                adda.l  a5,a2
                addi.b  #-$80,d0
                ext.w   d0
                asl.w   #8,d0
                addi.b  #-$80,d0
                sub.w   d4,d0
                bvc.s   loc_FFC615AC
                bmi.s   loc_FFC615A8
                move.w  #$8001,d0
                bra.s   loc_FFC615AC
; ---------------------------------------------------------------------------

loc_FFC615A8:                           ; CODE XREF: sub_FFC61540+60↑j
                move.w  #$7FFF,d0

loc_FFC615AC:                           ; CODE XREF: sub_FFC61540+5E↑j
                                        ; sub_FFC61540+66↑j
                move.w  d3,d1
                asr.w   #4,d1
                add.w   d1,d1
                lea     dword_FFC60420(pc),a4
                adda.w  d1,a4
                muls.w  (a4),d0
                swap    d0
                or.w    d0,d0
                bmi.s   loc_FFC615E2
                cmpi.w  #$13,d0
                bgt.s   loc_FFC615CA
                moveq   #0,d2
                bra.s   loc_FFC61604
; ---------------------------------------------------------------------------

loc_FFC615CA:                           ; CODE XREF: sub_FFC61540+84↑j
                cmpi.w  #$28,d0 ; '('
                bgt.s   loc_FFC615D4
                moveq   #1,d2
                bra.s   loc_FFC61604
; ---------------------------------------------------------------------------

loc_FFC615D4:                           ; CODE XREF: sub_FFC61540+8E↑j
                cmpi.w  #$43,d0 ; 'C'
                bgt.s   loc_FFC615DE
                moveq   #2,d2
                bra.s   loc_FFC61604
; ---------------------------------------------------------------------------

loc_FFC615DE:                           ; CODE XREF: sub_FFC61540+98↑j
                moveq   #3,d2
                bra.s   loc_FFC61604
; ---------------------------------------------------------------------------

loc_FFC615E2:                           ; CODE XREF: sub_FFC61540+7E↑j
                not.w   d0
                cmpi.w  #$13,d0
                bgt.s   loc_FFC615EE
                moveq   #7,d2
                bra.s   loc_FFC61604
; ---------------------------------------------------------------------------

loc_FFC615EE:                           ; CODE XREF: sub_FFC61540+A8↑j
                cmpi.w  #$28,d0 ; '('
                bgt.s   loc_FFC615F8
                moveq   #6,d2
                bra.s   loc_FFC61604
; ---------------------------------------------------------------------------

loc_FFC615F8:                           ; CODE XREF: sub_FFC61540+B2↑j
                cmpi.w  #$43,d0 ; 'C'
                bgt.s   loc_FFC61602
                moveq   #5,d2
                bra.s   loc_FFC61604
; ---------------------------------------------------------------------------

loc_FFC61602:                           ; CODE XREF: sub_FFC61540+BC↑j
                moveq   #4,d2

loc_FFC61604:                           ; CODE XREF: sub_FFC61540+88↑j
                                        ; sub_FFC61540+92↑j ...
                asl.w   #3,d1
                lea     dword_FFC60D40(pc),a4
                add.w   d2,d1
                add.w   d2,d1
                adda.w  d1,a4
                move.w  (a4),d6
                add.w   d4,d6
                bvc.s   loc_FFC61622
                bmi.s   loc_FFC6161E
                move.w  #$8001,d6
                bra.s   loc_FFC61622
; ---------------------------------------------------------------------------

loc_FFC6161E:                           ; CODE XREF: sub_FFC61540+D6↑j
                move.w  #$7FFF,d6

loc_FFC61622:                           ; CODE XREF: sub_FFC61540+D4↑j
                                        ; sub_FFC61540+DC↑j
                move.w  d6,d0
                move.w  d6,d4
                asr.w   #3,d0
                sub.w   d0,d4
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                lea     dword_FFC60D30(pc),a4
                adda.w  d2,a4
                adda.w  d2,a4
                add.w   (a4),d3
                bge.s   loc_FFC6163E
                clr.w   d3

loc_FFC6163E:                           ; CODE XREF: sub_FFC61540+FA↑j
                move.b  d2,d7
                move.b  (a2)+,d0
                adda.l  a5,a2
                addi.b  #-$80,d0
                ext.w   d0
                asl.w   #8,d0
                addi.b  #-$80,d0
                sub.w   d4,d0
                bvc.s   loc_FFC61660
                bmi.s   loc_FFC6165C
                move.w  #$8001,d0
                bra.s   loc_FFC61660
; ---------------------------------------------------------------------------

loc_FFC6165C:                           ; CODE XREF: sub_FFC61540+114↑j
                move.w  #$7FFF,d0

loc_FFC61660:                           ; CODE XREF: sub_FFC61540+112↑j
                                        ; sub_FFC61540+11A↑j
                move.w  d3,d1
                asr.w   #4,d1
                add.w   d1,d1
                lea     dword_FFC60420(pc),a4
                adda.w  d1,a4
                muls.w  (a4),d0
                swap    d0
                or.w    d0,d0
                bmi.s   loc_FFC61682
                cmpi.w  #$23,d0 ; '#'
                bgt.s   loc_FFC6167E
                moveq   #0,d2
                bra.s   loc_FFC61690
; ---------------------------------------------------------------------------

loc_FFC6167E:                           ; CODE XREF: sub_FFC61540+138↑j
                moveq   #1,d2
                bra.s   loc_FFC61690
; ---------------------------------------------------------------------------

loc_FFC61682:                           ; CODE XREF: sub_FFC61540+132↑j
                not.w   d0
                cmpi.w  #$23,d0 ; '#'
                bgt.s   loc_FFC6168E
                moveq   #3,d2
                bra.s   loc_FFC61690
; ---------------------------------------------------------------------------

loc_FFC6168E:                           ; CODE XREF: sub_FFC61540+148↑j
                moveq   #2,d2

loc_FFC61690:                           ; CODE XREF: sub_FFC61540+13C↑j
                                        ; sub_FFC61540+140↑j ...
                asl.w   #3,d1
                lea     dword_FFC60530(pc),a4
                add.w   d2,d1
                add.w   d2,d1
                adda.w  d1,a4
                move.w  (a4),d6
                add.w   d4,d6
                bvc.s   loc_FFC616AE
                bmi.s   loc_FFC616AA
                move.w  #$8001,d6
                bra.s   loc_FFC616AE
; ---------------------------------------------------------------------------

loc_FFC616AA:                           ; CODE XREF: sub_FFC61540+162↑j
                move.w  #$7FFF,d6

loc_FFC616AE:                           ; CODE XREF: sub_FFC61540+160↑j
                                        ; sub_FFC61540+168↑j
                move.w  d6,d0
                move.w  d6,d4
                asr.w   #3,d0
                sub.w   d0,d4
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                lea     dword_FFC60520(pc),a4
                adda.w  d2,a4
                adda.w  d2,a4
                add.w   (a4),d3
                bge.s   loc_FFC616CA
                clr.w   d3

loc_FFC616CA:                           ; CODE XREF: sub_FFC61540+186↑j
                asl.b   #3,d2
                add.b   d2,d7
                move.b  (a2)+,d0
                adda.l  a5,a2
                addi.b  #-$80,d0
                ext.w   d0
                asl.w   #8,d0
                addi.b  #-$80,d0
                sub.w   d4,d0
                bvc.s   loc_FFC616EE
                bmi.s   loc_FFC616EA
                move.w  #$8001,d0
                bra.s   loc_FFC616EE
; ---------------------------------------------------------------------------

loc_FFC616EA:                           ; CODE XREF: sub_FFC61540+1A2↑j
                move.w  #$7FFF,d0

loc_FFC616EE:                           ; CODE XREF: sub_FFC61540+1A0↑j
                                        ; sub_FFC61540+1A8↑j
                move.w  d3,d1
                asr.w   #4,d1
                add.w   d1,d1
                lea     dword_FFC60420(pc),a4
                adda.w  d1,a4
                muls.w  (a4),d0
                swap    d0
                or.w    d0,d0
                bmi.s   loc_FFC61724
                cmpi.w  #$13,d0
                bgt.s   loc_FFC6170C
                moveq   #0,d2
                bra.s   loc_FFC61746
; ---------------------------------------------------------------------------

loc_FFC6170C:                           ; CODE XREF: sub_FFC61540+1C6↑j
                cmpi.w  #$28,d0 ; '('
                bgt.s   loc_FFC61716
                moveq   #1,d2
                bra.s   loc_FFC61746
; ---------------------------------------------------------------------------

loc_FFC61716:                           ; CODE XREF: sub_FFC61540+1D0↑j
                cmpi.w  #$43,d0 ; 'C'
                bgt.s   loc_FFC61720
                moveq   #2,d2
                bra.s   loc_FFC61746
; ---------------------------------------------------------------------------

loc_FFC61720:                           ; CODE XREF: sub_FFC61540+1DA↑j
                moveq   #3,d2
                bra.s   loc_FFC61746
; ---------------------------------------------------------------------------

loc_FFC61724:                           ; CODE XREF: sub_FFC61540+1C0↑j
                not.w   d0
                cmpi.w  #$13,d0
                bgt.s   loc_FFC61730
                moveq   #7,d2
                bra.s   loc_FFC61746
; ---------------------------------------------------------------------------

loc_FFC61730:                           ; CODE XREF: sub_FFC61540+1EA↑j
                cmpi.w  #$28,d0 ; '('
                bgt.s   loc_FFC6173A
                moveq   #6,d2
                bra.s   loc_FFC61746
; ---------------------------------------------------------------------------

loc_FFC6173A:                           ; CODE XREF: sub_FFC61540+1F4↑j
                cmpi.w  #$43,d0 ; 'C'
                bgt.s   loc_FFC61744
                moveq   #5,d2
                bra.s   loc_FFC61746
; ---------------------------------------------------------------------------

loc_FFC61744:                           ; CODE XREF: sub_FFC61540+1FE↑j
                moveq   #4,d2

loc_FFC61746:                           ; CODE XREF: sub_FFC61540+1CA↑j
                                        ; sub_FFC61540+1D4↑j ...
                asl.w   #3,d1
                lea     dword_FFC60D40(pc),a4
                add.w   d2,d1
                add.w   d2,d1
                adda.w  d1,a4
                move.w  (a4),d6
                add.w   d4,d6
                bvc.s   loc_FFC61764
                bmi.s   loc_FFC61760
                move.w  #$8001,d6
                bra.s   loc_FFC61764
; ---------------------------------------------------------------------------

loc_FFC61760:                           ; CODE XREF: sub_FFC61540+218↑j
                move.w  #$7FFF,d6

loc_FFC61764:                           ; CODE XREF: sub_FFC61540+216↑j
                                        ; sub_FFC61540+21E↑j
                move.w  d6,d0
                move.w  d6,d4
                asr.w   #3,d0
                sub.w   d0,d4
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                lea     dword_FFC60D30(pc),a4
                adda.w  d2,a4
                adda.w  d2,a4
                add.w   (a4),d3
                bge.s   loc_FFC61780
                clr.w   d3

loc_FFC61780:                           ; CODE XREF: sub_FFC61540+23C↑j
                asl.b   #5,d2
                add.b   d2,d7
                move.b  d7,(a3)+
                subq.l  #3,arg_10(a6)
                bgt.w   loc_FFC6158C
                movea.l arg_8(a6),a0
                cmpa.w  #0,a0
                beq.s   loc_FFC617A6
                move.w  d3,(a0)
                move.w  d4,2(a0)
                move.w  d5,4(a0)
                move.w  d6,6(a0)

loc_FFC617A6:                           ; CODE XREF: sub_FFC61540+10↑j
                                        ; sub_FFC61540+256↑j
                movem.l (sp)+,d0-d7/a0-a5
                movea.l 4(a6),a0
                unlk    a6
                adda.w  #$20,sp ; ' '
                jmp     (a0)
; End of function sub_FFC61540

; ---------------------------------------------------------------------------

loc_FFC617B6:                           ; CODE XREF: ROM:FFC623F4↓j
                move.l  ([$2070],$1C),-(sp)
                rts

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC617C0:                           ; DATA XREF: ROM:FFC079A4↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20

                link    a6,#0
                movem.l d0-d7/a0-a5,-(sp)
                cmpi.l  #1,arg_10(a6)
                blt.w   loc_FFC619A8
                movea.l arg_C(a6),a0
                cmpa.w  #0,a0
                bne.s   loc_FFC617E4
                clr.w   d2
                clr.w   d3
                bra.s   loc_FFC617EA
; ---------------------------------------------------------------------------

loc_FFC617E4:                           ; CODE XREF: sub_FFC617C0+1C↑j
                move.w  (a0),d2
                move.w  2(a0),d3

loc_FFC617EA:                           ; CODE XREF: sub_FFC617C0+22↑j
                movea.l arg_18(a6),a2
                movea.l arg_14(a6),a3
                move.w  #$7F0,d6
                movea.w #$10,a5
                move.w  #$8080,d7
                move.l  arg_0(a6),d0
                subq.l  #1,d0
                lsl.l   #1,d0
                adda.l  d0,a2
                movea.l arg_4(a6),a1
                subq.l  #1,a1
                adda.l  a1,a1

loc_FFC61810:                           ; CODE XREF: sub_FFC617C0+1D4↓j
                move.b  (a2)+,d4
                moveq   #7,d1
                and.b   d4,d1
                add.w   d1,d1
                lea     dword_FFC60D30(pc),a4
                adda.w  d1,a4
                move.w  d2,d1
                move.w  d2,d0
                asr.w   #5,d0
                sub.w   d0,d2
                add.w   (a4),d2
                bge.s   loc_FFC6182C
                moveq   #0,d2

loc_FFC6182C:                           ; CODE XREF: sub_FFC617C0+68↑j
                and.w   d6,d1
                add.w   a5,d1
                adda.w  d1,a4
                add.w   (a4),d3
                bvc.s   loc_FFC61842
                bmi.s   loc_FFC6183E
                move.w  #$8001,d3
                bra.s   loc_FFC61842
; ---------------------------------------------------------------------------

loc_FFC6183E:                           ; CODE XREF: sub_FFC617C0+76↑j
                move.w  #$7FFF,d3

loc_FFC61842:                           ; CODE XREF: sub_FFC617C0+74↑j
                                        ; sub_FFC617C0+7C↑j
                move.w  d3,d0
                move.w  d0,d5
                andi.w  #$FF00,d5
                asr.w   #3,d0
                sub.w   d0,d3
                lsr.w   #2,d4
                moveq   #6,d1
                and.b   d4,d1
                lea     dword_FFC60520(pc),a4
                adda.w  d1,a4
                move.w  d2,d1
                move.w  d2,d0
                asr.w   #5,d0
                sub.w   d0,d2
                add.w   (a4),d2
                bge.s   loc_FFC61868
                moveq   #0,d2

loc_FFC61868:                           ; CODE XREF: sub_FFC617C0+A4↑j
                and.w   d6,d1
                add.w   a5,d1
                adda.w  d1,a4
                add.w   (a4),d3
                bvc.s   loc_FFC6187E
                bmi.s   loc_FFC6187A
                move.w  #$8001,d3
                bra.s   loc_FFC6187E
; ---------------------------------------------------------------------------

loc_FFC6187A:                           ; CODE XREF: sub_FFC617C0+B2↑j
                move.w  #$7FFF,d3

loc_FFC6187E:                           ; CODE XREF: sub_FFC617C0+B0↑j
                                        ; sub_FFC617C0+B8↑j
                move.w  d3,d0
                asr.w   #3,d0
                sub.w   d0,d3
                lsr.w   #5,d0
                andi.w  #$FF,d0
                or.w    d0,d5
                eor.w   d7,d5
                move.w  d5,(a3)+
                lsr.w   #2,d4
                moveq   #$E,d1
                and.b   d4,d1
                lea     dword_FFC60D30(pc),a4
                adda.w  d1,a4
                move.w  d2,d1
                move.w  d2,d0
                asr.w   #5,d0
                sub.w   d0,d2
                add.w   (a4),d2
                bge.s   loc_FFC618AA
                moveq   #0,d2

loc_FFC618AA:                           ; CODE XREF: sub_FFC617C0+E6↑j
                and.w   d6,d1
                add.w   a5,d1
                adda.w  d1,a4
                add.w   (a4),d3
                bvc.s   loc_FFC618C0
                bmi.s   loc_FFC618BC
                move.w  #$8001,d3
                bra.s   loc_FFC618C0
; ---------------------------------------------------------------------------

loc_FFC618BC:                           ; CODE XREF: sub_FFC617C0+F4↑j
                move.w  #$7FFF,d3

loc_FFC618C0:                           ; CODE XREF: sub_FFC617C0+F2↑j
                                        ; sub_FFC617C0+FA↑j
                move.w  d3,d0
                move.w  d0,d5
                andi.w  #$FF00,d5
                asr.w   #3,d0
                sub.w   d0,d3
                move.b  (a2)+,d4
                moveq   #7,d1
                and.b   d4,d1
                add.w   d1,d1
                lea     dword_FFC60D30(pc),a4
                adda.w  d1,a4
                move.w  d2,d1
                move.w  d2,d0
                asr.w   #5,d0
                sub.w   d0,d2
                add.w   (a4),d2
                bge.s   loc_FFC618E8
                moveq   #0,d2

loc_FFC618E8:                           ; CODE XREF: sub_FFC617C0+124↑j
                and.w   d6,d1
                add.w   a5,d1
                adda.w  d1,a4
                add.w   (a4),d3
                bvc.s   loc_FFC618FE
                bmi.s   loc_FFC618FA
                move.w  #$8001,d3
                bra.s   loc_FFC618FE
; ---------------------------------------------------------------------------

loc_FFC618FA:                           ; CODE XREF: sub_FFC617C0+132↑j
                move.w  #$7FFF,d3

loc_FFC618FE:                           ; CODE XREF: sub_FFC617C0+130↑j
                                        ; sub_FFC617C0+138↑j
                move.w  d3,d0
                asr.w   #3,d0
                sub.w   d0,d3
                lsr.w   #5,d0
                andi.w  #$FF,d0
                or.w    d0,d5
                eor.w   d7,d5
                move.w  d5,(a3)+
                lsr.w   #2,d4
                moveq   #6,d1
                and.b   d4,d1
                lea     dword_FFC60520(pc),a4
                adda.w  d1,a4
                move.w  d2,d1
                move.w  d2,d0
                asr.w   #5,d0
                sub.w   d0,d2
                add.w   (a4),d2
                bge.s   loc_FFC6192A
                moveq   #0,d2

loc_FFC6192A:                           ; CODE XREF: sub_FFC617C0+166↑j
                and.w   d6,d1
                add.w   a5,d1
                adda.w  d1,a4
                add.w   (a4),d3
                bvc.s   loc_FFC61940
                bmi.s   loc_FFC6193C
                move.w  #$8001,d3
                bra.s   loc_FFC61940
; ---------------------------------------------------------------------------

loc_FFC6193C:                           ; CODE XREF: sub_FFC617C0+174↑j
                move.w  #$7FFF,d3

loc_FFC61940:                           ; CODE XREF: sub_FFC617C0+172↑j
                                        ; sub_FFC617C0+17A↑j
                move.w  d3,d0
                move.w  d0,d5
                andi.w  #$FF00,d5
                asr.w   #3,d0
                sub.w   d0,d3
                lsr.w   #2,d4
                moveq   #$E,d1
                and.b   d4,d1
                lea     dword_FFC60D30(pc),a4
                adda.w  d1,a4
                move.w  d2,d1
                move.w  d2,d0
                asr.w   #5,d0
                sub.w   d0,d2
                add.w   (a4),d2
                bge.s   loc_FFC61966
                moveq   #0,d2

loc_FFC61966:                           ; CODE XREF: sub_FFC617C0+1A2↑j
                and.w   d6,d1
                add.w   a5,d1
                adda.w  d1,a4
                add.w   (a4),d3
                bvc.s   loc_FFC6197C
                bmi.s   loc_FFC61978
                move.w  #$8001,d3
                bra.s   loc_FFC6197C
; ---------------------------------------------------------------------------

loc_FFC61978:                           ; CODE XREF: sub_FFC617C0+1B0↑j
                move.w  #$7FFF,d3

loc_FFC6197C:                           ; CODE XREF: sub_FFC617C0+1AE↑j
                                        ; sub_FFC617C0+1B6↑j
                move.w  d3,d0
                asr.w   #3,d0
                sub.w   d0,d3
                lsr.w   #5,d0
                andi.w  #$FF,d0
                or.w    d0,d5
                eor.w   d7,d5
                move.w  d5,(a3)+
                adda.l  a1,a2
                subq.l  #1,arg_10(a6)
                bne.w   loc_FFC61810
                movea.l arg_8(a6),a0
                cmpa.w  #0,a0
                beq.s   loc_FFC619A8
                move.w  d2,(a0)
                move.w  d3,2(a0)

loc_FFC619A8:                           ; CODE XREF: sub_FFC617C0+10↑j
                                        ; sub_FFC617C0+1E0↑j
                movem.l (sp)+,d0-d7/a0-a5
                movea.l 4(a6),a0
                unlk    a6
                adda.w  #$20,sp ; ' '
                jmp     (a0)
; End of function sub_FFC617C0

; ---------------------------------------------------------------------------

loc_FFC619B8:                           ; CODE XREF: ROM:FFC623F8↓j
                move.l  ([$2070],$54),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC619D0:                           ; DATA XREF: ROM:FFC07970↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20

                link    a6,#-4
                movem.l d0-d7/a0-a5,-(sp)
                cmpi.l  #6,arg_10(a6)
                blt.w   loc_FFC61DAC
                movea.l arg_C(a6),a0
                cmpa.w  #0,a0
                bne.s   loc_FFC61A08
                move.w  #$FC02,d6
                movea.w #$FC02,a5
                move.w  #$E00F,d7
                movea.w #$E00F,a4
                clr.w   d3
                clr.w   d4
                clr.w   d5
                suba.l  a2,a2
                bra.s   loc_FFC61A26
; ---------------------------------------------------------------------------

loc_FFC61A08:                           ; CODE XREF: sub_FFC619D0+1C↑j
                move.w  (a0),d6
                movea.w 2(a0),a5
                move.w  4(a0),d7
                movea.w 6(a0),a4
                move.w  8(a0),d3
                move.w  $A(a0),d4
                move.w  $C(a0),d5
                movea.w $E(a0),a2

loc_FFC61A26:                           ; CODE XREF: sub_FFC619D0+36↑j
                movea.l arg_18(a6),a0
                movea.l arg_14(a6),a1
                move.l  arg_0(a6),d0
                subq.l  #1,d0
                adda.l  d0,a0
                move.l  arg_4(a6),var_4(a6)
                subq.l  #1,var_4(a6)

loc_FFC61A40:                           ; CODE XREF: sub_FFC619D0+3B0↓j
                moveq   #$FFFFFF80,d1
                add.b   (a0)+,d1
                adda.l  var_4(a6),a0
                ext.w   d1
                asl.w   #4,d1
                add.w   d6,d1
                sub.w   a5,d1
                asr.w   #1,d1
                move.w  a5,d0
                add.w   d6,d0
                add.w   d6,d0
                add.w   d1,d0
                movea.w d6,a5
                move.w  d1,d6
                movea.w d7,a4
                asr.w   #1,d7
                add.w   d0,d7
                moveq   #$FFFFFF80,d0
                add.b   (a0)+,d0
                adda.l  var_4(a6),a0
                ext.w   d0
                asl.w   #4,d0
                add.w   d6,d0
                sub.w   a5,d0
                asr.w   #1,d0
                move.w  a5,d1
                add.w   d6,d1
                add.w   d6,d1
                add.w   d0,d1
                movea.w d6,a5
                move.w  d0,d6
                move.w  a4,d0
                add.w   d7,d0
                add.w   d7,d0
                movea.w d7,a4
                asr.w   #1,d7
                add.w   d1,d7
                add.w   d7,d0
                sub.w   d4,d0
                bvc.s   loc_FFC61AA0
                bmi.s   loc_FFC61A9C
                move.w  #$8001,d0
                bra.s   loc_FFC61AA0
; ---------------------------------------------------------------------------

loc_FFC61A9C:                           ; CODE XREF: sub_FFC619D0+C4↑j
                move.w  #$7FFF,d0

loc_FFC61AA0:                           ; CODE XREF: sub_FFC619D0+C2↑j
                                        ; sub_FFC619D0+CA↑j
                move.w  d3,d1
                asr.w   #4,d1
                add.w   d1,d1
                lea     dword_FFC60420(pc),a3
                adda.w  d1,a3
                muls.w  (a3),d0
                swap    d0
                or.w    d0,d0
                bmi.s   loc_FFC61AD6
                cmpi.w  #$15,d0
                bgt.s   loc_FFC61ABE
                moveq   #0,d2
                bra.s   loc_FFC61AF8
; ---------------------------------------------------------------------------

loc_FFC61ABE:                           ; CODE XREF: sub_FFC619D0+E8↑j
                cmpi.w  #$2B,d0 ; '+'
                bgt.s   loc_FFC61AC8
                moveq   #1,d2
                bra.s   loc_FFC61AF8
; ---------------------------------------------------------------------------

loc_FFC61AC8:                           ; CODE XREF: sub_FFC619D0+F2↑j
                cmpi.w  #$48,d0 ; 'H'
                bgt.s   loc_FFC61AD2
                moveq   #2,d2
                bra.s   loc_FFC61AF8
; ---------------------------------------------------------------------------

loc_FFC61AD2:                           ; CODE XREF: sub_FFC619D0+FC↑j
                moveq   #3,d2
                bra.s   loc_FFC61AF8
; ---------------------------------------------------------------------------

loc_FFC61AD6:                           ; CODE XREF: sub_FFC619D0+E2↑j
                not.w   d0
                cmpi.w  #$15,d0
                bgt.s   loc_FFC61AE2
                moveq   #7,d2
                bra.s   loc_FFC61AF8
; ---------------------------------------------------------------------------

loc_FFC61AE2:                           ; CODE XREF: sub_FFC619D0+10C↑j
                cmpi.w  #$2B,d0 ; '+'
                bgt.s   loc_FFC61AEC
                moveq   #6,d2
                bra.s   loc_FFC61AF8
; ---------------------------------------------------------------------------

loc_FFC61AEC:                           ; CODE XREF: sub_FFC619D0+116↑j
                cmpi.w  #$48,d0 ; 'H'
                bgt.s   loc_FFC61AF6
                moveq   #5,d2
                bra.s   loc_FFC61AF8
; ---------------------------------------------------------------------------

loc_FFC61AF6:                           ; CODE XREF: sub_FFC619D0+120↑j
                moveq   #4,d2

loc_FFC61AF8:                           ; CODE XREF: sub_FFC619D0+EC↑j
                                        ; sub_FFC619D0+F6↑j ...
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                lea     dword_FFC60D30(pc),a3
                adda.w  d2,a3
                adda.w  d2,a3
                add.w   (a3),d3
                bge.s   loc_FFC61B0C
                clr.w   d3

loc_FFC61B0C:                           ; CODE XREF: sub_FFC619D0+138↑j
                asl.w   #3,d1
                lea     $10(a3),a3
                adda.w  d1,a3
                move.w  (a3),d0
                move.w  a2,d1
                eor.w   d0,d1
                bmi.s   loc_FFC61B3A
                add.w   d4,d0
                bvc.s   loc_FFC61B2C
                bmi.s   loc_FFC61B28
                move.w  #$8001,d0
                bra.s   loc_FFC61B2C
; ---------------------------------------------------------------------------

loc_FFC61B28:                           ; CODE XREF: sub_FFC619D0+150↑j
                move.w  #$7FFF,d0

loc_FFC61B2C:                           ; CODE XREF: sub_FFC619D0+14E↑j
                                        ; sub_FFC619D0+156↑j
                movea.w d0,a2
                addi.w  #$1FA,d5
                bvc.s   loc_FFC61B38
                move.w  #$7FFF,d5

loc_FFC61B38:                           ; CODE XREF: sub_FFC619D0+162↑j
                bra.s   loc_FFC61B56
; ---------------------------------------------------------------------------

loc_FFC61B3A:                           ; CODE XREF: sub_FFC619D0+14A↑j
                add.w   d4,d0
                bvc.s   loc_FFC61B4A
                bmi.s   loc_FFC61B46
                move.w  #$8001,d0
                bra.s   loc_FFC61B4A
; ---------------------------------------------------------------------------

loc_FFC61B46:                           ; CODE XREF: sub_FFC619D0+16E↑j
                move.w  #$7FFF,d0

loc_FFC61B4A:                           ; CODE XREF: sub_FFC619D0+16C↑j
                                        ; sub_FFC619D0+174↑j
                movea.w d0,a2
                subi.w  #$13A,d5
                bvc.s   loc_FFC61B56
                move.w  #$8001,d5

loc_FFC61B56:                           ; CODE XREF: sub_FFC619D0:loc_FFC61B38↑j
                                        ; sub_FFC619D0+180↑j
                muls.w  d5,d0
                add.l   d0,d0
                swap    d0
                move.w  d0,d4
                asl.b   #5,d2
                move.b  d2,(a1)
                moveq   #$FFFFFF80,d1
                add.b   (a0)+,d1
                adda.l  var_4(a6),a0
                ext.w   d1
                asl.w   #4,d1
                add.w   d6,d1
                sub.w   a5,d1
                asr.w   #1,d1
                move.w  a5,d0
                add.w   d6,d0
                add.w   d6,d0
                add.w   d1,d0
                movea.w d6,a5
                move.w  d1,d6
                movea.w d7,a4
                asr.w   #1,d7
                add.w   d0,d7
                moveq   #$FFFFFF80,d0
                add.b   (a0)+,d0
                adda.l  var_4(a6),a0
                ext.w   d0
                asl.w   #4,d0
                add.w   d6,d0
                sub.w   a5,d0
                asr.w   #1,d0
                move.w  a5,d1
                add.w   d6,d1
                add.w   d6,d1
                add.w   d0,d1
                movea.w d6,a5
                move.w  d0,d6
                move.w  a4,d0
                add.w   d7,d0
                add.w   d7,d0
                movea.w d7,a4
                asr.w   #1,d7
                add.w   d1,d7
                add.w   d7,d0
                sub.w   d4,d0
                bvc.s   loc_FFC61BC2
                bmi.s   loc_FFC61BBE
                move.w  #$8001,d0
                bra.s   loc_FFC61BC2
; ---------------------------------------------------------------------------

loc_FFC61BBE:                           ; CODE XREF: sub_FFC619D0+1E6↑j
                move.w  #$7FFF,d0

loc_FFC61BC2:                           ; CODE XREF: sub_FFC619D0+1E4↑j
                                        ; sub_FFC619D0+1EC↑j
                move.w  d3,d1
                asr.w   #4,d1
                add.w   d1,d1
                lea     dword_FFC60420(pc),a3
                adda.w  d1,a3
                muls.w  (a3),d0
                swap    d0
                or.w    d0,d0
                bmi.s   loc_FFC61BE4
                cmpi.w  #$25,d0 ; '%'
                bgt.s   loc_FFC61BE0
                moveq   #0,d2
                bra.s   loc_FFC61BF2
; ---------------------------------------------------------------------------

loc_FFC61BE0:                           ; CODE XREF: sub_FFC619D0+20A↑j
                moveq   #1,d2
                bra.s   loc_FFC61BF2
; ---------------------------------------------------------------------------

loc_FFC61BE4:                           ; CODE XREF: sub_FFC619D0+204↑j
                not.w   d0
                cmpi.w  #$25,d0 ; '%'
                bgt.s   loc_FFC61BF0
                moveq   #3,d2
                bra.s   loc_FFC61BF2
; ---------------------------------------------------------------------------

loc_FFC61BF0:                           ; CODE XREF: sub_FFC619D0+21A↑j
                moveq   #2,d2

loc_FFC61BF2:                           ; CODE XREF: sub_FFC619D0+20E↑j
                                        ; sub_FFC619D0+212↑j ...
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                lea     dword_FFC60520(pc),a3
                adda.w  d2,a3
                adda.w  d2,a3
                add.w   (a3),d3
                bge.s   loc_FFC61C06
                clr.w   d3

loc_FFC61C06:                           ; CODE XREF: sub_FFC619D0+232↑j
                asl.w   #3,d1
                lea     $10(a3),a3
                adda.w  d1,a3
                move.w  (a3),d0
                move.w  a2,d1
                eor.w   d0,d1
                bmi.s   loc_FFC61C34
                add.w   d4,d0
                bvc.s   loc_FFC61C26
                bmi.s   loc_FFC61C22
                move.w  #$8001,d0
                bra.s   loc_FFC61C26
; ---------------------------------------------------------------------------

loc_FFC61C22:                           ; CODE XREF: sub_FFC619D0+24A↑j
                move.w  #$7FFF,d0

loc_FFC61C26:                           ; CODE XREF: sub_FFC619D0+248↑j
                                        ; sub_FFC619D0+250↑j
                movea.w d0,a2
                addi.w  #$1FA,d5
                bvc.s   loc_FFC61C32
                move.w  #$7FFF,d5

loc_FFC61C32:                           ; CODE XREF: sub_FFC619D0+25C↑j
                bra.s   loc_FFC61C50
; ---------------------------------------------------------------------------

loc_FFC61C34:                           ; CODE XREF: sub_FFC619D0+244↑j
                add.w   d4,d0
                bvc.s   loc_FFC61C44
                bmi.s   loc_FFC61C40
                move.w  #$8001,d0
                bra.s   loc_FFC61C44
; ---------------------------------------------------------------------------

loc_FFC61C40:                           ; CODE XREF: sub_FFC619D0+268↑j
                move.w  #$7FFF,d0

loc_FFC61C44:                           ; CODE XREF: sub_FFC619D0+266↑j
                                        ; sub_FFC619D0+26E↑j
                movea.w d0,a2
                subi.w  #$13A,d5
                bvc.s   loc_FFC61C50
                move.w  #$8001,d5

loc_FFC61C50:                           ; CODE XREF: sub_FFC619D0:loc_FFC61C32↑j
                                        ; sub_FFC619D0+27A↑j
                muls.w  d5,d0
                add.l   d0,d0
                swap    d0
                move.w  d0,d4
                asl.b   #3,d2
                add.b   d2,(a1)
                moveq   #$FFFFFF80,d1
                add.b   (a0)+,d1
                adda.l  var_4(a6),a0
                ext.w   d1
                asl.w   #4,d1
                add.w   d6,d1
                sub.w   a5,d1
                asr.w   #1,d1
                move.w  a5,d0
                add.w   d6,d0
                add.w   d6,d0
                add.w   d1,d0
                movea.w d6,a5
                move.w  d1,d6
                movea.w d7,a4
                asr.w   #1,d7
                add.w   d0,d7
                moveq   #$FFFFFF80,d0
                add.b   (a0)+,d0
                adda.l  var_4(a6),a0
                ext.w   d0
                asl.w   #4,d0
                add.w   d6,d0
                sub.w   a5,d0
                asr.w   #1,d0
                move.w  a5,d1
                add.w   d6,d1
                add.w   d6,d1
                add.w   d0,d1
                movea.w d6,a5
                move.w  d0,d6
                move.w  a4,d0
                add.w   d7,d0
                add.w   d7,d0
                movea.w d7,a4
                asr.w   #1,d7
                add.w   d1,d7
                add.w   d7,d0
                sub.w   d4,d0
                bvc.s   loc_FFC61CBC
                bmi.s   loc_FFC61CB8
                move.w  #$8001,d0
                bra.s   loc_FFC61CBC
; ---------------------------------------------------------------------------

loc_FFC61CB8:                           ; CODE XREF: sub_FFC619D0+2E0↑j
                move.w  #$7FFF,d0

loc_FFC61CBC:                           ; CODE XREF: sub_FFC619D0+2DE↑j
                                        ; sub_FFC619D0+2E6↑j
                move.w  d3,d1
                asr.w   #4,d1
                add.w   d1,d1
                lea     dword_FFC60420(pc),a3
                adda.w  d1,a3
                muls.w  (a3),d0
                swap    d0
                or.w    d0,d0
                bmi.s   loc_FFC61CF2
                cmpi.w  #$15,d0
                bgt.s   loc_FFC61CDA
                moveq   #0,d2
                bra.s   loc_FFC61D14
; ---------------------------------------------------------------------------

loc_FFC61CDA:                           ; CODE XREF: sub_FFC619D0+304↑j
                cmpi.w  #$2B,d0 ; '+'
                bgt.s   loc_FFC61CE4
                moveq   #1,d2
                bra.s   loc_FFC61D14
; ---------------------------------------------------------------------------

loc_FFC61CE4:                           ; CODE XREF: sub_FFC619D0+30E↑j
                cmpi.w  #$48,d0 ; 'H'
                bgt.s   loc_FFC61CEE
                moveq   #2,d2
                bra.s   loc_FFC61D14
; ---------------------------------------------------------------------------

loc_FFC61CEE:                           ; CODE XREF: sub_FFC619D0+318↑j
                moveq   #3,d2
                bra.s   loc_FFC61D14
; ---------------------------------------------------------------------------

loc_FFC61CF2:                           ; CODE XREF: sub_FFC619D0+2FE↑j
                not.w   d0
                cmpi.w  #$15,d0
                bgt.s   loc_FFC61CFE
                moveq   #7,d2
                bra.s   loc_FFC61D14
; ---------------------------------------------------------------------------

loc_FFC61CFE:                           ; CODE XREF: sub_FFC619D0+328↑j
                cmpi.w  #$2B,d0 ; '+'
                bgt.s   loc_FFC61D08
                moveq   #6,d2
                bra.s   loc_FFC61D14
; ---------------------------------------------------------------------------

loc_FFC61D08:                           ; CODE XREF: sub_FFC619D0+332↑j
                cmpi.w  #$48,d0 ; 'H'
                bgt.s   loc_FFC61D12
                moveq   #5,d2
                bra.s   loc_FFC61D14
; ---------------------------------------------------------------------------

loc_FFC61D12:                           ; CODE XREF: sub_FFC619D0+33C↑j
                moveq   #4,d2

loc_FFC61D14:                           ; CODE XREF: sub_FFC619D0+308↑j
                                        ; sub_FFC619D0+312↑j ...
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                lea     dword_FFC60D30(pc),a3
                adda.w  d2,a3
                adda.w  d2,a3
                add.w   (a3),d3
                bge.s   loc_FFC61D28
                clr.w   d3

loc_FFC61D28:                           ; CODE XREF: sub_FFC619D0+354↑j
                asl.w   #3,d1
                lea     $10(a3),a3
                adda.w  d1,a3
                move.w  (a3),d0
                move.w  a2,d1
                eor.w   d0,d1
                bmi.s   loc_FFC61D56
                add.w   d4,d0
                bvc.s   loc_FFC61D48
                bmi.s   loc_FFC61D44
                move.w  #$8001,d0
                bra.s   loc_FFC61D48
; ---------------------------------------------------------------------------

loc_FFC61D44:                           ; CODE XREF: sub_FFC619D0+36C↑j
                move.w  #$7FFF,d0

loc_FFC61D48:                           ; CODE XREF: sub_FFC619D0+36A↑j
                                        ; sub_FFC619D0+372↑j
                movea.w d0,a2
                addi.w  #$1FA,d5
                bvc.s   loc_FFC61D54
                move.w  #$7FFF,d5

loc_FFC61D54:                           ; CODE XREF: sub_FFC619D0+37E↑j
                bra.s   loc_FFC61D72
; ---------------------------------------------------------------------------

loc_FFC61D56:                           ; CODE XREF: sub_FFC619D0+366↑j
                add.w   d4,d0
                bvc.s   loc_FFC61D66
                bmi.s   loc_FFC61D62
                move.w  #$8001,d0
                bra.s   loc_FFC61D66
; ---------------------------------------------------------------------------

loc_FFC61D62:                           ; CODE XREF: sub_FFC619D0+38A↑j
                move.w  #$7FFF,d0

loc_FFC61D66:                           ; CODE XREF: sub_FFC619D0+388↑j
                                        ; sub_FFC619D0+390↑j
                movea.w d0,a2
                subi.w  #$13A,d5
                bvc.s   loc_FFC61D72
                move.w  #$8001,d5

loc_FFC61D72:                           ; CODE XREF: sub_FFC619D0:loc_FFC61D54↑j
                                        ; sub_FFC619D0+39C↑j
                muls.w  d5,d0
                add.l   d0,d0
                swap    d0
                move.w  d0,d4
                add.b   d2,(a1)+
                subq.l  #6,arg_10(a6)
                bgt.w   loc_FFC61A40
                movea.l arg_8(a6),a0
                cmpa.w  #0,a0
                beq.s   loc_FFC61DAC
                move.w  d6,(a0)
                move.w  a5,2(a0)
                move.w  d7,4(a0)
                move.w  a4,6(a0)
                move.w  d3,8(a0)
                move.w  d4,$A(a0)
                move.w  d5,$C(a0)
                move.w  a2,$E(a0)

loc_FFC61DAC:                           ; CODE XREF: sub_FFC619D0+10↑j
                                        ; sub_FFC619D0+3BC↑j
                movem.l (sp)+,d0-d7/a0-a5
                movea.l 4(a6),a0
                unlk    a6
                adda.w  #$20,sp ; ' '
                jmp     (a0)
; End of function sub_FFC619D0

; ---------------------------------------------------------------------------

loc_FFC61DBC:                           ; CODE XREF: ROM:FFC623FC↓j
                move.l  ([$2070],$20),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC61DD0:                           ; DATA XREF: ROM:FFC079A8↑o

var_4           = -4
var_2           = -2
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20

                link    a6,#-4
                movem.l d0-d7/a0-a5,-(sp)
                cmpi.l  #1,arg_10(a6)
                blt.w   loc_FFC62010
                movea.l arg_C(a6),a0
                cmpa.w  #0,a0
                bne.s   loc_FFC61DFC
                suba.l  a4,a4
                move.w  a4,d5
                move.w  a4,d3
                movea.w a4,a5
                move.w  a4,d4
                move.w  a4,d2
                bra.s   loc_FFC61E12
; ---------------------------------------------------------------------------

loc_FFC61DFC:                           ; CODE XREF: sub_FFC61DD0+1C↑j
                movea.w (a0),a4
                move.w  2(a0),d5
                move.w  4(a0),d3
                movea.w 6(a0),a5
                move.w  8(a0),d4
                move.w  $A(a0),d2

loc_FFC61E12:                           ; CODE XREF: sub_FFC61DD0+2A↑j
                movea.l arg_18(a6),a0
                movea.l arg_14(a6),a2
                move.w  #$7F0,d6
                move.w  #$10,d7
                move.l  arg_0(a6),d0
                subq.l  #1,d0
                adda.l  d0,a0
                movea.l arg_4(a6),a3
                subq.l  #1,a3

loc_FFC61E30:                           ; CODE XREF: sub_FFC61DD0+21C↓j
                move.b  (a0)+,d1
                moveq   #7,d0
                and.w   d1,d0
                add.w   d0,d0
                move.w  d0,var_2(a6)
                lsr.w   #2,d1
                moveq   #6,d0
                and.w   d1,d0
                move.w  d0,var_4(a6)
                lsr.w   #2,d1
                andi.w  #$E,d1
                lea     dword_FFC60D30(pc),a1
                adda.w  d1,a1
                move.w  d3,d1
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                add.w   (a1),d3
                bge.s   loc_FFC61E60
                clr.w   d3

loc_FFC61E60:                           ; CODE XREF: sub_FFC61DD0+8C↑j
                and.w   d6,d1
                add.w   d7,d1
                adda.w  d1,a1
                move.w  (a1),d0
                eor.w   d0,d2
                bmi.s   loc_FFC61E8A
                add.w   a5,d0
                bvc.s   loc_FFC61E7C
                bmi.s   loc_FFC61E78
                move.w  #$8001,d0
                bra.s   loc_FFC61E7C
; ---------------------------------------------------------------------------

loc_FFC61E78:                           ; CODE XREF: sub_FFC61DD0+A0↑j
                move.w  #$7FFF,d0

loc_FFC61E7C:                           ; CODE XREF: sub_FFC61DD0+9E↑j
                                        ; sub_FFC61DD0+A6↑j
                move.w  d0,d2
                addi.w  #$1FA,d4
                bvc.s   loc_FFC61E88
                move.w  #$7FFF,d4

loc_FFC61E88:                           ; CODE XREF: sub_FFC61DD0+B2↑j
                bra.s   loc_FFC61EA6
; ---------------------------------------------------------------------------

loc_FFC61E8A:                           ; CODE XREF: sub_FFC61DD0+9A↑j
                add.w   a5,d0
                bvc.s   loc_FFC61E9A
                bmi.s   loc_FFC61E96
                move.w  #$8001,d0
                bra.s   loc_FFC61E9A
; ---------------------------------------------------------------------------

loc_FFC61E96:                           ; CODE XREF: sub_FFC61DD0+BE↑j
                move.w  #$7FFF,d0

loc_FFC61E9A:                           ; CODE XREF: sub_FFC61DD0+BC↑j
                                        ; sub_FFC61DD0+C4↑j
                move.w  d0,d2
                subi.w  #$13A,d4
                bvc.s   loc_FFC61EA6
                move.w  #$8001,d4

loc_FFC61EA6:                           ; CODE XREF: sub_FFC61DD0:loc_FFC61E88↑j
                                        ; sub_FFC61DD0+D0↑j
                muls.w  d4,d0
                add.l   d0,d0
                swap    d0
                movea.w d0,a5
                asr.w   #1,d2
                move.w  d5,d1
                sub.w   d2,d1
                asr.w   #2,d1
                move.w  d5,d0
                add.w   a4,d0
                sub.w   d1,d0
                move.w  a4,d5
                movea.w d2,a4
                add.w   a4,d1
                add.w   d5,d1
                andi.w  #$FF00,d0
                lsr.w   #8,d1
                or.w    d0,d1
                eori.w  #$8080,d1
                move.w  d1,(a2)+
                move.w  var_4(a6),d1
                lea     dword_FFC60520(pc),a1
                adda.w  d1,a1
                move.w  d3,d1
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                add.w   (a1),d3
                bge.s   loc_FFC61EEA
                clr.w   d3

loc_FFC61EEA:                           ; CODE XREF: sub_FFC61DD0+116↑j
                and.w   d6,d1
                add.w   d7,d1
                adda.w  d1,a1
                move.w  (a1),d0
                eor.w   d0,d2
                bmi.s   loc_FFC61F14
                add.w   a5,d0
                bvc.s   loc_FFC61F06
                bmi.s   loc_FFC61F02
                move.w  #$8001,d0
                bra.s   loc_FFC61F06
; ---------------------------------------------------------------------------

loc_FFC61F02:                           ; CODE XREF: sub_FFC61DD0+12A↑j
                move.w  #$7FFF,d0

loc_FFC61F06:                           ; CODE XREF: sub_FFC61DD0+128↑j
                                        ; sub_FFC61DD0+130↑j
                move.w  d0,d2
                addi.w  #$1FA,d4
                bvc.s   loc_FFC61F12
                move.w  #$7FFF,d4

loc_FFC61F12:                           ; CODE XREF: sub_FFC61DD0+13C↑j
                bra.s   loc_FFC61F30
; ---------------------------------------------------------------------------

loc_FFC61F14:                           ; CODE XREF: sub_FFC61DD0+124↑j
                add.w   a5,d0
                bvc.s   loc_FFC61F24
                bmi.s   loc_FFC61F20
                move.w  #$8001,d0
                bra.s   loc_FFC61F24
; ---------------------------------------------------------------------------

loc_FFC61F20:                           ; CODE XREF: sub_FFC61DD0+148↑j
                move.w  #$7FFF,d0

loc_FFC61F24:                           ; CODE XREF: sub_FFC61DD0+146↑j
                                        ; sub_FFC61DD0+14E↑j
                move.w  d0,d2
                subi.w  #$13A,d4
                bvc.s   loc_FFC61F30
                move.w  #$8001,d4

loc_FFC61F30:                           ; CODE XREF: sub_FFC61DD0:loc_FFC61F12↑j
                                        ; sub_FFC61DD0+15A↑j
                muls.w  d4,d0
                add.l   d0,d0
                swap    d0
                movea.w d0,a5
                asr.w   #1,d2
                move.w  d5,d1
                sub.w   d2,d1
                asr.w   #2,d1
                move.w  d5,d0
                add.w   a4,d0
                sub.w   d1,d0
                move.w  a4,d5
                movea.w d2,a4
                add.w   a4,d1
                add.w   d5,d1
                andi.w  #$FF00,d0
                lsr.w   #8,d1
                or.w    d0,d1
                eori.w  #$8080,d1
                move.w  d1,(a2)+
                move.w  var_2(a6),d1
                lea     dword_FFC60D30(pc),a1
                adda.w  d1,a1
                move.w  d3,d1
                move.w  d3,d0
                asr.w   #5,d0
                sub.w   d0,d3
                add.w   (a1),d3
                bge.s   loc_FFC61F74
                clr.w   d3

loc_FFC61F74:                           ; CODE XREF: sub_FFC61DD0+1A0↑j
                and.w   d6,d1
                add.w   d7,d1
                adda.w  d1,a1
                move.w  (a1),d0
                eor.w   d0,d2
                bmi.s   loc_FFC61F9E
                add.w   a5,d0
                bvc.s   loc_FFC61F90
                bmi.s   loc_FFC61F8C
                move.w  #$8001,d0
                bra.s   loc_FFC61F90
; ---------------------------------------------------------------------------

loc_FFC61F8C:                           ; CODE XREF: sub_FFC61DD0+1B4↑j
                move.w  #$7FFF,d0

loc_FFC61F90:                           ; CODE XREF: sub_FFC61DD0+1B2↑j
                                        ; sub_FFC61DD0+1BA↑j
                move.w  d0,d2
                addi.w  #$1FA,d4
                bvc.s   loc_FFC61F9C
                move.w  #$7FFF,d4

loc_FFC61F9C:                           ; CODE XREF: sub_FFC61DD0+1C6↑j
                bra.s   loc_FFC61FBA
; ---------------------------------------------------------------------------

loc_FFC61F9E:                           ; CODE XREF: sub_FFC61DD0+1AE↑j
                add.w   a5,d0
                bvc.s   loc_FFC61FAE
                bmi.s   loc_FFC61FAA
                move.w  #$8001,d0
                bra.s   loc_FFC61FAE
; ---------------------------------------------------------------------------

loc_FFC61FAA:                           ; CODE XREF: sub_FFC61DD0+1D2↑j
                move.w  #$7FFF,d0

loc_FFC61FAE:                           ; CODE XREF: sub_FFC61DD0+1D0↑j
                                        ; sub_FFC61DD0+1D8↑j
                move.w  d0,d2
                subi.w  #$13A,d4
                bvc.s   loc_FFC61FBA
                move.w  #$8001,d4

loc_FFC61FBA:                           ; CODE XREF: sub_FFC61DD0:loc_FFC61F9C↑j
                                        ; sub_FFC61DD0+1E4↑j
                muls.w  d4,d0
                add.l   d0,d0
                swap    d0
                movea.w d0,a5
                asr.w   #1,d2
                move.w  d5,d1
                sub.w   d2,d1
                asr.w   #2,d1
                move.w  d5,d0
                add.w   a4,d0
                sub.w   d1,d0
                move.w  a4,d5
                movea.w d2,a4
                add.w   a4,d1
                add.w   d5,d1
                andi.w  #$FF00,d0
                lsr.w   #8,d1
                or.w    d0,d1
                eori.w  #$8080,d1
                move.w  d1,(a2)+
                adda.l  a3,a0
                subq.l  #1,arg_10(a6)
                bne.w   loc_FFC61E30
                movea.l arg_8(a6),a0
                cmpa.w  #0,a0
                beq.s   loc_FFC62010
                move.w  a4,(a0)
                move.w  d5,2(a0)
                move.w  d3,4(a0)
                move.w  a5,6(a0)
                move.w  d4,8(a0)
                move.w  d2,$A(a0)

loc_FFC62010:                           ; CODE XREF: sub_FFC61DD0+10↑j
                                        ; sub_FFC61DD0+228↑j
                movem.l (sp)+,d0-d7/a0-a5
                movea.l 4(a6),a0
                unlk    a6
                adda.w  #$20,sp ; ' '
                jmp     (a0)
; End of function sub_FFC61DD0

; ---------------------------------------------------------------------------

loc_FFC62020:                           ; CODE XREF: ROM:FFC62400↓j
                move.l  ([$2070],$58),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================


sub_FFC62030:                           ; DATA XREF: ROM:FFC07AA8↑o

arg_8           =  $C
arg_E           =  $12

                movea.l (sp)+,a0
                move.l  (sp)+,-4+arg_8(sp)
                move.l  (sp)+,d1
                beq.s   loc_FFC6207C
                move.l  (sp)+,d0
                beq.s   loc_FFC6207E
                movea.l d3,a1
                moveq   #1,d2
                swap    d2
                cmp.l   d2,d1
                bls.s   loc_FFC62066
                cmp.l   d2,d0
                bhi.s   loc_FFC620B2
                exg     d0,d1
                beq.s   loc_FFC62072

loc_FFC62050:                           ; CODE XREF: sub_FFC62030+3A↓j
                move.l  d0,d2
                swap    d2
                mulu.w  d1,d2
                mulu.w  d0,d1
                swap    d1
                add.w   d2,d1
                swap    d1
                swap    d2
                moveq   #0,d0
                addx.w  d2,d0
                bra.s   loc_FFC620DE
; ---------------------------------------------------------------------------

loc_FFC62066:                           ; CODE XREF: sub_FFC62030+16↑j
                beq.s   loc_FFC62072
                cmp.l   d2,d0
                bcc.s   loc_FFC62050
                mulu.w  d0,d1
                moveq   #0,d0
                bra.s   loc_FFC620DE
; ---------------------------------------------------------------------------

loc_FFC62072:                           ; CODE XREF: sub_FFC62030+1E↑j
                                        ; sub_FFC62030:loc_FFC62066↑j
                swap    d0
                move.l  d0,d1
                clr.w   d1
                eor.l   d1,d0
                bra.s   loc_FFC620DE
; ---------------------------------------------------------------------------

loc_FFC6207C:                           ; CODE XREF: sub_FFC62030+8↑j
                addq.l  #4,sp

loc_FFC6207E:                           ; CODE XREF: sub_FFC62030+C↑j
                tst.l   (sp)
                beq.s   loc_FFC62088
                clr.l   (sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC62086:                           ; CODE XREF: sub_FFC62030+BC↓j
                move.l  a1,d3

loc_FFC62088:                           ; CODE XREF: sub_FFC62030+50↑j
                moveq   #$FFFFFFFF,d1
                move.l  d1,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC6208E:                           ; CODE XREF: sub_FFC62030+84↓j
                exg     d0,d1
                move.w  d0,d3
                bne.s   loc_FFC6209E
                swap    d0
                swap    d1
                mulu.w  d1,d0
                moveq   #0,d1
                bra.s   loc_FFC620DE
; ---------------------------------------------------------------------------

loc_FFC6209E:                           ; CODE XREF: sub_FFC62030+62↑j
                                        ; sub_FFC62030+88↓j
                swap    d0
                swap    d1
                mulu.w  d1,d0
                mulu.w  d3,d1
                swap    d1
                moveq   #0,d2
                move.w  d1,d2
                clr.w   d1
                add.l   d2,d0
                bra.s   loc_FFC620DE
; ---------------------------------------------------------------------------

loc_FFC620B2:                           ; CODE XREF: sub_FFC62030+1A↑j
                move.w  d0,d3
                beq.s   loc_FFC6208E
                move.w  d1,d2
                beq.s   loc_FFC6209E
                swap    d0
                swap    d1
                mulu.w  d0,d2
                mulu.w  d1,d3
                add.l   d3,d2
                move.l  d0,d3
                mulu.w  d1,d0
                swap    d3
                swap    d1
                mulu.w  d3,d1
                move.l  d2,d3
                clr.w   d2
                addx.w  d2,d2
                swap    d2
                swap    d3
                clr.w   d3
                add.l   d3,d1
                addx.l  d2,d0

loc_FFC620DE:                           ; CODE XREF: sub_FFC62030+34↑j
                                        ; sub_FFC62030+40↑j ...
                move.l  (sp),d2
                move.l  d2,d3
                lsr.l   #1,d3
                add.l   d3,d1
                moveq   #0,d3
                addx.l  d3,d0
                cmp.l   d2,d0
                bcc.s   loc_FFC62086
                eor.l   d1,d0
                cmpi.l  #$10000,d2
                bcc.s   loc_FFC62100
                swap    d0
                swap    d1
                clr.w   d1
                swap    d2

loc_FFC62100:                           ; CODE XREF: sub_FFC62030+C6↑j
                moveq   #$FFFFFFFF,d3
                cmpi.l  #$1000000,d2
                bcc.s   loc_FFC6210E
                lsl.l   #8,d2
                moveq   #$FFFFFFF7,d3

loc_FFC6210E:                           ; CODE XREF: sub_FFC62030+D8↑j
                tst.l   d2
                bmi.s   loc_FFC6211A
                subq.w  #1,d3

loc_FFC62114:                           ; CODE XREF: sub_FFC62030+E6↓j
                add.l   d2,d2
                dbmi    d3,loc_FFC62114

loc_FFC6211A:                           ; CODE XREF: sub_FFC62030+E0↑j
                not.w   d3
                rol.l   d3,d0
                lsl.l   d3,d1
                eor.l   d1,d0
                tst.w   d2
                bne.s   loc_FFC62148
                move.l  a1,d3
                swap    d2
                cmpi.w  #$8000,d2
                bne.s   loc_FFC62138
                add.l   d1,d1
                addx.l  d0,d0
                move.l  d0,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC62138:                           ; CODE XREF: sub_FFC62030+FE↑j
                divu.w  d2,d0
                move.w  d0,(sp)
                swap    d1
                move.w  d1,d0
                divu.w  d2,d0
                move.w  d0,-$10+arg_E(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC62148:                           ; CODE XREF: sub_FFC62030+F4↑j
                move.l  d2,(sp)
                divu.w  (sp),d0
                bvs.s   loc_FFC62174
                move.w  d0,d3
                swap    d1
                move.w  d1,d0
                move.w  d3,d1
                mulu.w  d2,d3
                sub.l   d3,d0
                bcs.s   loc_FFC6217E
                divu.w  (sp),d0
                bvs.s   loc_FFC62188

loc_FFC62160:                           ; CODE XREF: sub_FFC62030+156↓j
                move.w  d0,d3
                swap    d1
                move.w  d1,d0
                move.w  d3,d1
                mulu.w  d2,d3
                sub.l   d3,d0
                bcs.s   loc_FFC62192

loc_FFC6216E:                           ; CODE XREF: sub_FFC62030+168↓j
                move.l  a1,d3
                move.l  d1,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC62174:                           ; CODE XREF: sub_FFC62030+11C↑j
                sub.l   d2,d0
                swap    d0
                swap    d1
                move.w  d1,d0
                clr.w   d1

loc_FFC6217E:                           ; CODE XREF: sub_FFC62030+12A↑j
                                        ; sub_FFC62030+152↓j
                subq.w  #1,d1
                add.l   d2,d0
                bcc.s   loc_FFC6217E
                divu.w  (sp),d0
                bvc.s   loc_FFC62160

loc_FFC62188:                           ; CODE XREF: sub_FFC62030+12E↑j
                sub.l   d2,d0
                swap    d0
                swap    d1
                move.w  d1,d0
                clr.w   d1

loc_FFC62192:                           ; CODE XREF: sub_FFC62030+13C↑j
                                        ; sub_FFC62030+166↓j
                subq.w  #1,d1
                add.l   d2,d0
                bcc.s   loc_FFC62192
                bra.s   loc_FFC6216E
; End of function sub_FFC62030

; ---------------------------------------------------------------------------

loc_FFC6219A:                           ; CODE XREF: ROM:FFC6250C↓j
                move.l  ([$2070],$158),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4
dword_FFC621B0: dc.l $21E71F26, $23EB3588, $260DFC14, $285145F3, $2AB70212
                                        ; DATA XREF: sub_FFC5F6B0+6A↑o
                dc.l $2D413CCD, $2FF221AF, $32CBFD4A, $35D13F33, $39047C0F
                dc.l $3C686FCE, $40000000, $43CE3E4B, $47D66B0F, $4C1BF829
                dc.l $50A28BE6, $556E0424, $5A82799A, $5FE4435E, $6597FA95
                dc.l $6BA27E65, $7208F81D, $78D0DF9C, 0
dword_FFC62210: dc.l $80828385, $8688898B, $8D8E9091, $93949697, $999A9C9D
                                        ; DATA XREF: sub_FFC5E8F0+1A↑o
                                        ; sub_FFC5E8F0:loc_FFC5E92E↑o
                dc.l $9FA1A2A4, $A5A6A8A9, $ABACAEAF, $B1B2B4B5, $B6B8B9BB
                dc.l $BCBDBFC0, $C1C3C4C5, $C7C8C9CA, $CCCDCECF, $D1D2D3D4
                dc.l $D5D6D8D9, $DADBDCDD, $DEDFE0E1, $E2E3E4E5, $E6E7E8E9
                dc.l $E9EAEBEC, $EDEDEEEF, $F0F0F1F2, $F2F3F4F4, $F5F5F6F7
                dc.l $F7F8F8F9, $F9F9FAFA, $FBFBFBFC, $FCFCFCFD, $FDFDFDFD
                dc.l $FEFEFEFE, $FEFEFFFF

; =============== S U B R O U T I N E =======================================


sub_FFC62290:                           ; CODE XREF: sub_FFC5DF90+C↑p
                                        ; sub_FFC5DF90+10↑p
                moveq   #$34,d0 ; '4'
                _NewPtrSys
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                move.l  a0,$2A(a1)
                lea     loc_FFC622F4(pc),a1
                move.l  a1,(a0)+
                moveq   #7,d1
                lea     loc_FFC6230C(pc),a1

loc_FFC622AC:                           ; CODE XREF: sub_FFC62290+1E↓j
                move.l  a1,(a0)+
                dbf     d1,loc_FFC622AC
                lea     loc_FFC62320(pc),a1
                move.l  a1,(a0)+
                lea     loc_FFC62350(pc),a1
                move.l  a1,(a0)+
                lea     loc_FFC62390(pc),a1
                move.l  a1,(a0)+
                lea     loc_FFC623C0(pc),a1
                move.l  a1,(a0)+
                lea     loc_FFC622E0(pc),a0
                move.l  #$A800,d0
                _SetToolTrapAddress
                rts
; End of function sub_FFC62290

; ---------------------------------------------------------------------------
                align 4

loc_FFC622E0:                           ; CODE XREF: ROM:FFC62338↓j
                                        ; DATA XREF: sub_FFC62290+3A↑o
                movea.l ($2B6).w,a0
                movea.l $110(a0),a0
                movea.l $2A(a0),a0
                movea.l (a0,d0.w),a0
                swap    d0
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC622F4:                           ; DATA XREF: sub_FFC62290+10↑o
                cmpi.w  #$10,d0
                bcc.s   loc_FFC6230C
                movea.l ($2B6).w,a0
                movea.l $110(a0),a0
                movea.l $2A(a0),a0
                movea.l $24(a0,d0.w),a0
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC6230C:                           ; CODE XREF: ROM:FFC622F8↑j
                                        ; DATA XREF: sub_FFC62290+18↑o ...
                tst.w   d0
                bne.s   locret_FFC62314
                clr.l   4(sp)

locret_FFC62314:                        ; CODE XREF: ROM:FFC6230E↑j
                rts
; ---------------------------------------------------------------------------
                align 4

loc_FFC62320:                           ; DATA XREF: sub_FFC62290+22↑o
                move.w  4(sp),d0
                beq.s   loc_FFC62342
                cmpi.w  #$24,d0 ; '$'
                bcc.s   loc_FFC6233C
                movea.l (sp),a0
                addq.l  #6,sp
                move.l  a0,-(sp)
                andi.l  #$FFFF,d0
                jmp     loc_FFC622E0
; ---------------------------------------------------------------------------

loc_FFC6233C:                           ; CODE XREF: ROM:FFC6232A↑j
                clr.l   6(sp)
                bra.s   loc_FFC6234A
; ---------------------------------------------------------------------------

loc_FFC62342:                           ; CODE XREF: ROM:FFC62324↑j
                move.l  #$1002001,6(sp)

loc_FFC6234A:                           ; CODE XREF: ROM:FFC62340↑j
                movea.l (sp),a0
                addq.l  #6,sp
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC62350:                           ; DATA XREF: sub_FFC62290+28↑o
                move.w  8(sp),d0
                cmpi.w  #$24,d0 ; '$'
                bge.s   loc_FFC62374
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                movea.l $2A(a1),a1
                movea.l 4(sp),a0
                move.l  a0,(a1,d0.w)
                clr.w   $A(sp)
                bra.s   loc_FFC6237A
; ---------------------------------------------------------------------------

loc_FFC62374:                           ; CODE XREF: ROM:FFC62358↑j
                move.w  #$FFCE,$A(sp)

loc_FFC6237A:                           ; CODE XREF: ROM:FFC62372↑j
                movea.l (sp),a0
                adda.w  #$A,sp
                jmp     (a0)
; ---------------------------------------------------------------------------
                align 4

loc_FFC62390:                           ; DATA XREF: sub_FFC62290+2E↑o
                move.w  4(sp),d0
                cmpi.w  #$24,d0 ; '$'
                bcc.s   loc_FFC623B4
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                movea.l $2A(a1),a1
                lea     loc_FFC6230C(pc),a0
                move.l  a0,(a1,d0.w)
                clr.w   6(sp)
                bra.s   loc_FFC623BA
; ---------------------------------------------------------------------------

loc_FFC623B4:                           ; CODE XREF: ROM:FFC62398↑j
                move.w  #$FFCE,6(sp)

loc_FFC623BA:                           ; CODE XREF: ROM:FFC623B2↑j
                movea.l (sp),a0
                addq.l  #6,sp
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC623C0:                           ; DATA XREF: sub_FFC62290+34↑o
                move.w  4(sp),d0
                cmpi.w  #$24,d0 ; '$'
                bcc.s   loc_FFC623E2
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                movea.l $2A(a1),a1
                move.l  (a1,d0.w),d0
                lea     loc_FFC6230C(pc),a0
                cmp.l   a0,d0
                bne.s   loc_FFC623E4

loc_FFC623E2:                           ; CODE XREF: ROM:FFC623C8↑j
                moveq   #0,d0

loc_FFC623E4:                           ; CODE XREF: ROM:FFC623E0↑j
                move.l  d0,6(sp)
                movea.l (sp),a0
                addq.l  #6,sp
                jmp     (a0)
; ---------------------------------------------------------------------------
                align 4

loc_FFC623F0:
                jmp     loc_FFC62412
; ---------------------------------------------------------------------------
                jmp     loc_FFC617B6
; ---------------------------------------------------------------------------
                jmp     loc_FFC619B8
; ---------------------------------------------------------------------------
                jmp     loc_FFC61DBC
; ---------------------------------------------------------------------------
                jmp     loc_FFC62020
; ---------------------------------------------------------------------------

loc_FFC62404:                           ; DATA XREF: sub_FFC5DF90+C4↑o
                clr.w   d1
                move.b  d0,d1
                cmpi.b  #$14,d1
                bcc.s   loc_FFC6241C
                jmp     loc_FFC623F0(pc,d1.w)
; ---------------------------------------------------------------------------

loc_FFC62412:                           ; CODE XREF: ROM:loc_FFC623F0↑j
                movea.l (sp)+,a0
                move.l  #$1018000,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC6241C:                           ; CODE XREF: ROM:FFC6240C↑j
                movea.l (sp)+,a0
                move.w  d0,d1
                lsr.w   #7,d1
                adda.w  d1,sp
                move.w  #$FFCE,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------
                align 4
dword_FFC62430: dc.l $FFFFFFFF          ; DATA XREF: sub_FFC5E090+4C↑o
                                        ; ROM:FFC6244E↓r
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
; ---------------------------------------------------------------------------
                clr.w   d1
                move.b  d0,d1
                cmpi.b  #$14,d1
                bcc.s   loc_FFC62454
                movea.l dword_FFC62430(pc,d1.w),a0
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC62454:                           ; CODE XREF: ROM:FFC6244C↑j
                movea.l (sp)+,a0
                move.w  d0,d1
                lsr.w   #7,d1
                adda.w  d1,sp
                move.w  #$FFCE,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------
word_FFC62462:  dc.w $32                ; DATA XREF: sub_FFC5E090+38↑o
                                        ; sub_FFC5E090+54↑o
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC62470:
                jmp     loc_FFC624B0
; ---------------------------------------------------------------------------
                jmp     loc_FFC624B0
; ---------------------------------------------------------------------------
                jmp     loc_FFC624B0
; ---------------------------------------------------------------------------
                jmp     loc_FFC5C4B0
; ---------------------------------------------------------------------------
                jmp     loc_FFC5C5D2
; ---------------------------------------------------------------------------
                jmp     loc_FFC5C640
; ---------------------------------------------------------------------------
                jmp     loc_FFC5C670
; ---------------------------------------------------------------------------
                jmp     loc_FFC5C6A2
; ---------------------------------------------------------------------------
                jmp     loc_FFC5C6FE

; =============== S U B R O U T I N E =======================================


sub_FFC62494:                           ; DATA XREF: sub_FFC5DF90+1A↑o
                clr.w   d1
                move.b  d0,d1
                cmpi.b  #$24,d1 ; '$'
                bcc.s   loc_FFC624A2
                jmp     loc_FFC62470(pc,d1.w)
; ---------------------------------------------------------------------------

loc_FFC624A2:                           ; CODE XREF: sub_FFC62494+8↑j
                movea.l (sp)+,a0
                move.w  d0,d1
                lsr.w   #7,d1
                adda.w  d1,sp
                move.w  #$FFCE,(sp)
                jmp     (a0)
; End of function sub_FFC62494

; ---------------------------------------------------------------------------

loc_FFC624B0:                           ; CODE XREF: ROM:loc_FFC62470↑j
                                        ; ROM:FFC62474↑j ...
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                movea.l $26(a1),a1
                movea.l $14(a1),a0
                lea     $18(a1),a1
                lsr.b   #1,d0
                move.l  ($668).w,-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================


sub_FFC624D0:                           ; DATA XREF: sub_FFC5DF90+3E↑o
                tst.b   d0
                bne.s   loc_FFC624DE
                movea.l (sp)+,a0
                move.l  #$1048000,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFC624DE:                           ; CODE XREF: sub_FFC624D0+2↑j
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                movea.l $26(a1),a1
                movea.l $E(a1),a0
                lea     $12(a1),a1
                lsr.b   #1,d0
                move.l  ($668).w,-(sp)
                rts
; End of function sub_FFC624D0

; ---------------------------------------------------------------------------
                align 4

loc_FFC62500:
                jmp     loc_FFC5C76C
; ---------------------------------------------------------------------------
                jmp     loc_FFC5C800
; ---------------------------------------------------------------------------
                jmp     loc_FFC5CF02
; ---------------------------------------------------------------------------
                jmp     loc_FFC6219A
; ---------------------------------------------------------------------------
                jmp     loc_FFC5CA8C
; ---------------------------------------------------------------------------
                jmp     loc_FFC5CC00
; ---------------------------------------------------------------------------
                jmp     loc_FFC5CC30
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D152
; ---------------------------------------------------------------------------
                jmp     loc_FFC5CFD8
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D1E8
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D21C
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D266
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D2C4
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D43C
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D376
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D4B0
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D510
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D57A
; ---------------------------------------------------------------------------
                jmp     loc_FFC5D5EA
; ---------------------------------------------------------------------------
                jmp     loc_FFC5CB86
; ---------------------------------------------------------------------------
                jmp     loc_FFC5FC6C
; ---------------------------------------------------------------------------
                jmp     loc_FFC5FCA6
; ---------------------------------------------------------------------------
                jmp     loc_FFC6002C
; ---------------------------------------------------------------------------
                jmp     loc_FFC601A6
; ---------------------------------------------------------------------------
                jmp     loc_FFC601F4
; ---------------------------------------------------------------------------
                jmp     loc_FFC6026E

; =============== S U B R O U T I N E =======================================


sub_FFC62568:                           ; DATA XREF: sub_FFC5DF90+2C↑o
                clr.w   d1
                move.b  d0,d1
                cmpi.b  #$68,d1 ; 'h'
                bcc.s   loc_FFC62576
                jmp     loc_FFC62500(pc,d1.w)
; ---------------------------------------------------------------------------

loc_FFC62576:                           ; CODE XREF: sub_FFC62568+8↑j
                movea.l (sp)+,a0
                move.w  d0,d1
                lsr.w   #7,d1
                adda.w  d1,sp
                move.w  #$FFCE,(sp)
                jmp     (a0)
; End of function sub_FFC62568

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC62590:                           ; DATA XREF: ROM:FFC079B4↑o

arg_0           =  8
arg_8           =  $10

                link    a6,#0
                move.l  d3,-(sp)
                move.l  #$1C0C,d3
                move.l  ($DD4).w,d1
                move.l  d1,d2
                andi.l  #$100,d2
                beq.s   loc_FFC625AE
                bset    #4,d3

loc_FFC625AE:                           ; CODE XREF: sub_FFC62590+18↑j
                move.l  d1,d2
                andi.l  #$200,d2
                beq.s   loc_FFC625BC
                bset    #7,d3

loc_FFC625BC:                           ; CODE XREF: sub_FFC62590+26↑j
                move.l  d1,d2
                andi.l  #$400,d2
                beq.s   loc_FFC625CA
                bset    #8,d3

loc_FFC625CA:                           ; CODE XREF: sub_FFC62590+34↑j
                move.l  d1,d2
                andi.l  #$800,d2
                beq.s   loc_FFC625D8
                bset    #0,d3

loc_FFC625D8:                           ; CODE XREF: sub_FFC62590+42↑j
                move.l  d1,d2
                andi.l  #$1000,d2
                beq.s   loc_FFC625E6
                bset    #1,d3

loc_FFC625E6:                           ; CODE XREF: sub_FFC62590+50↑j
                move.l  d1,d2
                andi.l  #$2000,d2
                beq.s   loc_FFC625F4
                bset    #6,d3

loc_FFC625F4:                           ; CODE XREF: sub_FFC62590+5E↑j
                move.l  d1,d2
                btst    #$F,d2
                beq.s   loc_FFC62600
                bset    #9,d3

loc_FFC62600:                           ; CODE XREF: sub_FFC62590+6A↑j
                movea.l ($2B6).w,a0
                movea.l $110(a0),a0
                cmpa.w  #0,a0
                beq.s   loc_FFC62624
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                movea.l $26(a1),a1
                tst.l   6(a1)
                beq.s   loc_FFC62624
                bset    #5,d3

loc_FFC62624:                           ; CODE XREF: sub_FFC62590+7C↑j
                                        ; sub_FFC62590+8E↑j
                movea.l arg_0(a6),a0
                move.l  d3,(a0)
                clr.w   arg_8(a6)
                move.l  (sp)+,d3
                unlk    a6
                movea.l (sp)+,a0
                addq.l  #8,sp
                jmp     (a0)
; End of function sub_FFC62590

; ---------------------------------------------------------------------------
                move.l  ([$2070],$64),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================


sub_FFC62650:                           ; CODE XREF: ROM:FFC626C4↓p
                move.l  #$736E6877,d0
                _Gestalt
                move.l  a0,d5
                moveq   #0,d2
                moveq   #$FFFFFFFF,d0
                clr.w   d1
                lea     unk_FFC6267E(pc),a0

loc_FFC62664:                           ; CODE XREF: sub_FFC62650+24↓j
                addq.w  #1,d0
                move.w  d0,d4
                mulu.w  #8,d4
                move.l  (a0,d4.w),d1
                beq.s   locret_FFC6267C
                cmp.l   d5,d1
                bne.s   loc_FFC62664
                addq.w  #6,d4
                move.w  (a0,d4.w),d2

locret_FFC6267C:                        ; CODE XREF: sub_FFC62650+20↑j
                rts
; End of function sub_FFC62650

; ---------------------------------------------------------------------------
unk_FFC6267E:   dc.b $63 ; c            ; DATA XREF: sub_FFC62650+10↑o
                dc.b $6C ; l
                dc.b $61 ; a
                dc.b $73 ; s
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $61 ; a
                dc.b $73 ; s
                dc.b $63 ; c
                dc.b $20
                dc.b $FF
                dc.b $FF
                dc.b $BF
                dc.b $8D
                dc.b $64 ; d
                dc.b $73 ; s
                dc.b $70 ; p
                dc.b $20
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $61 ; a
                dc.b $77 ; w
                dc.b $61 ; a
                dc.b $63 ; c
                dc.b $FF
                dc.b $FF
                dc.b $BF
                dc.b $8C
                dc.b $73 ; s
                dc.b $69 ; i
                dc.b $6E ; n
                dc.b $67 ; g
                dc.b $FF
                dc.b $FF
                dc.b $BF
                dc.b $90
                dc.b $73 ; s
                dc.b $6E ; n
                dc.b $67 ; g
                dc.b $32 ; 2
                dc.b $FF
                dc.b $FF
                dc.b $BF
                dc.b $91
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC626C0:                           ; DATA XREF: ROM:FFC079E0↑o
                link    a6,#-$142
                bsr.w   sub_FFC62650
                tst.w   d2
                beq.w   loc_FFC627B0
                subq.w  #4,sp
                move.l  #$44525652,-(sp)
                move.w  d2,-(sp)
                _GetResource
                move.l  (sp)+,d0
                bne.w   loc_FFC626FA
                move.b  #1,-(sp)
                jsr     sub_FFC627C0
                subq.w  #4,sp
                move.l  #$44525652,-(sp)
                move.w  d2,-(sp)
                _GetResource
                move.l  (sp)+,d0
                beq.w   loc_FFC627B0

loc_FFC626FA:                           ; CODE XREF: ROM:FFC626DC↑j
                move.l  d0,-$C(a6)
                move.l  d0,-(sp)
                _DetachResource
                movea.l -$C(a6),a0
                _HLock
                movea.l ($11C).w,a0
                adda.w  #$C0,a0
                moveq   #$FFFFFFCF,d0

loc_FFC62712:                           ; CODE XREF: ROM:FFC62714↓j
                tst.l   (a0)+
                dbeq    d0,loc_FFC62712
                subq.l  #4,a0
                move.l  a0,-8(a6)
                move.w  d0,-$E(a6)
                movea.l ($2B6).w,a1
                movea.l $110(a1),a1
                movea.l $26(a1),a1
                move.w  d0,(a1)
                move.l  -8(a6),-4(a6)
                movea.l -$C(a6),a0
                movea.l (a0),a0
; ---------------------------------------------------------------------------
                dc.w $A43D
; ---------------------------------------------------------------------------
                movea.l -8(a6),a0
                movea.l (a0),a0
                _HLock
                movea.l -8(a6),a1
                movea.l (a1),a1
                movea.l (a1),a1
                movea.l -$C(a6),a0
                movea.l (a0),a0
                move.l  a0,(a1)
                move.w  (a0),4(a1)
                move.w  2(a0),$22(a1)
                move.w  4(a0),$24(a1)
                move.w  6(a0),$26(a1)
                bset    #5,5(a1)
                adda.w  8(a0),a0
                jsr     (a0)
                lea     -$142(a6),a0
                move.w  -$E(a6),$18(a0)
                move.w  #2,$1A(a0)
                move.l  #$6E616D65,$1C(a0)
                lea     -$10E(a6),a2
                move.l  a2,$20(a0)
                _PBStatusImmed
                bne.s   loc_FFC627B0
                subq.w  #2,sp
                move.w  -$E(a6),-(sp)
                pea     -$10E(a6)
                move.l  #$30C0014,d0
                _SoundDispatch
                move.w  (sp)+,d0

loc_FFC627B0:                           ; CODE XREF: ROM:FFC626CA↑j
                                        ; ROM:FFC626F6↑j ...
                unlk    a6
                rts
; ---------------------------------------------------------------------------
                move.l  ([$2070],$90),-(sp)
                rts
; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC627C0:                           ; CODE XREF: ROM:FFC626E4↑p
                bra.l   sub_FFCC9DD0
; End of function sub_FFC627C0

; ---------------------------------------------------------------------------
                align 4

; =============== S U B R O U T I N E =======================================


sub_FFC627D0:                           ; CODE XREF: sub_FFC00200+224↑p
                bsr.l   sub_FFC0A8C0
                rts
; End of function sub_FFC627D0

; ---------------------------------------------------------------------------
		align 4
