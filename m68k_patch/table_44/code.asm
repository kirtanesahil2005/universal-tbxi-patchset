
; =============== S U B R O U T I N E =======================================


sub_FFC79750:                           ; CODE XREF: sub_FFC00200+1D0↑p
		bsr.l   sub_FFC79750 ; to be patched later
                jsr     sub_FFC7A0E0
                _NewHandleSysClear
                movea.l ($2B6).w,a1
                move.l  a0,$240(a1)
                movea.l (a0),a0
                lea     sub_FFC79840(pc),a1
                move.l  a1,(a0)+
                lea     sub_FFC79910(pc),a1
                move.l  a1,(a0)+
                rts
; End of function sub_FFC79750

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79770:                           ; DATA XREF: ROM:FFC06B50↑o

var_12          = -$12
var_9           = -9
var_8           = -8

                link    a6,#-$A
                movem.l d7/a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $240(a0),a4
                movea.l (a4),a0
                tst.w   8(a0)
                ble.s   loc_FFC797D8
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                tst.w   (sp)+
                bne.s   loc_FFC797D8
                clr.w   d7
                bra.s   loc_FFC797D0
; ---------------------------------------------------------------------------

loc_FFC7979C:                           ; CODE XREF: sub_FFC79770+66↓j
                subq.l  #2,sp
                pea     var_8(a6)
                ext.l   d7
                movea.l (a4),a0
                move.l  d7,d0
                asl.l   #5,d0
                pea     $1A(a0,d0.l)
                pea     var_9(a6)
                move.w  #$3D,-(sp) ; '='
                _OSDispatch
                tst.w   (sp)+
                bne.s   loc_FFC797CE
                tst.b   var_9(a6)
                beq.s   loc_FFC797CE
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFC79E40
                addq.w  #4,sp
                bra.s   loc_FFC797D0
; ---------------------------------------------------------------------------

loc_FFC797CE:                           ; CODE XREF: sub_FFC79770+4A↑j
                                        ; sub_FFC79770+50↑j
                addq.w  #1,d7

loc_FFC797D0:                           ; CODE XREF: sub_FFC79770+2A↑j
                                        ; sub_FFC79770+5C↑j
                movea.l (a4),a0
                cmp.w   8(a0),d7
                blt.s   loc_FFC7979C

