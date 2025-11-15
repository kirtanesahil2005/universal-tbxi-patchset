
; =============== S U B R O U T I N E =======================================


sub_FFC3ED40:                           ; DATA XREF: ROM:OSTraps↓o
                movem.l d3-d7/a3-a4,-(sp)
                move.l  d0,-(sp)
                move.l  a0,-(sp)
                move.w  (a0),d1
                move.l  #$FF,d2
                and.l   d1,d2
                move.l  #$FF00,d3
                and.l   d1,d3
                lsr.l   #8,d3
                cmpi.b  #$FF,d3
                bne.s   loc_FFC3ED68
                jsr     sub_FFC3EFD0
                bra.s   loc_FFC3EDB6
; ---------------------------------------------------------------------------

loc_FFC3ED68:                           ; CODE XREF: sub_FFC3ED40+20↑j
                movea.l ($BB4).w,a1
                movea.l $18(a1),a2
                cmpi.l  #1,d2
                bne.s   loc_FFC3EDCA
                clr.l   -(sp)
                move.l  #'cmtb',-(sp)
                move.w  d3,d5
                subq.w  #1,d5
                addi.w  #-$7F00,d5
                move.w  d5,-(sp)
                cmpi.w  #$8103,d5
                bge.s   loc_FFC3EDAE
                clr.w   -(sp)
                move.w  d5,-(sp)
                jsr     sub_FFC3F08C
                move.w  (sp)+,d0
                bne.s   loc_FFC3EDAE
                move.w  #$507,-(sp)
                movea.l sp,a0
                _CommToolboxDispatch
                addq.w  #2,sp
                lea     $A(sp),sp
                movea.l d0,a0
                bra.s   loc_FFC3EDB4
; ---------------------------------------------------------------------------

loc_FFC3EDAE:                           ; CODE XREF: sub_FFC3ED40+4E↑j
                                        ; sub_FFC3ED40+5A↑j
                _GetResource
                movea.l (sp)+,a0
                move.l  a0,d0

loc_FFC3EDB4:                           ; CODE XREF: sub_FFC3ED40+6C↑j
                bne.s   loc_FFC3EDBC

loc_FFC3EDB6:                           ; CODE XREF: sub_FFC3ED40+26↑j
                movea.l (sp)+,a0
                move.l  (sp)+,d0
                bra.s   loc_FFC3EDD8
; ---------------------------------------------------------------------------

loc_FFC3EDBC:                           ; CODE XREF: sub_FFC3ED40:loc_FFC3EDB4↑j
                _HLock
                movea.l (a0),a0
                subq.l  #1,d3
                lsl.l   #2,d3
                adda.l  d3,a2
                move.l  a0,(a2)
                bra.s   loc_FFC3EDD0
; ---------------------------------------------------------------------------

loc_FFC3EDCA:                           ; CODE XREF: sub_FFC3ED40+36↑j
                subq.l  #1,d3
                lsl.l   #2,d3
                adda.l  d3,a2

loc_FFC3EDD0:                           ; CODE XREF: sub_FFC3ED40+88↑j
                movea.l (a2),a1
                movea.l (sp)+,a0
                move.l  (sp)+,d0
                jsr     (a1)

loc_FFC3EDD8:                           ; CODE XREF: sub_FFC3ED40+7A↑j
                movem.l (sp)+,d3-d7/a3-a4
                rts
; End of function sub_FFC3ED40

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC3EDE0:                           ; DATA XREF: ROM:FFC05F6C↑o
                moveq   #$5C,d0 ; '\'
                _NewPtrSysClear
                movea.l a0,a1
                move.l  a1,($BB4).w
                moveq   #$4C,d0 ; 'L'
                _NewPtrSysClear
                move.l  a0,$18(a1)
                move.w  #1,(a1)
                moveq   #$A,d0
                _NewPtrSysClear
                move.l  a0,2(a1)
                subq.w  #4,sp
                move.w  #$501,-(sp)
                movea.l sp,a0
                _CommToolboxDispatch
                addq.w  #2,sp
                move.w  #$401,-(sp)
                movea.l sp,a0
                _CommToolboxDispatch
                addq.w  #2,sp
                addq.w  #4,sp
                jsr     sub_FFC3F36E
                rts
; End of function sub_FFC3EDE0

; ---------------------------------------------------------------------------
                move.l  ([$201C],$C),-(sp)
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
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC3EE30:                           ; DATA XREF: ROM:FFC05F70↑o
                move.l  a2,-(sp)
                subq.w  #4,sp
                move.l  #$63746220,-(sp)
                move.w  #$8100,-(sp)
                _GetResource
                movea.l (sp)+,a2
                move.l  a2,d0
                beq.s   loc_FFC3EE62
                moveq   #0,d0
                movea.l (a2),a0
                move.w  (a0),d0
                subq.w  #2,sp
                move.l  #$63746276,-(sp)
                move.l  d0,-(sp)
                move.w  #$401,d0
                _GestaltValueDispatch
                addq.w  #2,sp
                move.l  a2,-(sp)
                _ReleaseResource

loc_FFC3EE62:                           ; CODE XREF: sub_FFC3EE30+14↑j
                clr.b   ($A5E).w
                lea     unk_FFC3EEA4(pc),a2
                subq.w  #2,sp

loc_FFC3EE6C:                           ; CODE XREF: sub_FFC3EE30+50↓j
                                        ; sub_FFC3EE30+68↓j
                move.l  (a2)+,d0
                beq.s   loc_FFC3EE9A
                subq.w  #4,sp
                move.l  d0,-(sp)
                move.w  (a2)+,-(sp)
                _GetResource
                tst.l   (sp)
                bne.s   loc_FFC3EE82
                addq.w  #4,sp
                addq.w  #8,a2
                bra.s   loc_FFC3EE6C
; ---------------------------------------------------------------------------

loc_FFC3EE82:                           ; CODE XREF: sub_FFC3EE30+4A↑j
                movea.l (sp),a0
                tst.l   (a0)
                beq.s   loc_FFC3EE8C
                addq.w  #4,sp
                bra.s   loc_FFC3EE8E
; ---------------------------------------------------------------------------

loc_FFC3EE8C:                           ; CODE XREF: sub_FFC3EE30+56↑j
                _ReleaseResource

loc_FFC3EE8E:                           ; CODE XREF: sub_FFC3EE30+5A↑j
                move.l  (a2)+,-(sp)
                move.l  (a2)+,-(sp)
                move.w  #$401,d0
                _GestaltValueDispatch
                bra.s   loc_FFC3EE6C
; ---------------------------------------------------------------------------

loc_FFC3EE9A:                           ; CODE XREF: sub_FFC3EE30+3E↑j
                addq.w  #2,sp
                st      ($A5E).w
                movea.l (sp)+,a2
                rts
; End of function sub_FFC3EE30

; ---------------------------------------------------------------------------
unk_FFC3EEA4:   dc.b $63 ; c            ; DATA XREF: sub_FFC3EE30+36↑o
                dc.b $6D ; m
                dc.b $74 ; t
                dc.b $62 ; b
                dc.b $81
                dc.b   5
                dc.b $74 ; t
                dc.b $65 ; e
                dc.b $6C ; l
                dc.b $65 ; e
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $63 ; c
                dc.b $6D ; m
                dc.b $74 ; t
                dc.b $62 ; b
                dc.b $81
                dc.b   0
                dc.b $63 ; c
                dc.b $6F ; o
                dc.b $6E ; n
                dc.b $6E ; n
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b  $F
                dc.b $63 ; c
                dc.b $6D ; m
                dc.b $74 ; t
                dc.b $62 ; b
                dc.b $81
                dc.b   1
                dc.b $66 ; f
                dc.b $78 ; x
                dc.b $66 ; f
                dc.b $72 ; r
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b  $F
                dc.b $63 ; c
                dc.b $6D ; m
                dc.b $74 ; t
                dc.b $62 ; b
                dc.b $81
                dc.b   2
                dc.b $74 ; t
                dc.b $65 ; e
                dc.b $72 ; r
                dc.b $6D ; m
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   5
                dc.b $63 ; c
                dc.b $6D ; m
                dc.b $74 ; t
                dc.b $62 ; b
                dc.b $81
                dc.b   4
                dc.b $63 ; c
                dc.b $72 ; r
                dc.b $6D ; m
                dc.b $20
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   7
                dc.b $70 ; p
                dc.b $72 ; r
                dc.b $6F ; o
                dc.b $63 ; c
                dc.b $81
                dc.b   1
                dc.b $64 ; d
                dc.b $69 ; i
                dc.b $74 ; t
                dc.b $6C ; l
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $43 ; C
                dc.b $44 ; D
                dc.b $45 ; E
                dc.b $46 ; F
                dc.b   0
                dc.b $3F ; ?
                dc.b $70 ; p
                dc.b $6F ; o
                dc.b $70 ; p
                dc.b $21 ; !
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $70 ; p
                dc.b $72 ; r
                dc.b $6F ; o
                dc.b $63 ; c
                dc.b $81
                dc.b   2
                dc.b $6E ; n
                dc.b $6C ; l
                dc.b $75 ; u
                dc.b $70 ; p
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------
                move.l  ([$201C],$10),-(sp)
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
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC3EF30:                           ; DATA XREF: ROM:FFC05F94↑o