loc_FFC797D8:                           ; CODE XREF: sub_FFC79770+16↑j
                                        ; sub_FFC79770+26↑j
                movem.l var_12(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC79770

; ---------------------------------------------------------------------------
                move.l  ([$2044],$80),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC797F0:                           ; DATA XREF: ROM:FFC06B54↑o

var_26          = -$26
var_22          = -$22
var_2           = -2
arg_0           =  8

                link    a6,#-$22
                move.l  a4,-(sp)
                subq.l  #4,sp
                move.w  arg_0(a6),-(sp)
                _GetMenuHandle
                movea.l (sp)+,a4
                pea     var_2(a6)
                pea     var_22(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC79EB0
                tst.w   d0
                lea     $C(sp),sp
                bne.s   loc_FFC79824
                move.w  var_2(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC79E40
                addq.w  #4,sp

loc_FFC79824:                           ; CODE XREF: sub_FFC797F0+24↑j
                movea.l var_26(a6),a4
                unlk    a6
                rtd     #2
; End of function sub_FFC797F0

; ---------------------------------------------------------------------------
                move.l  ([$2044],$84),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79840:                           ; DATA XREF: sub_FFC79750+10↑o

var_2E          = -$2E
var_22          = -$22
var_20          = -$20
var_1C          = -$1C
var_18          = -$18
var_14          = -$14
var_8           = -8
var_6           = -6
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-$22
                movem.l d7/a3-a4,-(sp)
                movea.l arg_4(a6),a4
                clr.b   d7
                pea     var_22(a6)
                pea     var_20(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC79EB0
                tst.w   d0
                lea     $C(sp),sp
                bne.w   loc_FFC798F8
                tst.l   var_4(a6)
                beq.w   loc_FFC798F8
                movea.l (a4),a0
                move.l  var_14(a6),d0
                cmp.l   $A(a0),d0
                bne.s   loc_FFC798D4
                tst.w   2(a0)
                beq.s   loc_FFC798D4
                tst.w   4(a0)
                beq.s   loc_FFC798D4
                subq.l  #2,sp
                movea.l var_4(a6),a0
                movea.l (a0),a0
                move.l  a0,-(sp)
                move.l  arg_0(a6),-(sp)
                _EqualRect
                tst.b   (sp)+
                beq.s   loc_FFC798D4
                move.l  a4,-(sp)
                jsr     sub_FFC79F50
                cmp.l   var_1C(a6),d0
                addq.w  #4,sp
                bne.s   loc_FFC798D4
                jsr     sub_FFC79F20
                cmp.l   var_18(a6),d0
                bne.s   loc_FFC798D4
                move.w  var_6(a6),d0
                cmp.w   ($BAC).w,d0
                bne.s   loc_FFC798D4
                subq.l  #2,sp
                pea     var_4(a6)
                jsr     sub_FFC79C70
                tst.w   (sp)+
                bne.s   loc_FFC798D4
                move.w  var_8(a6),($A0C).w
                moveq   #1,d7
                bra.s   loc_FFC798F8
; ---------------------------------------------------------------------------

loc_FFC798D4:                           ; CODE XREF: sub_FFC79840+38↑j
                                        ; sub_FFC79840+3E↑j ...
                subq.l  #2,sp
                pea     var_4(a6)
                jsr     sub_FFC79D90
                movea.l ($2B6).w,a0
                movea.l $240(a0),a3
                move.w  var_22(a6),d0
                ext.l   d0
                movea.l (a3),a0
                asl.l   #5,d0
                move.l  var_4(a6),$26(a0,d0.l)
                addq.w  #2,sp

loc_FFC798F8:                           ; CODE XREF: sub_FFC79840+22↑j
                                        ; sub_FFC79840+2A↑j ...
                move.b  d7,arg_8(a6)
                movem.l var_2E(a6),d7/a3-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC79840

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79910:                           ; DATA XREF: sub_FFC79750+16↑o

var_3A          = -$3A
var_2A          = -$2A
var_28          = -$28
var_24          = -$24
var_20          = -$20
var_1C          = -$1C
var_18          = -$18
var_10          = -$10
var_E           = -$E
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-$2E
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a4
                pea     var_8(a6)
                _GetPort
                pea     var_4(a6)
                _GetCWMgrPort
                move.l  var_8(a6),d0
                cmp.l   var_4(a6),d0
                bne.w   loc_FFC79A00
                subq.l  #2,sp
                move.l  a3,-(sp)
                _EmptyRect
                moveq   #0,d0
                move.b  (sp)+,d0
                cmpi.w  #1,d0
                beq.w   loc_FFC79A00
                moveq   #0,d0
                move.l  d0,var_C(a6)
                pea     var_2A(a6)
                pea     var_28(a6)
                move.l  a4,-(sp)
                jsr     sub_FFC79EB0
                tst.w   d0
                lea     $C(sp),sp
                beq.s   loc_FFC799A2
                movea.l ($2B6).w,a0
                tst.w   $128(a0)
                beq.w   loc_FFC79A00
                move.l  a4,var_28(a6)
                subq.l  #2,sp
                pea     var_18(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                move.w  var_2A(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                lea     var_8(a6),a0
                moveq   #$F,d0

loc_FFC79990:                           ; CODE XREF: sub_FFC79910+82↓j
                move.w  -(a0),-(sp)
                dbf     d0,loc_FFC79990
                jsr     sub_FFC79DD0
                tst.w   d0
                lea     $26(sp),sp
                bne.s   loc_FFC79A00

loc_FFC799A2:                           ; CODE XREF: sub_FFC79910+54↑j
                subq.l  #2,sp
                move.l  a3,-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                pea     var_C(a6)
                jsr     sub_FFC79AB0
                tst.w   (sp)+
                bne.s   loc_FFC79A00
                movea.l ($2B6).w,a0
                movea.l $240(a0),a2
                move.l  a4,-(sp)
                jsr     sub_FFC79F50
                move.l  d0,var_24(a6)
                jsr     sub_FFC79F20
                move.l  d0,var_20(a6)
                movea.l (a4),a0
                move.l  $A(a0),var_1C(a6)
                move.w  ($A0C).w,var_10(a6)
                move.w  ($BAC).w,var_E(a6)
                move.w  var_2A(a6),d0
                ext.l   d0
                movea.l (a2),a0
                asl.l   #5,d0
                lea     $A(a0,d0.l),a0
                lea     var_28(a6),a1
                moveq   #7,d0

loc_FFC799F8:                           ; CODE XREF: sub_FFC79910+EA↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC799F8
                addq.w  #4,sp

loc_FFC79A00:                           ; CODE XREF: sub_FFC79910+24↑j
                                        ; sub_FFC79910+36↑j ...
                movem.l var_3A(a6),a2-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC79910

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79A10:                           ; CODE XREF: sub_FFC79AB0+E0↓p
                                        ; sub_FFC79AB0+112↓p ...

var_20          = -$20
var_10          = -$10
var_E           = -$E
var_A           = -$A
var_6           = -6
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-$14
                movem.l a2-a4,-(sp)
                movea.l arg_4(a6),a3
                clr.w   var_10(a6)
                moveq   #0,d0
                move.l  d0,var_E(a6)
                move.l  d0,var_A(a6)
                clr.w   var_6(a6)
                move.l  d0,var_4(a6)
                move.l  a3,d1
                beq.s   loc_FFC79A76
                tst.l   (a3)
                beq.s   loc_FFC79A76
                movea.l (a3),a0
                move.w  $14(a0),var_10(a6)
                movea.l (a3),a0
                movea.l $16(a0),a2
                move.l  a2,d0
                beq.s   loc_FFC79A76
                tst.l   (a2)
                beq.s   loc_FFC79A76
                movea.l (a2),a4
                move.l  $16(a4),var_E(a6)
                move.l  $1A(a4),var_A(a6)
                move.w  $20(a4),var_6(a6)
                movea.l $2A(a4),a3
                move.l  a3,d0
                beq.s   loc_FFC79A76
                tst.l   (a3)
                beq.s   loc_FFC79A76
                movea.l (a3),a0
                move.l  (a0),var_4(a6)

loc_FFC79A76:                           ; CODE XREF: sub_FFC79A10+24↑j
                                        ; sub_FFC79A10+28↑j ...
                movea.l arg_0(a6),a0
                lea     var_10(a6),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                movem.l var_20(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC79A10


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79A90:                           ; CODE XREF: sub_FFC79C70+4A↓p

arg_0           =  8
arg_10          =  $18

                link    a6,#0
                lea     arg_0(a6),a0
                lea     arg_10(a6),a1
                moveq   #3,d0

loc_FFC79A9E:                           ; CODE XREF: sub_FFC79A90+10↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFC79A9E
                seq     d0
                neg.b   d0
                unlk    a6
                rts
; End of function sub_FFC79A90

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79AB0:                           ; CODE XREF: sub_FFC79910+9E↑p

var_3C          = -$3C
var_28          = -$28
var_24          = -$24
var_22          = -$22
var_1C          = -$1C
var_18          = -$18
var_14          = -$14
var_12          = -$12
var_10          = -$10
var_E           = -$E
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_6           =  $E
arg_A           =  $12

                link    a6,#-$28
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.l  d0,var_8(a6)
                move.l  d0,var_4(a6)
                moveq   #$FFFFFFFF,d7
                movea.l arg_6(a6),a0
                lea     var_14(a6),a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                _GetZone
                movea.l a0,a3
                movea.l ($2A6).w,a0
                _SetZone
                move.l  (a4),var_C(a6)
                bne.s   loc_FFC79AF6
                moveq   #$1C,d0
                _NewHandleClear
                move.l  a0,var_C(a6)
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                bra.s   loc_FFC79B18
; ---------------------------------------------------------------------------

loc_FFC79AF6:                           ; CODE XREF: sub_FFC79AB0+32↑j
                movea.l var_C(a6),a0
                movea.l (a0),a0
                move.l  $18(a0),var_8(a6)
                beq.s   loc_FFC79B10
                move.l  var_8(a6),-(sp)
                move.l  #$40011,d0
                _QDExtensions

loc_FFC79B10:                           ; CODE XREF: sub_FFC79AB0+52↑j
                moveq   #0,d0
                move.l  d0,var_8(a6)
                clr.w   d7

loc_FFC79B18:                           ; CODE XREF: sub_FFC79AB0+44↑j
                tst.l   var_C(a6)
                beq.w   loc_FFC79C40
                tst.w   d7
                bne.w   loc_FFC79C40
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                subq.l  #2,sp
                pea     var_14(a6)
                move.b  arg_4(a6),-(sp)
                pea     var_4(a6)
                pea     var_8(a6)
                move.l  #$E0015,d0
                _QDExtensions
                move.w  (sp)+,d7
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                tst.w   d7
                addq.w  #4,sp
                bne.w   loc_FFC79C40
                moveq   #$FFFFFFFF,d7
                subq.l  #2,sp
                move.l  var_8(a6),-(sp)
                move.l  #$40001,d0
                _QDExtensions
                moveq   #0,d0
                move.b  (sp)+,d0
                tst.l   d0
                beq.w   loc_FFC79C40
                movea.l var_C(a6),a0
                movea.l (a0),a0
                lea     var_14(a6),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                movea.l var_C(a6),a0
                movea.l (a0),a0
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     8(a0)
                jsr     sub_FFC79A10
                movea.l var_C(a6),a0
                movea.l (a0),a0
                move.l  var_8(a6),$18(a0)
                moveq   #1,d6
                tst.b   d6
                addq.w  #8,sp
                beq.s   loc_FFC79BC8
                subq.l  #4,sp
                _GetGDevice
                movea.l (sp)+,a2
                move.l  var_4(a6),-(sp)
                _SetGDevice
                movea.l var_C(a6),a0
                movea.l (a0),a0
                move.l  var_4(a6),-(sp)
                pea     8(a0)
                jsr     sub_FFC79A10
                addq.w  #8,sp

loc_FFC79BC8:                           ; CODE XREF: sub_FFC79AB0+F6↑j
                pea     var_18(a6)
                _GetPort
                pea     var_1C(a6)
                _GetWMgrPort
                move.l  var_1C(a6),-(sp)
                _SetPort
                moveq   #$21,d0 ; '!'
                move.l  d0,-(sp)
                _ForeColor
                moveq   #$1E,d0
                move.l  d0,-(sp)
                _BackColor
                clr.l   var_28(a6)
                move.w  var_10(a6),d0
                sub.w   var_14(a6),d0
                move.w  d0,var_24(a6)
                move.w  var_E(a6),d0
                sub.w   var_12(a6),d0
                move.w  d0,var_22(a6)
                movea.l var_1C(a6),a0
                pea     2(a0)
                movea.l var_8(a6),a0
                move.l  (a0),-(sp)
                pea     var_14(a6)
                pea     var_28(a6)
                moveq   #0,d0
                move.w  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                _CopyBits
                move.l  var_18(a6),-(sp)
                _SetPort
                tst.b   d6
                beq.s   loc_FFC79C30
                move.l  a2,-(sp)
                _SetGDevice

loc_FFC79C30:                           ; CODE XREF: sub_FFC79AB0+17A↑j
                move.l  var_8(a6),-(sp)
                move.l  #$40002,d0
                _QDExtensions
                clr.w   d7
                bra.s   loc_FFC79C4C
; ---------------------------------------------------------------------------

loc_FFC79C40:                           ; CODE XREF: sub_FFC79AB0+6C↑j
                                        ; sub_FFC79AB0+72↑j ...
                subq.l  #2,sp
                pea     var_C(a6)
                jsr     sub_FFC79D90
                addq.w  #2,sp

loc_FFC79C4C:                           ; CODE XREF: sub_FFC79AB0+18E↑j
                move.l  var_C(a6),(a4)
                movea.l a3,a0
                _SetZone
                move.w  d7,arg_A(a6)
                movem.l var_3C(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC79AB0

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79C70:                           ; CODE XREF: sub_FFC79840+82↑p

var_38          = -$38
var_28          = -$28
var_18          = -$18
var_14          = -$14
var_10          = -$10
var_E           = -$E
var_C           = -$C
var_A           = -$A
var_8           = -8
var_4           = -4
var_2           = -2
arg_0           =  8
arg_4           =  $C

                link    a6,#-$28
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                moveq   #$FFFFFFFF,d7
                movea.l (a2),a3
                move.l  a3,d0
                beq.w   loc_FFC79D74
                movea.l (a3),a0
                movea.l $18(a0),a4
                move.l  a4,d0
                beq.w   loc_FFC79D74
                subq.l  #4,sp
                _GetGDevice
                pea     var_28(a6)
                jsr     sub_FFC79A10
                addq.l  #8,sp
                lea     var_18(a6),a0
                moveq   #7,d0

loc_FFC79CA6:                           ; CODE XREF: sub_FFC79C70+38↓j
                move.w  -(a0),-(sp)
                dbf     d0,loc_FFC79CA6
                movea.l (a3),a0
                lea     $18(a0),a0
                moveq   #7,d0

loc_FFC79CB4:                           ; CODE XREF: sub_FFC79C70+46↓j
                move.w  -(a0),-(sp)
                dbf     d0,loc_FFC79CB4
                jsr     sub_FFC79A90
                moveq   #0,d1
                move.b  d0,d1
                tst.l   d1
                lea     $20(sp),sp
                bne.s   loc_FFC79CD8
                subq.l  #2,sp
                move.l  a2,-(sp)
                jsr     sub_FFC79D90
                addq.w  #2,sp
                bra.w   loc_FFC79D74
; ---------------------------------------------------------------------------

loc_FFC79CD8:                           ; CODE XREF: sub_FFC79C70+58↑j
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.l  #$40001,d0
                _QDExtensions
                moveq   #0,d0
                move.b  (sp)+,d0
                cmpi.w  #1,d0
                bne.w   loc_FFC79D74
                clr.w   d7
                pea     var_14(a6)
                _GetPort
                pea     var_18(a6)
                _GetWMgrPort
                move.l  var_18(a6),-(sp)
                _SetPort
                moveq   #$21,d0 ; '!'
                move.l  d0,-(sp)
                _ForeColor
                moveq   #$1E,d0
                move.l  d0,-(sp)
                _BackColor
                movea.l (a3),a0
                lea     var_10(a6),a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                pea     var_10(a6)
                _GlobalToLocal
                pea     var_C(a6)
                _GlobalToLocal
                pea     var_10(a6)
                _ClipRect
                clr.l   var_8(a6)
                move.w  var_C(a6),d0
                sub.w   var_10(a6),d0
                move.w  d0,var_4(a6)
                move.w  var_A(a6),d0
                sub.w   var_E(a6),d0
                move.w  d0,var_2(a6)
                move.l  (a4),-(sp)
                movea.l var_18(a6),a0
                pea     2(a0)
                pea     var_8(a6)
                pea     var_10(a6)
                moveq   #0,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits
                move.l  var_14(a6),-(sp)
                _SetPort
                move.l  a4,-(sp)
                move.l  #$40002,d0
                _QDExtensions

loc_FFC79D74:                           ; CODE XREF: sub_FFC79C70+12↑j
                                        ; sub_FFC79C70+1E↑j ...
                move.w  d7,arg_4(a6)
                movem.l var_38(a6),d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC79C70

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79D90:                           ; CODE XREF: sub_FFC79840+9A↑p
                                        ; sub_FFC79AB0+196↑p ...

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                tst.l   (a4)
                beq.s   loc_FFC79DBA
                movea.l (a4),a0
                movea.l (a0),a0
                movea.l $18(a0),a3
                movea.l (a4),a0
                _DisposeHandle
                move.l  a3,d0
                beq.s   loc_FFC79DBA
                move.l  a3,-(sp)
                move.l  #$40011,d0
                _QDExtensions

loc_FFC79DBA:                           ; CODE XREF: sub_FFC79D90+E↑j
                                        ; sub_FFC79D90+1E↑j
                moveq   #0,d0
                move.l  d0,(a4)
                clr.w   arg_4(a6)
                movem.l var_8(a6),a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC79D90

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79DD0:                           ; CODE XREF: sub_FFC79910+86↑p

var_14          = -$14
arg_0           =  8
arg_22          =  $2A

                link    a6,#0
                movem.l d5-d7/a3-a4,-(sp)
                move.w  arg_22(a6),d6
                moveq   #$FFFFFFFF,d7
                movea.l ($2B6).w,a0
                movea.l $240(a0),a4
                tst.w   d6
                blt.s   loc_FFC79E2A
                movea.l (a4),a0
                cmp.w   8(a0),d6
                bgt.s   loc_FFC79E2A
                movea.l a0,a3
                ext.l   d6
                move.l  d6,d0
                asl.l   #5,d0
                lea     $A(a3,d0.l),a0
                move.l  a0,d5
                sub.l   a3,d5
                subq.l  #4,sp
                move.l  a4,-(sp)
                move.l  d5,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                pea     arg_0(a6)
                moveq   #$20,d1 ; ' '
                move.l  d1,-(sp)
                _Munger
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                addq.w  #4,sp
                bne.s   loc_FFC79E2A
                movea.l (a4),a0
                addq.w  #1,8(a0)

loc_FFC79E2A:                           ; CODE XREF: sub_FFC79DD0+18↑j
                                        ; sub_FFC79DD0+20↑j ...
                move.w  d7,d0
                movem.l var_14(a6),d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC79DD0

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79E40:                           ; CODE XREF: sub_FFC79770+56↑p
                                        ; sub_FFC797F0+2E↑p

var_14          = -$14
arg_2           =  $A

                link    a6,#0
                movem.l d5-d7/a3-a4,-(sp)
                move.w  arg_2(a6),d6
                moveq   #$FFFFFFFF,d7
                movea.l ($2B6).w,a0
                movea.l $240(a0),a4
                tst.w   d6
                blt.s   loc_FFC79E9C
                movea.l (a4),a0
                cmp.w   8(a0),d6
                bge.s   loc_FFC79E9C
                movea.l a0,a3
                ext.l   d6
                move.l  d6,d0
                asl.l   #5,d0
                lea     $A(a3,d0.l),a0
                move.l  a0,d5
                sub.l   a3,d5
                subq.l  #4,sp
                move.l  a4,-(sp)
                move.l  d5,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #$20,d1 ; ' '
                move.l  d1,-(sp)
                moveq   #1,d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                _Munger
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7
                addq.w  #4,sp
                bne.s   loc_FFC79E9C
                movea.l (a4),a0
                subq.w  #1,8(a0)

loc_FFC79E9C:                           ; CODE XREF: sub_FFC79E40+18↑j
                                        ; sub_FFC79E40+20↑j ...
                move.w  d7,d0
                movem.l var_14(a6),d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC79E40

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79EB0:                           ; CODE XREF: sub_FFC797F0+1A↑p
                                        ; sub_FFC79840+18↑p ...

var_10          = -$10
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l arg_8(a6),a2
                movea.l ($2B6).w,a0
                movea.l $240(a0),a3
                move.l  arg_0(a6),var_4(a6)
                movea.l (a3),a0
                move.w  8(a0),d0
                ext.l   d0
                move.l  d0,d2
                clr.w   (a2)
                moveq   #0,d1
                bra.s   loc_FFC79F04
; ---------------------------------------------------------------------------

loc_FFC79EDA:                           ; CODE XREF: sub_FFC79EB0+56↓j
                movea.l (a3),a0
                move.l  d1,d0
                asl.l   #5,d0
                lea     $A(a0,d0.l),a4
                move.l  var_4(a6),d0
                cmp.l   (a4),d0
                bne.s   loc_FFC79F00
                movea.l arg_4(a6),a0
                movea.l a4,a1
                moveq   #7,d0

loc_FFC79EF4:                           ; CODE XREF: sub_FFC79EB0+46↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFC79EF4
                move.w  d1,(a2)
                moveq   #0,d0
                bra.s   loc_FFC79F0A
; ---------------------------------------------------------------------------

loc_FFC79F00:                           ; CODE XREF: sub_FFC79EB0+3A↑j
                move.l  d1,d0
                addq.l  #1,d1

loc_FFC79F04:                           ; CODE XREF: sub_FFC79EB0+28↑j
                cmp.l   d1,d2
                bgt.s   loc_FFC79EDA
                moveq   #$FFFFFFFF,d0

loc_FFC79F0A:                           ; CODE XREF: sub_FFC79EB0+4E↑j
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC79EB0

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79F20:                           ; CODE XREF: sub_FFC79840+68↑p
                                        ; sub_FFC79910+B8↑p

var_8           = -8

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l ($D50).w,a4
                movea.l a4,a0
                _GetHandleSize
                move.l  d0,-(sp)
                move.l  (a4),-(sp)
                jsr     sub_FFC7A090
                move.l  d0,d7
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC79F20

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79F50:                           ; CODE XREF: sub_FFC79840+5C↑p
                                        ; sub_FFC79910+B0↑p

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l a4,a0
                _GetHandleSize
                move.l  d0,-(sp)
                move.l  (a4),-(sp)
                jsr     sub_FFC79F80
                move.l  d0,d7
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFC79F50

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79F80:                           ; CODE XREF: sub_FFC79F50+14↑p

var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                moveq   #0,d0
                move.l  d0,var_4(a6)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                pea     var_4(a6)
                jsr     sub_FFC79FB0
                move.l  var_4(a6),d0
                unlk    a6
                rts
; End of function sub_FFC79F80

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC79FB0:                           ; CODE XREF: sub_FFC79F80+16↑p

var_40          = -$40
var_20          = -$20
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-$20
                movem.l d3-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                move.l  arg_8(a6),d4
                lea     var_20(a6),a3
                move.w  #$4400,$1E(a3)
                move.w  #$8801,$1C(a3)
                move.w  #$9C01,$1A(a3)
                move.w  #$5000,$18(a3)
                move.w  #$B401,$16(a3)
                move.w  #$7800,$14(a3)
                move.w  #$6C00,$12(a3)
                move.w  #$A001,$10(a3)
                move.w  #$E401,$E(a3)
                move.w  #$2800,$C(a3)
                move.w  #$3C00,$A(a3)
                move.w  #$F001,8(a3)
                move.w  #$1400,6(a3)
                move.w  #$D801,4(a3)
                move.w  #$CC01,2(a3)
                clr.w   (a3)
                move.w  2(a2),d7
                movea.l arg_4(a6),a4
                move.l  d4,d6
                subq.l  #1,d6
                moveq   #0,d3
                bra.s   loc_FFC7A07A
; ---------------------------------------------------------------------------

loc_FFC7A030:                           ; CODE XREF: sub_FFC79FB0+CC↓j
                move.b  (a4)+,d5
                move.w  d7,d0
                lsr.w   #4,d0
                moveq   #0,d1
                move.w  d7,d1
                moveq   #$F,d2
                and.w   d1,d2
                move.w  (a3,d2.w*2),d2
                eor.w   d2,d0
                moveq   #0,d1
                move.b  d5,d1
                moveq   #$F,d2
                and.b   d1,d2
                moveq   #0,d1
                move.b  d2,d1
                move.w  (a3,d1.w*2),d1
                eor.w   d1,d0
                move.w  d0,d7
                lsr.w   #4,d0
                moveq   #0,d1
                move.w  d7,d1
                moveq   #$F,d2
                and.w   d1,d2
                move.w  (a3,d2.w*2),d2
                eor.w   d2,d0
                move.b  d5,d1
                lsr.b   #4,d1
                moveq   #0,d2
                move.b  d1,d2
                move.w  (a3,d2.w*2),d2
                eor.w   d2,d0
                move.w  d0,d7
                subq.l  #1,d6

loc_FFC7A07A:                           ; CODE XREF: sub_FFC79FB0+7E↑j
                cmp.l   d6,d3
                ble.s   loc_FFC7A030
                moveq   #0,d0
                move.w  d7,d0
                move.l  d0,(a2)
                movem.l var_40(a6),d3-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC79FB0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC7A090:                           ; CODE XREF: sub_FFC79F20+14↑p

var_14          = -$14
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d5-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                moveq   #0,d6
                movea.l a3,a4
                move.l  arg_4(a6),d5
                asr.l   #1,d5
                moveq   #1,d7
                bra.s   loc_FFC7A0C4
; ---------------------------------------------------------------------------

loc_FFC7A0AA:                           ; CODE XREF: sub_FFC7A090+36↓j
                move.l  d7,d0
                divsl.l #$F,d1:d0
                tst.l   d1
                beq.s   loc_FFC7A0BE
                move.w  d7,d0
                muls.w  (a4),d0
                eor.l   d0,d6

loc_FFC7A0BE:                           ; CODE XREF: sub_FFC7A090+26↑j
                move.l  d7,d0
                addq.l  #1,d7
                addq.w  #2,a4

loc_FFC7A0C4:                           ; CODE XREF: sub_FFC7A090+18↑j
                cmp.l   d7,d5
                bge.s   loc_FFC7A0AA
                move.l  d6,d0
                movem.l var_14(a6),d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC7A090

; ---------------------------------------------------------------------------
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

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC7A0E0:                           ; CODE XREF: sub_FFC79750↑p
                link    a6,#0
                moveq   #$A,d0
                unlk    a6
                rts
; End of function sub_FFC7A0E0

; ---------------------------------------------------------------------------
		align 4