var_1C          = -$1C
var_8           = -8

                link    a6,#-8
                movem.l d3/d6-d7/a3-a4,-(sp)
                movea.l ($BB4).w,a3
                moveq   #0,d6
                move.l  a3,d0
                beq.w   loc_FFC3EFC6
                cmpa.l  #$FFFFFFFF,a3
                beq.s   loc_FFC3EFC6
                movea.l $10(a3),a4
                bra.s   loc_FFC3EF68
; ---------------------------------------------------------------------------

loc_FFC3EF52:                           ; CODE XREF: sub_FFC3EF30+3A↓j
                movea.l (a4),a0
                move.w  $46(a0),d7
                movea.l $62(a0),a4

loc_FFC3EF5C:                           ; CODE XREF: sub_FFC3EF30+36↓j
                subq.l  #2,sp
                move.w  d7,-(sp)
                jsr     sub_FFC3EFE0
                tst.w   (sp)+
                beq.s   loc_FFC3EF5C

loc_FFC3EF68:                           ; CODE XREF: sub_FFC3EF30+20↑j
                move.l  a4,d0
                bne.s   loc_FFC3EF52
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                pea     var_8(a6)
                jsr     sub_FFC3F0EA
                movea.l d0,a4
                move.l  a4,d0
                addq.w  #6,sp
                beq.s   loc_FFC3EFC6
                move.w  #$8100,d7

loc_FFC3EF8C:                           ; CODE XREF: sub_FFC3EF30+8C↓j
                move.b  d7,d0
                moveq   #0,d1
                sub.b   d1,d0
                moveq   #1,d6
                lsl.l   d0,d6
                move.w  8(a4),d0
                ext.l   d0
                move.l  d6,d1
                and.l   d0,d1
                beq.s   loc_FFC3EFB4
                subq.l  #4,sp
                move.l  #$636D7462,-(sp)
                move.w  d7,-(sp)
                _GetResource
                movea.l (sp),a3
                jsr     sub_FFC3EFF0

loc_FFC3EFB4:                           ; CODE XREF: sub_FFC3EF30+70↑j
                move.w  d7,d0
                addq.w  #1,d7
                cmpi.w  #$8102,d7
                ble.s   loc_FFC3EF8C
                move.l  a4,-(sp)
                jsr     sub_FFC3F1B0
                addq.w  #4,sp

loc_FFC3EFC6:                           ; CODE XREF: sub_FFC3EF30+10↑j
                                        ; sub_FFC3EF30+1A↑j ...
                movem.l var_1C(a6),d3/d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC3EF30


; =============== S U B R O U T I N E =======================================


sub_FFC3EFD0:                           ; CODE XREF: sub_FFC3ED40+22↑p
                movea.l ($201C).w,a1
                movea.l $34(a1),a1
                jmp     (a1)
; End of function sub_FFC3EFD0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_FFC3EFE0:                           ; CODE XREF: sub_FFC3EF30+30↑p
                bra.l   sub_FFCC9E30
; End of function sub_FFC3EFE0

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

; Attributes: thunk

sub_FFC3EFF0:                           ; CODE XREF: sub_FFC3EF30+80↑p
                bra.l   sub_FFCC9E10
; End of function sub_FFC3EFF0

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

sub_FFC3F000:                           ; DATA XREF: ROM:FFC05F98↑o

var_14          = -$14
var_C           = -$C
var_8           = -8
var_4           = -4
arg_1           =  9
arg_2           =  $A

                link    a6,#-$C
                movem.l d7/a4,-(sp)
                moveq   #0,d0
                movea.l d0,a4
                moveq   #0,d7
                moveq   #$FFFFFFFF,d1
                move.l  d1,var_8(a6)
                move.l  d1,var_4(a6)
                move.w  #$A88F,d0
                _GetToolTrapAddress
                move.l  a0,var_C(a6)
                move.w  #$A89F,d0
                _GetToolTrapAddress
                move.l  var_C(a6),d0
                cmpa.l  d0,a0
                beq.s   loc_FFC3F048
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                pea     var_8(a6)
                jsr     sub_FFC3F0EA
                movea.l d0,a4
                addq.w  #6,sp

loc_FFC3F048:                           ; CODE XREF: sub_FFC3F000+2E↑j
                move.l  a4,d0
                bne.s   loc_FFC3F058
                pea     var_8(a6)
                jsr     sub_FFC3F138
                movea.l d0,a4
                addq.w  #4,sp

loc_FFC3F058:                           ; CODE XREF: sub_FFC3F000+4A↑j
                move.b  arg_1(a6),d0
                moveq   #0,d1
                sub.b   d1,d0
                moveq   #1,d7
                lsl.l   d0,d7
                move.w  8(a4),d0
                ext.l   d0
                move.l  d7,d1
                and.l   d0,d1
                beq.s   loc_FFC3F078
                move.w  #$FFFF,arg_2(a6)
                bra.s   loc_FFC3F080
; ---------------------------------------------------------------------------

loc_FFC3F078:                           ; CODE XREF: sub_FFC3F000+6E↑j
                or.w    d7,8(a4)
                clr.w   arg_2(a6)

loc_FFC3F080:                           ; CODE XREF: sub_FFC3F000+76↑j
                movem.l var_14(a6),d7/a4
                unlk    a6
                rtd     #2
; End of function sub_FFC3F000


; =============== S U B R O U T I N E =======================================


sub_FFC3F08C:                           ; CODE XREF: sub_FFC3ED40+54↑p
                movea.l ($201C).w,a1
                movea.l $38(a1),a1
                jmp     (a1)
; End of function sub_FFC3F08C

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

sub_FFC3F0A0:                           ; DATA XREF: ROM:FFC05F9C↑o

var_12          = -$12
var_1           = -1
arg_0           =  8

                link    a6,#-6
                movem.l a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l ($BB4).w,a2
                movea.l $C(a2),a4
                clr.b   var_1(a6)
                bra.s   loc_FFC3F0DA
; ---------------------------------------------------------------------------

loc_FFC3F0BA:                           ; CODE XREF: sub_FFC3F0A0+3C↓j
                subq.l  #2,sp
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                pea     var_1(a6)
                move.w  #$3D,-(sp) ; '='
                _OSDispatch
                tst.b   var_1(a6)
                addq.w  #2,sp
                beq.s   loc_FFC3F0D6
                move.l  a4,d0
                bra.s   loc_FFC3F0E0
; ---------------------------------------------------------------------------

loc_FFC3F0D6:                           ; CODE XREF: sub_FFC3F0A0+30↑j
                movea.l $E(a4),a4

loc_FFC3F0DA:                           ; CODE XREF: sub_FFC3F0A0+18↑j
                move.l  a4,d0
                bne.s   loc_FFC3F0BA
                moveq   #0,d0

loc_FFC3F0E0:                           ; CODE XREF: sub_FFC3F0A0+34↑j
                movem.l var_12(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC3F0A0


; =============== S U B R O U T I N E =======================================


sub_FFC3F0EA:                           ; CODE XREF: sub_FFC3EF30+4C↑p
                                        ; sub_FFC3F000+40↑p
                movea.l ($201C).w,a1
                movea.l $3C(a1),a1
                jmp     (a1)
; End of function sub_FFC3F0EA

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

sub_FFC3F100:                           ; DATA XREF: ROM:FFC05FA0↑o

var_10          = -$10
arg_0           =  8

                link    a6,#-4
                movem.l a2-a4,-(sp)
                movea.l ($BB4).w,a3
                movea.l $C(a3),a2
                moveq   #$12,d0
                _NewPtrSysClear
                movea.l a0,a4
                move.l  a4,d0
                beq.s   loc_FFC3F12C
                movea.l arg_0(a6),a0
                movea.l a4,a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                move.l  a2,$E(a4)
                move.l  a4,$C(a3)

loc_FFC3F12C:                           ; CODE XREF: sub_FFC3F100+18↑j
                move.l  a4,d0
                movem.l var_10(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC3F100


; =============== S U B R O U T I N E =======================================


sub_FFC3F138:                           ; CODE XREF: sub_FFC3F000+50↑p
                movea.l ($201C).w,a1
                movea.l $40(a1),a1
                jmp     (a1)
; End of function sub_FFC3F138

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

sub_FFC3F150:                           ; DATA XREF: ROM:FFC05FA4↑o

var_12          = -$12
var_1           = -1
arg_0           =  8

                link    a6,#-6
                movem.l a2-a4,-(sp)
                movea.l ($BB4).w,a2
                movea.l $C(a2),a4
                moveq   #0,d0
                movea.l d0,a3
                bra.s   loc_FFC3F19C
; ---------------------------------------------------------------------------

loc_FFC3F166:                           ; CODE XREF: sub_FFC3F150+4E↓j
                subq.l  #2,sp
                movea.l arg_0(a6),a0
                move.l  a0,-(sp)
                move.l  a4,-(sp)
                pea     var_1(a6)
                move.w  #$3D,-(sp) ; '='
                _OSDispatch
                tst.b   var_1(a6)
                addq.w  #2,sp
                beq.s   loc_FFC3F196
                move.l  a3,d0
                bne.s   loc_FFC3F18E
                move.l  $E(a4),$C(a2)
                bra.s   loc_FFC3F1A0
; ---------------------------------------------------------------------------

loc_FFC3F18E:                           ; CODE XREF: sub_FFC3F150+34↑j
                move.l  $E(a4),$E(a3)
                bra.s   loc_FFC3F1A0
; ---------------------------------------------------------------------------

loc_FFC3F196:                           ; CODE XREF: sub_FFC3F150+30↑j
                movea.l a4,a3
                movea.l $E(a4),a4

loc_FFC3F19C:                           ; CODE XREF: sub_FFC3F150+14↑j
                move.l  a4,d0
                bne.s   loc_FFC3F166

loc_FFC3F1A0:                           ; CODE XREF: sub_FFC3F150+3C↑j
                                        ; sub_FFC3F150+44↑j
                movea.l arg_0(a6),a0
                _DisposePtr
                movem.l var_12(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC3F150


; =============== S U B R O U T I N E =======================================


sub_FFC3F1B0:                           ; CODE XREF: sub_FFC3EF30+90↑p
                movea.l ($201C).w,a1
                movea.l $44(a1),a1
                jmp     (a1)
; End of function sub_FFC3F1B0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC3F1C0:                           ; DATA XREF: ROM:FFC05F64↑o

var_104         = -$104
var_100         = -$100
arg_2           =  $A
arg_6           =  $E

                link    a6,#-$100
                move.l  a4,-(sp)
                lea     var_100(a6),a4
                move.l  a4,-(sp)
                move.w  arg_2(a6),-(sp)
                move.w  arg_6(a6),-(sp)
                jsr     sub_FFC3F200
                subq.l  #4,sp
                move.l  a4,-(sp)
                _NewString
                move.l  (sp)+,d0
                movea.l var_104(a6),a4
                unlk    a6
                rts
; End of function sub_FFC3F1C0


; =============== S U B R O U T I N E =======================================


sub_FFC3F1E8:                           ; CODE XREF: sub_FFC3F210+F2↓p
                                        ; sub_FFC3F210+102↓p ...
                movea.l ($201C).w,a1
                movea.l 4(a1),a1
                jmp     (a1)
; End of function sub_FFC3F1E8

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

; Attributes: thunk

sub_FFC3F200:                           ; CODE XREF: sub_FFC3F1C0+14↑p
                bra.l   sub_FFCC9880
; End of function sub_FFC3F200

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

sub_FFC3F210:                           ; DATA XREF: ROM:FFC05F68↑o

var_2C          = -$2C
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4

                link    a6,#-$10
                movem.l d3/d5-d7/a2-a4,-(sp)
                clr.b   d5
                clr.b   d6
                move.l  #'ser ',d0
                lea     var_4(a6),a0
                movea.l a0,a1
                _Gestalt
                move.l  a0,(a1)
                move.w  d0,d7
                bne.s   loc_FFC3F248
                moveq   #8,d0
                and.l   var_4(a6),d0
                sne     d3
                neg.b   d3
                move.b  d3,d5
                moveq   #$10,d0
                and.l   var_4(a6),d0
                sne     d3
                neg.b   d3
                move.b  d3,d6

loc_FFC3F248:                           ; CODE XREF: sub_FFC3F210+1E↑j
                moveq   #0,d0
                move.b  d5,d0
                move.w  d0,d7
                add.w   #$8100,d7
                bra.w   loc_FFC3F354
; ---------------------------------------------------------------------------

loc_FFC3F256:                           ; CODE XREF: sub_FFC3F210+150↓j
                moveq   #$22,d0 ; '"'
                _NewPtrSysClear
                move.l  a0,var_10(a6)
                moveq   #$1E,d0
                _NewPtrSysClear
                movea.l a0,a3
                movea.l var_10(a6),a0
                moveq   #1,d0
                move.l  d0,$E(a0)
                movea.l var_10(a6),a0
                move.l  a3,$16(a0)
                move.w  #1,(a3)
                _GetZone
                move.l  a0,var_8(a6)
                move.l  a0,-(sp)
                subq.l  #4,sp
                move.l  ($2A6).w,(sp)
                move.l  (sp)+,d0
                movea.l (sp)+,a0
                movea.l d0,a0
                _SetZone
                move.l  #$108,d0
                _NewHandleSys
                movea.l a0,a4
                movea.l a4,a0
                _HLock
                subq.l  #2,sp
                pea     var_C(a6)
                move.w  d7,-(sp)
                pea     ($FF).w
                move.w  #$501,d0
                _IconDispatch
                movea.l (a4),a0
                move.l  var_C(a6),$100(a0)
                subq.l  #2,sp
                pea     var_C(a6)
                movea.l (a4),a0
                move.l  $100(a0),-(sp)
                move.l  #$49434E23,-(sp)
                move.w  #$609,d0
                _IconDispatch
                movea.l a4,a0
                _HUnlock
                tst.l   var_C(a6)
                addq.w  #4,sp
                beq.s   loc_FFC3F2F2
                move.l  a4,d0
                beq.s   loc_FFC3F2F2
                movea.l var_C(a6),a1
                movea.l (a1),a0
                movea.l (a4),a2
                movea.l a2,a1
                move.l  #$100,d0
                _BlockMoveData

loc_FFC3F2F2:                           ; CODE XREF: sub_FFC3F210+CA↑j
                                        ; sub_FFC3F210+CE↑j
                movea.l (a4),a0
                moveq   #0,d0
                move.l  d0,$104(a0)
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFC3F1E8
                move.l  d0,$A(a3)
                moveq   #2,d0
                move.l  d0,-(sp)
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFC3F1E8
                move.l  d0,2(a3)
                moveq   #3,d0
                move.l  d0,-(sp)
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFC3F1E8
                move.l  d0,6(a3)
                movea.l var_8(a6),a0
                _SetZone
                move.l  a4,$E(a3)
                move.l  #$2580,$12(a3)
                move.l  #$E100,$16(a3)
                move.l  var_10(a6),-(sp)
                jsr     sub_FFC3F380
                lea     $18(sp),sp
                move.w  d7,d0
                addq.w  #1,d7

loc_FFC3F354:                           ; CODE XREF: sub_FFC3F210+42↑j
                moveq   #0,d0
                move.b  d6,d0
                move.w  #$8101,d1
                sub.w   d0,d1
                cmp.w   d7,d1
                bge.w   loc_FFC3F256
                movem.l var_2C(a6),d3/d5-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC3F210


; =============== S U B R O U T I N E =======================================


sub_FFC3F36E:                           ; CODE XREF: sub_FFC3EDE0+36↑p
                movea.l ($201C).w,a1
                movea.l 8(a1),a1
                jmp     (a1)
; End of function sub_FFC3F36E

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

; Attributes: thunk

sub_FFC3F380:                           ; CODE XREF: sub_FFC3F210+138↑p
                bra.l   sub_FFCC9DF0
; End of function sub_FFC3F380

; ---------------------------------------------------------------------------
