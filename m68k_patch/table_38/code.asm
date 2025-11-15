; ---------------------------------------------------------------------------

loc_FFC638F0:                           ; DATA XREF: ROM:ToolboxTraps↓o
                lea     dword_FFC638FA(pc),a0
                move.l  ($7B0).w,-(sp)
                rts
; ---------------------------------------------------------------------------
dword_FFC638FA: dc.l $20                ; DATA XREF: ROM:loc_FFC638F0↑o
                dc.w loc_FFC63A32-dword_FFC638FA
                dc.w sub_FFC643BA-dword_FFC638FA
                dc.w sub_FFC644BE-dword_FFC638FA
                dc.w sub_FFC63A28-dword_FFC638FA
                dc.w sub_FFC64256-dword_FFC638FA
                dc.w sub_FFC63B16-dword_FFC638FA
                dc.w sub_FFC63A1E-dword_FFC638FA
                dc.w sub_FFC641FE-dword_FFC638FA
                dc.w sub_FFC63BBA-dword_FFC638FA
                dc.w sub_FFC63BB0-dword_FFC638FA
                dc.w sub_FFC64334-dword_FFC638FA
                dc.w sub_FFC65EE6-dword_FFC638FA
                dc.w sub_FFC66048-dword_FFC638FA
                dc.w sub_FFC63AB6-dword_FFC638FA
                dc.w sub_FFC63AAC-dword_FFC638FA
                dc.w sub_FFC63B88-dword_FFC638FA
                dc.w sub_FFC63AA2-dword_FFC638FA
                dc.w sub_FFC63A98-dword_FFC638FA
                dc.w sub_FFC63B7E-dword_FFC638FA
                dc.w sub_FFC63A64-dword_FFC638FA
                dc.w sub_FFC63A5A-dword_FFC638FA
                dc.w sub_FFC63B46-dword_FFC638FA
                dc.w sub_FFC64400-dword_FFC638FA
                dc.w sub_FFC6442A-dword_FFC638FA
                dc.w sub_FFC63CCA-dword_FFC638FA
                dc.w sub_FFC63C7C-dword_FFC638FA
                dc.w sub_FFC63C72-dword_FFC638FA
                dc.w sub_FFC63C68-dword_FFC638FA
                dc.w sub_FFC63C5E-dword_FFC638FA
                dc.w sub_FFC660F8-dword_FFC638FA
                dc.w sub_FFC66138-dword_FFC638FA
                dc.w sub_FFC665C6-dword_FFC638FA
                dc.w sub_FFC63CC0-dword_FFC638FA
dword_FFC63940: dc.l 'ICN#'             ; DATA XREF: ROM:FFC639BC↓o
                                        ; ROM:FFC63ACC↓o ...
                dc.l 'icl4'
                dc.l 'icl8'
                dc.l 'ics#'
                dc.l 'ics4'
                dc.l 'ics8'
                dc.l 'icm#'
                dc.l 'icm4'
                dc.l 'icm8'
                dc.l 0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC63970:                           ; DATA XREF: ROM:FFC068D4↑o
                movea.l ($2B6).w,a0
                movea.l $174(a0),a0
                move.l  (a0),d0
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC6397C:                           ; CODE XREF: sub_FFC650E0+F2↓p
                                        ; sub_FFC65A00+26↓p ...
                move.l  ([$2038],4),-(sp)
                rts
; End of function sub_FFC6397C

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
; ---------------------------------------------------------------------------

loc_FFC63990:                           ; DATA XREF: ROM:FFC068D8↑o
                movea.l ($2B6).w,a0
                move.l  $174(a0),d0
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC6399A:                           ; CODE XREF: sub_FFC65D00+14↓p
                                        ; sub_FFC65EF0+8↓p
                move.l  ([$2038],8),-(sp)
                rts
; End of function sub_FFC6399A

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
; ---------------------------------------------------------------------------

loc_FFC639B0:                           ; DATA XREF: ROM:FFC068DC↑o
                move.w  $A(sp),d0
                move.l  4(sp),d1
                subq.w  #4,sp
                asl.w   #2,d0
                lea     dword_FFC63940(pc),a1
                move.l  (a1,d0.w),-(sp)
                move.w  d1,-(sp)
                move.w  #$FFFF,($B9E).w
                _GetResource
                move.l  (sp)+,d0
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC639D2:                           ; DATA XREF: ROM:FFC639EA↓o
                                        ; ROM:FFC63A48↓o ...
                move.l  ([$2038],$C),-(sp)
                rts
; End of function sub_FFC639D2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC639E0:                           ; DATA XREF: ROM:FFC068E0↑o
                moveq   #0,d1
                movea.l (sp)+,a0
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     sub_FFC639D2(pc)
                bra.s   loc_FFC63A16
; ---------------------------------------------------------------------------

loc_FFC639F0:                           ; DATA XREF: ROM:FFC068E4↑o
                moveq   #1,d1
                bra.s   loc_FFC63A10
; ---------------------------------------------------------------------------

loc_FFC639F4:                           ; DATA XREF: ROM:FFC068E8↑o
                move.w  8(sp),d1
                andi.w  #$F00,d1
                bne.s   loc_FFC63A0E
                movea.l 4(sp),a0
                movea.l (a0),a0
                move.w  2(a0),d0
                beq.s   loc_FFC63A0E
                or.w    d0,8(sp)

loc_FFC63A0E:                           ; CODE XREF: ROM:FFC639FC↑j
                                        ; ROM:FFC63A08↑j
                moveq   #0,d1

loc_FFC63A10:                           ; CODE XREF: ROM:FFC639F2↑j
                movea.l (sp)+,a0
                pea     sub_FFC6452A(pc)

loc_FFC63A16:                           ; CODE XREF: ROM:FFC639EE↑j
                move.w  d1,-(sp)
                move.l  a0,-(sp)
                jmp     sub_FFC65272

; =============== S U B R O U T I N E =======================================


sub_FFC63A1E:                           ; DATA XREF: ROM:FFC6390A↑o
                move.l  ([$2038],$14),-(sp)
                rts
; End of function sub_FFC63A1E


; =============== S U B R O U T I N E =======================================


sub_FFC63A28:                           ; DATA XREF: ROM:FFC63904↑o
                move.l  ([$2038],$18),-(sp)
                rts
; End of function sub_FFC63A28

; ---------------------------------------------------------------------------

loc_FFC63A32:                           ; DATA XREF: ROM:FFC638FE↑o
                move.l  ([$2038],$10),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC63A40:                           ; DATA XREF: ROM:FFC068EC↑o
                movea.l (sp)+,a0
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     sub_FFC639D2(pc)
                bra.s   loc_FFC63A54
; ---------------------------------------------------------------------------

loc_FFC63A4E:                           ; DATA XREF: ROM:FFC068F0↑o
                movea.l (sp)+,a0
                pea     sub_FFC6452A(pc)

loc_FFC63A54:                           ; CODE XREF: ROM:FFC63A4C↑j
                move.l  a0,-(sp)
                jmp     sub_FFC6531C

; =============== S U B R O U T I N E =======================================


sub_FFC63A5A:                           ; DATA XREF: ROM:FFC63926↑o
                move.l  ([$2038],$20),-(sp)
                rts
; End of function sub_FFC63A5A


; =============== S U B R O U T I N E =======================================


sub_FFC63A64:                           ; DATA XREF: ROM:FFC63924↑o
                move.l  ([$2038],$1C),-(sp)
                rts
; End of function sub_FFC63A64

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC63A70:                           ; DATA XREF: ROM:FFC068F4↑o
                moveq   #1,d1
                bra.s   loc_FFC63A76
; ---------------------------------------------------------------------------

loc_FFC63A74:                           ; DATA XREF: ROM:FFC068F8↑o
                moveq   #0,d1

loc_FFC63A76:                           ; CODE XREF: ROM:FFC63A72↑j
                movea.l (sp)+,a0
                move.w  (sp)+,d0
                ext.l   d0
                move.l  d0,-(sp)
                pea     sub_FFC639D2(pc)
                bra.s   loc_FFC63A90
; ---------------------------------------------------------------------------

loc_FFC63A84:                           ; DATA XREF: ROM:FFC068FC↑o
                moveq   #1,d1
                bra.s   loc_FFC63A8A
; ---------------------------------------------------------------------------

loc_FFC63A88:                           ; DATA XREF: ROM:FFC06900↑o
                moveq   #0,d1

loc_FFC63A8A:                           ; CODE XREF: ROM:FFC63A86↑j
                movea.l (sp)+,a0
                pea     sub_FFC6452A(pc)

loc_FFC63A90:                           ; CODE XREF: ROM:FFC63A82↑j
                move.w  d1,-(sp)
                move.l  a0,-(sp)
                jmp     sub_FFC65560

; =============== S U B R O U T I N E =======================================


sub_FFC63A98:                           ; DATA XREF: ROM:FFC63920↑o
                move.l  ([$2038],$2C),-(sp)
                rts
; End of function sub_FFC63A98


; =============== S U B R O U T I N E =======================================


sub_FFC63AA2:                           ; DATA XREF: ROM:FFC6391E↑o
                move.l  ([$2038],$24),-(sp)
                rts
; End of function sub_FFC63AA2


; =============== S U B R O U T I N E =======================================


sub_FFC63AAC:                           ; DATA XREF: ROM:FFC6391A↑o
                move.l  ([$2038],$30),-(sp)
                rts
; End of function sub_FFC63AAC


; =============== S U B R O U T I N E =======================================


sub_FFC63AB6:                           ; DATA XREF: ROM:FFC63918↑o
                move.l  ([$2038],$28),-(sp)
                rts
; End of function sub_FFC63AB6

; ---------------------------------------------------------------------------

loc_FFC63AC0:                           ; DATA XREF: ROM:FFC06904↑o
                move.w  $A(sp),d0
                movea.l 4(sp),a0
                subq.w  #4,sp
                asl.w   #2,d0
                lea     dword_FFC63940(pc),a1
                move.l  (a1,d0.w),-(sp)
                move.l  (a0)+,-(sp)
                movea.l (a0),a0
                jsr     (a0)
                move.l  (sp)+,d0
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC63ADE:                           ; DATA XREF: ROM:FFC63B00↓o
                                        ; ROM:FFC63B32↓o ...
                move.l  ([$2038],$34),-(sp)
                rts
; End of function sub_FFC63ADE

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC63AF0:                           ; DATA XREF: ROM:FFC06908↑o
                lea     $14(sp),a0
                lea     4(sp),a1
                subq.w  #2,sp
                move.l  -(a0),-(sp)
                move.l  -(a0),-(sp)
                move.l  a1,-(sp)
                pea     sub_FFC63ADE(pc)
                clr.w   -(sp)
                jsr     sub_FFC65272
                move.w  (sp)+,d0
                movea.l (sp),a0
                lea     $14(sp),sp
                move.w  d0,(sp)
                jmp     (a0)

; =============== S U B R O U T I N E =======================================


sub_FFC63B16:                           ; DATA XREF: ROM:FFC63908↑o
                move.l  ([$2038],$38),-(sp)
                rts
; End of function sub_FFC63B16

; ---------------------------------------------------------------------------

loc_FFC63B20:                           ; DATA XREF: ROM:FFC0690C↑o
                lea     $16(sp),a0
                lea     4(sp),a1
                subq.w  #2,sp
                move.l  -(a0),-(sp)
                move.l  -(a0),-(sp)
                move.w  -(a0),-(sp)
                move.l  a1,-(sp)
                pea     sub_FFC63ADE(pc)
                jsr     sub_FFC6531C
                move.w  (sp)+,d0
                movea.l (sp),a0
                lea     $16(sp),sp
                move.w  d0,(sp)
                jmp     (a0)

; =============== S U B R O U T I N E =======================================


sub_FFC63B46:                           ; DATA XREF: ROM:FFC63928↑o
                move.l  ([$2038],$3C),-(sp)
                rts
; End of function sub_FFC63B46

; ---------------------------------------------------------------------------

loc_FFC63B50:                           ; DATA XREF: ROM:FFC06910↑o
                moveq   #1,d0
                bra.s   loc_FFC63B56
; ---------------------------------------------------------------------------

loc_FFC63B54:                           ; DATA XREF: ROM:FFC06914↑o
                moveq   #0,d0

loc_FFC63B56:                           ; CODE XREF: ROM:FFC63B52↑j
                lea     $16(sp),a0
                lea     4(sp),a1
                subq.w  #2,sp
                move.l  -(a0),-(sp)
                move.l  -(a0),-(sp)
                move.w  -(a0),-(sp)
                move.l  a1,-(sp)
                pea     sub_FFC63ADE(pc)
                move.w  d0,-(sp)
                jsr     sub_FFC65560
                move.w  (sp)+,d0
                movea.l (sp),a0
                lea     $16(sp),sp
                move.w  d0,(sp)
                jmp     (a0)

; =============== S U B R O U T I N E =======================================


sub_FFC63B7E:                           ; DATA XREF: ROM:FFC63922↑o
                move.l  ([$2038],$40),-(sp)
                rts
; End of function sub_FFC63B7E


; =============== S U B R O U T I N E =======================================


sub_FFC63B88:                           ; DATA XREF: ROM:FFC6391C↑o
                move.l  ([$2038],$44),-(sp)
                rts
; End of function sub_FFC63B88

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
; ---------------------------------------------------------------------------

loc_FFC63BA0:                           ; DATA XREF: ROM:FFC06918↑o
                moveq   #1,d1
                bra.s   loc_FFC63BA6
; ---------------------------------------------------------------------------

loc_FFC63BA4:                           ; DATA XREF: ROM:FFC0691C↑o
                moveq   #0,d1

loc_FFC63BA6:                           ; CODE XREF: ROM:FFC63BA2↑j
                movea.l (sp),a0
                move.l  d1,(sp)
                move.l  a0,-(sp)
                jmp     loc_FFC642B6

; =============== S U B R O U T I N E =======================================


sub_FFC63BB0:                           ; DATA XREF: ROM:FFC63910↑o
                move.l  ([$2038],$4C),-(sp)
                rts
; End of function sub_FFC63BB0


; =============== S U B R O U T I N E =======================================


sub_FFC63BBA:                           ; DATA XREF: ROM:FFC6390E↑o
                move.l  ([$2038],$48),-(sp)
                rts
; End of function sub_FFC63BBA

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
; ---------------------------------------------------------------------------

loc_FFC63BD0:                           ; DATA XREF: ROM:FFC06920↑o
                movea.l 4(sp),a0
                movea.l 8(sp),a1
                addq.l  #4,a1
                move.l  $C(sp),-(sp)
                move.l  (a0)+,d0
                move.l  (a0),d1
                swap    d1
                sub.w   (a1)+,d1
                swap    d1
                sub.w   (a1),d1
                cmp.l   d0,d1
                bne.s   loc_FFC63BFC
                tst.l   d0
                bne.s   loc_FFC63BF6
                addq.l  #4,sp
                bra.s   loc_FFC63C06
; ---------------------------------------------------------------------------

loc_FFC63BF6:                           ; CODE XREF: ROM:FFC63BF0↑j
                move.l  d0,-(sp)
                _OffsetRgn
                bra.s   loc_FFC63C06
; ---------------------------------------------------------------------------

loc_FFC63BFC:                           ; CODE XREF: ROM:FFC63BEC↑j
                subq.l  #6,a1
                move.l  a1,-(sp)
                subq.l  #4,a0
                move.l  a0,-(sp)
                _MapRgn

loc_FFC63C06:                           ; CODE XREF: ROM:FFC63BF4↑j
                                        ; ROM:FFC63BFA↑j
                movea.l (sp)+,a0
                moveq   #$C,d0
                adda.l  d0,sp
                jmp     (a0)
; ---------------------------------------------------------------------------
                dc.b $4E ; N
                dc.b $75 ; u

; =============== S U B R O U T I N E =======================================


sub_FFC63C10:                           ; CODE XREF: sub_FFC64540+4C↓p
                                        ; sub_FFC65280+7C↓p ...
                move.l  ([$2038],$50),-(sp)
                rts
; End of function sub_FFC63C10

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC63C20:                           ; DATA XREF: ROM:FFC06924↑o
                moveq   #0,d0
                bra.s   loc_FFC63C32
; ---------------------------------------------------------------------------

loc_FFC63C24:                           ; DATA XREF: ROM:FFC06928↑o
                moveq   #1,d0
                bra.s   loc_FFC63C32
; ---------------------------------------------------------------------------

loc_FFC63C28:                           ; DATA XREF: ROM:FFC0692C↑o
                moveq   #0,d0
                bra.s   loc_FFC63C2E
; ---------------------------------------------------------------------------

loc_FFC63C2C:                           ; DATA XREF: ROM:FFC06930↑o
                moveq   #1,d0

loc_FFC63C2E:                           ; CODE XREF: ROM:FFC63C2A↑j
                moveq   #$50,d1 ; 'P'
                bra.s   loc_FFC63C34
; ---------------------------------------------------------------------------

loc_FFC63C32:                           ; CODE XREF: ROM:FFC63C22↑j
                                        ; ROM:FFC63C26↑j
                moveq   #$4C,d1 ; 'L'

loc_FFC63C34:                           ; CODE XREF: ROM:FFC63C30↑j
                movea.l 8(sp),a0
                movea.l (a0),a0
                tst.w   (a0)
                bne.s   loc_FFC63C42
                moveq   #$FFFFFFCE,d0
                bra.s   loc_FFC63C56
; ---------------------------------------------------------------------------

loc_FFC63C42:                           ; CODE XREF: ROM:FFC63C3C↑j
                adda.l  d1,a0
                tst.l   d0
                beq.s   loc_FFC63C4E
                move.l  4(sp),(a0)
                bra.s   loc_FFC63C54
; ---------------------------------------------------------------------------

loc_FFC63C4E:                           ; CODE XREF: ROM:FFC63C46↑j
                movea.l 4(sp),a1
                move.l  (a0),(a1)

loc_FFC63C54:                           ; CODE XREF: ROM:FFC63C4C↑j
                moveq   #0,d0

loc_FFC63C56:                           ; CODE XREF: ROM:FFC63C40↑j
                movea.l (sp)+,a0
                addq.l  #8,sp
                move.w  d0,(sp)
                jmp     (a0)

; =============== S U B R O U T I N E =======================================


sub_FFC63C5E:                           ; DATA XREF: ROM:FFC63936↑o
                move.l  ([$2038],$60),-(sp)
                rts
; End of function sub_FFC63C5E


; =============== S U B R O U T I N E =======================================


sub_FFC63C68:                           ; DATA XREF: ROM:FFC63934↑o
                move.l  ([$2038],$5C),-(sp)
                rts
; End of function sub_FFC63C68


; =============== S U B R O U T I N E =======================================


sub_FFC63C72:                           ; DATA XREF: ROM:FFC63932↑o
                move.l  ([$2038],$58),-(sp)
                rts
; End of function sub_FFC63C72


; =============== S U B R O U T I N E =======================================


sub_FFC63C7C:                           ; DATA XREF: ROM:FFC63930↑o
                move.l  ([$2038],$54),-(sp)
                rts
; End of function sub_FFC63C7C

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
; ---------------------------------------------------------------------------

loc_FFC63C90:                           ; DATA XREF: ROM:FFC06934↑o
                moveq   #1,d0
                bra.s   loc_FFC63C96
; ---------------------------------------------------------------------------

loc_FFC63C94:                           ; DATA XREF: ROM:FFC06938↑o
                moveq   #0,d0

loc_FFC63C96:                           ; CODE XREF: ROM:FFC63C92↑j
                movea.l 4(sp),a1
                movea.l ($2B6).w,a0
                movea.l $174(a0),a0
                movea.l (a0),a0
                tst.l   d0
                beq.s   loc_FFC63CAE
                move.l  $260(a0),(a1)
                bra.s   loc_FFC63CBA
; ---------------------------------------------------------------------------

loc_FFC63CAE:                           ; CODE XREF: ROM:FFC63CA6↑j
                move.l  a1,$260(a0)
                bra.s   loc_FFC63CBA
; ---------------------------------------------------------------------------
                dc.b $4A ; J
                dc.b $80
                dc.b $67 ; g
                dc.b   2
                dc.b $42 ; B
                dc.b $91
; ---------------------------------------------------------------------------

loc_FFC63CBA:                           ; CODE XREF: ROM:FFC63CAC↑j
                                        ; ROM:FFC63CB2↑j
                movea.l (sp),a1
                addq.l  #8,sp
                jmp     (a1)

; =============== S U B R O U T I N E =======================================


sub_FFC63CC0:                           ; DATA XREF: ROM:FFC6393E↑o
                move.l  ([$2038],$64),-(sp)
                rts
; End of function sub_FFC63CC0


; =============== S U B R O U T I N E =======================================


sub_FFC63CCA:                           ; DATA XREF: ROM:FFC6392E↑o
                move.l  ([$2038],$68),-(sp)
                rts
; End of function sub_FFC63CCA

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

sub_FFC63CE0:                           ; DATA XREF: ROM:FFC0693C↑o

var_18          = -$18
var_8           = -8
var_6           = -6
var_4           = -4
var_2           = -2
arg_0           =  8
arg_2           =  $A

                link    a6,#-8
                movem.l d6-d7/a3-a4,-(sp)
                move.w  arg_0(a6),d7
                movea.l arg_2(a6),a3
                lea     $4C(a3),a4
                lea     var_8(a6),a0
                lea     $54(a3),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                pea     var_8(a6)
                pea     6(a3)
                move.l  a4,-(sp)
                _MapRect
                moveq   #$C,d0
                and.w   d7,d0
                subq.w  #4,d0
                beq.s   loc_FFC63D1E
                subq.w  #4,d0
                beq.s   loc_FFC63D42
                subq.w  #4,d0
                beq.s   loc_FFC63D4C
                bra.s   loc_FFC63D56
; ---------------------------------------------------------------------------

loc_FFC63D1E:                           ; CODE XREF: sub_FFC63CE0+32↑j
                move.w  6(a4),d0
                ext.l   d0
                move.w  2(a4),d1
                ext.l   d1
                add.l   d0,d1
                move.w  var_2(a6),d0
                ext.l   d0
                move.w  var_6(a6),d2
                ext.l   d2
                add.l   d0,d2
                sub.l   d2,d1
                move.l  d1,d6
                asr.l   #1,d6
                bra.s   loc_FFC63D58
; ---------------------------------------------------------------------------

loc_FFC63D42:                           ; CODE XREF: sub_FFC63CE0+36↑j
                move.w  2(a4),d6
                sub.w   var_6(a6),d6
                bra.s   loc_FFC63D58
; ---------------------------------------------------------------------------

loc_FFC63D4C:                           ; CODE XREF: sub_FFC63CE0+3A↑j
                move.w  6(a4),d6
                sub.w   var_2(a6),d6
                bra.s   loc_FFC63D58
; ---------------------------------------------------------------------------

loc_FFC63D56:                           ; CODE XREF: sub_FFC63CE0+3C↑j
                clr.w   d6

loc_FFC63D58:                           ; CODE XREF: sub_FFC63CE0+60↑j
                                        ; sub_FFC63CE0+6A↑j ...
                moveq   #3,d0
                and.w   d7,d0
                subq.w  #1,d0
                beq.s   loc_FFC63D6A
                subq.w  #1,d0
                beq.s   loc_FFC63D8C
                subq.w  #1,d0
                beq.s   loc_FFC63D94
                bra.s   loc_FFC63D9E
; ---------------------------------------------------------------------------

loc_FFC63D6A:                           ; CODE XREF: sub_FFC63CE0+7E↑j
                move.w  4(a4),d0
                ext.l   d0
                move.w  (a4),d1
                ext.l   d1
                add.l   d0,d1
                move.w  var_4(a6),d0
                ext.l   d0
                move.w  var_8(a6),d2
                ext.l   d2
                add.l   d0,d2
                sub.l   d2,d1
                move.l  d1,d7
                asr.l   #1,d7
                bra.s   loc_FFC63DA0
; ---------------------------------------------------------------------------

loc_FFC63D8C:                           ; CODE XREF: sub_FFC63CE0+82↑j
                move.w  (a4),d7
                sub.w   var_8(a6),d7
                bra.s   loc_FFC63DA0
; ---------------------------------------------------------------------------

loc_FFC63D94:                           ; CODE XREF: sub_FFC63CE0+86↑j
                move.w  4(a4),d7
                sub.w   var_4(a6),d7
                bra.s   loc_FFC63DA0
; ---------------------------------------------------------------------------

loc_FFC63D9E:                           ; CODE XREF: sub_FFC63CE0+88↑j
                clr.w   d7

loc_FFC63DA0:                           ; CODE XREF: sub_FFC63CE0+AA↑j
                                        ; sub_FFC63CE0+B2↑j ...
                move.l  a4,-(sp)
                move.w  d6,-(sp)
                move.w  d7,-(sp)
                _OffsetRect
                movem.l var_18(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #6
; End of function sub_FFC63CE0


; =============== S U B R O U T I N E =======================================


sub_FFC63DB4:                           ; CODE XREF: sub_FFC650E0+B2↓p
                                        ; sub_FFC65280+64↓p ...
                movea.l ($2038).w,a1
                movea.l $6C(a1),a1
                jmp     (a1)
; End of function sub_FFC63DB4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC63DC0:                           ; DATA XREF: ROM:FFC06940↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                movea.l arg_8(a6),a4
                move.l  arg_0(a6),d7
                sub.l   a3,d7
                movea.l (a4),a0
                move.w  (a0),d6
                movea.l a4,a0
                ext.l   d6
                move.l  d6,d1
                add.l   d7,d1
                move.l  d1,d0
                _SetHandleSize
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                tst.w   (sp)+
                beq.s   loc_FFC63DF6
                clr.b   arg_C(a6)
                bra.s   loc_FFC63E0E
; ---------------------------------------------------------------------------

loc_FFC63DF6:                           ; CODE XREF: sub_FFC63DC0+2E↑j
                movea.l a3,a0
                ext.l   d6
                move.l  d6,d0
                add.l   (a4),d0
                movea.l d0,a1
                move.l  d7,d0
                _BlockMoveData
                movea.l (a4),a0
                add.w   d7,(a0)
                move.b  #1,arg_C(a6)

loc_FFC63E0E:                           ; CODE XREF: sub_FFC63DC0+34↑j
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC63DC0


; =============== S U B R O U T I N E =======================================


sub_FFC63E1A:                           ; CODE XREF: sub_FFC63E30+DC↓p
                                        ; sub_FFC63E30+126↓p ...
                movea.l ($2038).w,a1
                movea.l $70(a1),a1
                jmp     (a1)
; End of function sub_FFC63E1A

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

sub_FFC63E30:                           ; DATA XREF: ROM:FFC06944↑o

var_100         = -$100
var_E0          = -$E0
var_DC          = -$DC
var_D8          = -$D8
var_D4          = -$D4
var_D2          = -$D2
var_D0          = -$D0
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-$E0
                movem.l d3-d7/a2-a4,-(sp)
                movea.l arg_4(a6),a2
                lea     var_D0(a6),a3
                movea.l arg_0(a6),a0
                move.l  $32(a0),var_D8(a6)
                move.w  $36(a0),var_D4(a6)
                movea.l a3,a4
                moveq   #$64,d6 ; 'd'
                moveq   #0,d0
                move.w  var_D4(a6),d0
                cmpi.w  #2,d0
                shi     d3
                neg.b   d3
                beq.s   loc_FFC63E68
                moveq   #$FFFFFFFF,d0
                bra.s   loc_FFC63E6E
; ---------------------------------------------------------------------------

loc_FFC63E68:                           ; CODE XREF: sub_FFC63E30+32↑j
                move.l  #$FFFF0000,d0

loc_FFC63E6E:                           ; CODE XREF: sub_FFC63E30+36↑j
                move.l  d0,var_8(a6)
                moveq   #0,d0
                move.l  d0,var_4(a6)
                movea.l (a2),a0
                move.w  #$A,(a0)
                movea.l arg_0(a6),a0
                movea.l (a2),a1
                addq.l  #2,a1
                lea     $54(a0),a0
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                movea.l arg_0(a6),a0
                moveq   #0,d1
                move.w  $54(a0),d1
                move.l  d1,d0
                moveq   #0,d2
                move.w  var_D4(a6),d2
                move.l  d2,d1
                mulu.w  d1,d0
                add.l   d0,var_D8(a6)
                move.w  $54(a0),var_D2(a6)
                bra.w   loc_FFC63FA0
; ---------------------------------------------------------------------------

loc_FFC63EB2:                           ; CODE XREF: sub_FFC63E30+184↓j
                moveq   #0,d0
                move.w  var_D2(a6),d0
                tst.l   d0
                movea.l arg_0(a6),a0
                move.w  $58(a0),d1
                ext.l   d1
                cmp.l   d0,d1
                beq.s   loc_FFC63EEA
                movea.l var_D8(a6),a0
                move.l  (a0),var_DC(a6)
                move.l  var_DC(a6),var_E0(a6)
                move.l  var_4(a6),d0
                move.l  var_E0(a6),d1
                eor.l   d0,d1
                move.l  d1,d7
                move.l  var_E0(a6),var_4(a6)
                bra.s   loc_FFC63EEE
; ---------------------------------------------------------------------------

loc_FFC63EEA:                           ; CODE XREF: sub_FFC63E30+96↑j
                move.l  var_4(a6),d7

loc_FFC63EEE:                           ; CODE XREF: sub_FFC63E30+B8↑j
                and.l   var_8(a6),d7
                tst.l   d7
                beq.w   loc_FFC63F92
                clr.w   d5
                moveq   #0,d0
                move.w  d6,d0
                cmpi.w  #2,d0
                bcc.s   loc_FFC63F1A
                subq.l  #2,sp
                move.l  a2,-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC63E1A
                tst.b   (sp)+
                beq.w   loc_FFC64016
                movea.l a3,a4
                moveq   #$64,d6 ; 'd'

loc_FFC63F1A:                           ; CODE XREF: sub_FFC63E30+D2↑j
                move.w  var_D2(a6),(a4)+
                bra.s   loc_FFC63F24
; ---------------------------------------------------------------------------

loc_FFC63F20:                           ; CODE XREF: sub_FFC63E30+FC↓j
                addq.w  #1,d5
                lsl.l   #1,d7

loc_FFC63F24:                           ; CODE XREF: sub_FFC63E30+EE↑j
                move.l  #$80000000,d0
                and.l   d7,d0
                beq.s   loc_FFC63F20
                move.w  d5,d0
                addq.w  #1,d5
                move.w  d0,(a4)+
                subq.w  #2,d6

loc_FFC63F36:                           ; CODE XREF: sub_FFC63E30+140↓j
                move.l  #$C0000000,d4
                and.l   d7,d4
                tst.l   d4
                beq.s   loc_FFC63F68
                cmpi.l  #$C0000000,d4
                beq.s   loc_FFC63F68
                tst.w   d6
                bne.s   loc_FFC63F64
                subq.l  #2,sp
                move.l  a2,-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC63E1A
                tst.b   (sp)+
                beq.w   loc_FFC64016
                movea.l a3,a4
                moveq   #$64,d6 ; 'd'

loc_FFC63F64:                           ; CODE XREF: sub_FFC63E30+11C↑j
                move.w  d5,(a4)+
                subq.w  #1,d6

loc_FFC63F68:                           ; CODE XREF: sub_FFC63E30+110↑j
                                        ; sub_FFC63E30+118↑j
                move.w  d5,d0
                addq.w  #1,d5
                lsl.l   #1,d7
                tst.l   d7
                bne.s   loc_FFC63F36
                tst.w   d6
                bne.s   loc_FFC63F8C
                subq.l  #2,sp
                move.l  a2,-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC63E1A
                tst.b   (sp)+
                beq.w   loc_FFC64016
                movea.l a3,a4
                moveq   #$64,d6 ; 'd'

loc_FFC63F8C:                           ; CODE XREF: sub_FFC63E30+144↑j
                move.w  #$7FFF,(a4)+
                subq.w  #1,d6

loc_FFC63F92:                           ; CODE XREF: sub_FFC63E30+C4↑j
                addq.w  #1,var_D2(a6)
                moveq   #0,d0
                move.w  var_D4(a6),d0
                add.l   d0,var_D8(a6)

loc_FFC63FA0:                           ; CODE XREF: sub_FFC63E30+7E↑j
                moveq   #0,d0
                move.w  var_D2(a6),d0
                tst.l   d0
                movea.l arg_0(a6),a0
                move.w  $58(a0),d1
                ext.l   d1
                cmp.l   d0,d1
                bge.w   loc_FFC63EB2
                tst.w   d6
                bne.s   loc_FFC63FD0
                subq.l  #2,sp
                move.l  a2,-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC63E1A
                tst.b   (sp)+
                beq.s   loc_FFC64016
                movea.l a3,a4
                moveq   #$64,d6 ; 'd'

loc_FFC63FD0:                           ; CODE XREF: sub_FFC63E30+18A↑j
                move.w  #$7FFF,(a4)+
                movea.l (a2),a0
                moveq   #0,d0
                move.w  (a0),d0
                moveq   #$A,d1
                cmp.l   d0,d1
                bne.s   loc_FFC64006
                move.l  a4,d0
                sub.l   a3,d0
                moveq   #$12,d1
                cmp.l   d0,d1
                bne.s   loc_FFC64006
                move.w  2(a3),d0
                cmp.w   $A(a3),d0
                bne.s   loc_FFC64006
                move.w  4(a3),d0
                cmp.w   $C(a3),d0
                bne.s   loc_FFC64006
                movea.l a2,a0
                moveq   #$A,d0
                _SetHandleSize
                bra.s   loc_FFC6401C
; ---------------------------------------------------------------------------

loc_FFC64006:                           ; CODE XREF: sub_FFC63E30+1AE↑j
                                        ; sub_FFC63E30+1B8↑j ...
                subq.l  #2,sp
                move.l  a2,-(sp)
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC63E1A
                tst.b   (sp)+
                bne.s   loc_FFC6401C

loc_FFC64016:                           ; CODE XREF: sub_FFC63E30+E2↑j
                                        ; sub_FFC63E30+12C↑j ...
                movea.l (a2),a0
                move.w  #$A,(a0)

loc_FFC6401C:                           ; CODE XREF: sub_FFC63E30+1D4↑j
                                        ; sub_FFC63E30+1E4↑j
                movem.l var_100(a6),d3-d7/a2-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC63E30


; =============== S U B R O U T I N E =======================================


sub_FFC64028:                           ; CODE XREF: sub_FFC64540+3E↓p
                                        ; sub_FFC65280+6E↓p
                movea.l ($2038).w,a1
                movea.l $74(a1),a1
                jmp     (a1)
; End of function sub_FFC64028

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

sub_FFC64040:                           ; DATA XREF: ROM:FFC06948↑o

var_14          = -$14
arg_0           =  8

                link    a6,#0
                movem.l d5-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                move.l  $72(a4),d5
                moveq   #8,d7
                moveq   #0,d0
                move.w  $70(a4),d0
                move.l  d0,d6
                addq.l  #2,d6
                movea.l $76(a4),a3

loc_FFC64060:                           ; CODE XREF: sub_FFC64040+68↓j
                moveq   #0,d0
                move.w  $6A(a4),d0
                ext.l   d7
                cmp.l   d0,d7
                bgt.s   loc_FFC640A2
                ext.l   d7
                move.l  d7,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC65E4C
                tst.l   d0
                addq.w  #8,sp
                beq.s   loc_FFC640A2
                ext.l   d6
                move.l  d6,-(sp)
                move.l  d5,-(sp)
                jsr     (a3)
                move.l  d0,$48(a4)
                addq.w  #8,sp
                beq.s   loc_FFC640A2
                move.w  d7,$6A(a4)
                movea.l $7A(a4),a0
                tst.l   (a0)
                bne.s   loc_FFC640B6
                move.l  a4,-(sp)
                jsr     sub_FFC65C84
                addq.w  #4,sp
                bra.s   loc_FFC640B6
; ---------------------------------------------------------------------------

loc_FFC640A2:                           ; CODE XREF: sub_FFC64040+2A↑j
                                        ; sub_FFC64040+3A↑j ...
                subq.w  #4,d7
                subq.w  #1,d6
                tst.w   d7
                bne.s   loc_FFC64060
                move.w  #1,$6A(a4)
                moveq   #0,d0
                move.l  d0,$7A(a4)

loc_FFC640B6:                           ; CODE XREF: sub_FFC64040+56↑j
                                        ; sub_FFC64040+60↑j
                movem.l var_14(a6),d5-d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC64040


; =============== S U B R O U T I N E =======================================


sub_FFC640C2:                           ; CODE XREF: sub_FFC64C60+DC↓p
                movea.l ($2038).w,a1
                movea.l $78(a1),a1
                jmp     (a1)
; End of function sub_FFC640C2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC640D0:                           ; DATA XREF: ROM:FFC0694C↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  d6,-(sp)
                movea.l arg_0(a6),a1
                move.w  6(a1),d0
                ext.l   d0
                move.w  2(a1),d1
                ext.l   d1
                move.l  d0,d6
                sub.l   d1,d6
                move.w  4(a1),d0
                ext.l   d0
                move.w  (a1),d1
                ext.l   d1
                move.l  d0,d2
                sub.l   d1,d2
                moveq   #$20,d0 ; ' '
                cmp.l   d6,d0
                ble.s   loc_FFC64104
                moveq   #$20,d0 ; ' '
                cmp.l   d2,d0
                bgt.s   loc_FFC64108

loc_FFC64104:                           ; CODE XREF: sub_FFC640D0+2C↑j
                moveq   #0,d0
                bra.s   loc_FFC64114
; ---------------------------------------------------------------------------

loc_FFC64108:                           ; CODE XREF: sub_FFC640D0+32↑j
                moveq   #$C,d0
                cmp.l   d2,d0
                bge.s   loc_FFC64112
                moveq   #3,d0
                bra.s   loc_FFC64114
; ---------------------------------------------------------------------------

loc_FFC64112:                           ; CODE XREF: sub_FFC640D0+3C↑j
                moveq   #6,d0

loc_FFC64114:                           ; CODE XREF: sub_FFC640D0+36↑j
                                        ; sub_FFC640D0+40↑j
                move.l  var_4(a6),d6
                unlk    a6
                rts
; End of function sub_FFC640D0


; =============== S U B R O U T I N E =======================================


sub_FFC6411C:                           ; CODE XREF: sub_FFC64EC0+10↓p
                movea.l ($2038).w,a1
                movea.l $7C(a1),a1
                jmp     (a1)
; End of function sub_FFC6411C

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

sub_FFC64130:                           ; DATA XREF: ROM:FFC06950↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  $6A(a4),d7
                movea.l $48(a4),a0
                move.l  (a0),(a4)
                moveq   #0,d0
                move.w  d7,d0
                move.w  $20(a4),d1
                ext.l   d1
                cmp.l   d1,d0
                beq.s   loc_FFC641C0
                clr.l   $E(a4)
                moveq   #0,d0
                move.l  d0,$12(a4)
                move.l  #$480000,$16(a4)
                move.l  #$480000,$1A(a4)
                clr.w   $1E(a4)
                move.w  #1,$22(a4)
                move.l  d0,$26(a4)
                move.w  d7,$20(a4)
                move.w  d7,$24(a4)
                moveq   #0,d1
                move.w  $70(a4),d1
                cmpi.l  #$80,d1
                beq.s   loc_FFC641B0
                moveq   #0,d1
                move.w  d7,d1
                move.l  d1,d0
                moveq   #0,d2
                move.w  $5C(a4),d2
                move.l  d2,d1
                mulu.w  d1,d0
                move.l  #$8000,d1
                or.l    d0,d1
                move.w  d1,4(a4)
                bra.s   loc_FFC641BA
; ---------------------------------------------------------------------------

loc_FFC641B0:                           ; CODE XREF: sub_FFC64130+60↑j
                movea.l $76(a4),a0
                move.w  4(a0),4(a4)

loc_FFC641BA:                           ; CODE XREF: sub_FFC64130+7E↑j
                move.l  $7A(a4),$2A(a4)

loc_FFC641C0:                           ; CODE XREF: sub_FFC64130+22↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rtd     #4
; End of function sub_FFC64130


; =============== S U B R O U T I N E =======================================


sub_FFC641CC:                           ; CODE XREF: sub_FFC64950+36↓p
                movea.l ($2038).w,a1
                movea.l $80(a1),a1
                jmp     (a1)
; End of function sub_FFC641CC

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

sub_FFC641E0:                           ; DATA XREF: ROM:FFC06954↑o

arg_0           =  8
arg_4           =  $C

                link    a6,#0
                moveq   #$4C,d0 ; 'L'
                _NewHandleClear
                movea.l arg_0(a6),a1
                move.l  a0,(a1)
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,arg_4(a6)
                unlk    a6
                rtd     #4
; End of function sub_FFC641E0


; =============== S U B R O U T I N E =======================================


sub_FFC641FE:                           ; CODE XREF: sub_FFC64370+E↓p
                                        ; DATA XREF: ROM:FFC6390C↑o
                movea.l ($2038).w,a1
                movea.l $84(a1),a1
                jmp     (a1)
; End of function sub_FFC641FE

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

sub_FFC64210:                           ; DATA XREF: ROM:FFC06958↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                move.l  a4,-(sp)
                moveq   #$54,d0 ; 'T'
                _NewHandleClear
                movea.l a0,a4
                move.l  a4,d0
                bne.s   loc_FFC6422C
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,arg_C(a6)
                bra.s   loc_FFC6424C
; ---------------------------------------------------------------------------

loc_FFC6422C:                           ; CODE XREF: sub_FFC64210+E↑j
                movea.l (a4),a0
                move.w  #1,(a0)
                movea.l (a4),a0
                move.l  arg_0(a6),$4C(a0)
                movea.l (a4),a0
                move.l  arg_4(a6),$50(a0)
                movea.l arg_8(a6),a0
                move.l  a4,(a0)
                clr.w   arg_C(a6)

loc_FFC6424C:                           ; CODE XREF: sub_FFC64210+1A↑j
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC64210


; =============== S U B R O U T I N E =======================================


sub_FFC64256:                           ; DATA XREF: ROM:FFC63906↑o
                movea.l ($2038).w,a1
                movea.l $88(a1),a1
                jmp     (a1)
; End of function sub_FFC64256


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64260:                           ; DATA XREF: ROM:FFC0695C↑o

var_18          = -$18
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18

                link    a6,#0
                movem.l d4-d7/a3-a4,-(sp)
                move.l  arg_0(a6),d4
                move.l  arg_4(a6),d5
                move.l  arg_C(a6),d7
                movea.l arg_8(a6),a0
                movea.l (a0),a0
                lea     4(a0),a4
                move.l  a4,d6
                moveq   #$24,d0 ; '$'
                add.l   d0,d6
                lea     dword_FFC63940(pc),a3

loc_FFC64288:                           ; CODE XREF: sub_FFC64260+42↓j
                cmp.l   (a3)+,d5
                bne.s   loc_FFC6429E
                tst.l   d4
                beq.s   loc_FFC64294
                move.l  d7,(a4)
                bra.s   loc_FFC64298
; ---------------------------------------------------------------------------

loc_FFC64294:                           ; CODE XREF: sub_FFC64260+2E↑j
                movea.l d7,a0
                move.l  (a4),(a0)

loc_FFC64298:                           ; CODE XREF: sub_FFC64260+32↑j
                clr.w   arg_10(a6)
                bra.s   loc_FFC642AA
; ---------------------------------------------------------------------------

loc_FFC6429E:                           ; CODE XREF: sub_FFC64260+2A↑j
                addq.w  #4,a4
                cmp.l   a4,d6
                bgt.s   loc_FFC64288
                move.w  #$FFCE,arg_10(a6)

loc_FFC642AA:                           ; CODE XREF: sub_FFC64260+3C↑j
                movem.l var_18(a6),d4-d7/a3-a4
                unlk    a6
                rtd     #$10
; End of function sub_FFC64260

; ---------------------------------------------------------------------------

loc_FFC642B6:                           ; CODE XREF: ROM:FFC63BAC↑j
                movea.l ($2038).w,a1
                movea.l $8C(a1),a1
                jmp     (a1)

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC642C0:                           ; DATA XREF: ROM:FFC06960↑o

var_22          = -$22
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_10          =  $18

                link    a6,#-2
                movem.l d3-d7/a2-a4,-(sp)
                movea.l arg_4(a6),a2
                move.l  arg_8(a6),d7
                movea.l arg_C(a6),a0
                movea.l (a0),a0
                lea     4(a0),a4
                move.l  a4,d4
                moveq   #$24,d0 ; '$'
                add.l   d0,d4
                lea     dword_FFC63940(pc),a3
                clr.w   d5
                movea.l arg_C(a6),a0
                _HGetState
                move.b  d0,d3
                movea.l arg_C(a6),a0
                _HLock

loc_FFC642F4:                           ; CODE XREF: sub_FFC642C0+5A↓j
                moveq   #3,d6

loc_FFC642F6:                           ; CODE XREF: sub_FFC642C0+54↓j
                btst    #0,d7
                beq.s   loc_FFC6430C
                subq.l  #2,sp
                move.l  (a3),-(sp)
                move.l  a4,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     (a2)
                move.w  (sp)+,d5
                bne.s   loc_FFC6431C

loc_FFC6430C:                           ; CODE XREF: sub_FFC642C0+3A↑j
                addq.w  #4,a4
                addq.w  #4,a3
                lsr.l   #1,d7
                subq.w  #1,d6
                bne.s   loc_FFC642F6
                lsr.l   #5,d7
                cmp.l   a4,d4
                bhi.s   loc_FFC642F4

loc_FFC6431C:                           ; CODE XREF: sub_FFC642C0+4A↑j
                movea.l arg_C(a6),a0
                move.b  d3,d0
                _HSetState
                move.w  d5,arg_10(a6)
                movem.l var_22(a6),d3-d7/a2-a4
                unlk    a6
                rtd     #$10
; End of function sub_FFC642C0


; =============== S U B R O U T I N E =======================================


sub_FFC64334:                           ; CODE XREF: sub_FFC64370+36↓p
                                        ; sub_FFC64480+20↓p
                                        ; DATA XREF: ...
                movea.l ($2038).w,a1
                movea.l $90(a1),a1
                jmp     (a1)
; End of function sub_FFC64334

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64340:                           ; DATA XREF: ROM:FFC06964↑o

arg_2           =  $A
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                subq.l  #4,sp
                move.l  arg_8(a6),-(sp)
                move.w  arg_2(a6),-(sp)
                _GetResource
                movea.l arg_4(a6),a0
                move.l  (sp)+,(a0)
                clr.w   arg_C(a6)
                unlk    a6
                rtd     #$C
; End of function sub_FFC64340


; =============== S U B R O U T I N E =======================================


sub_FFC64360:                           ; DATA XREF: sub_FFC64370+2A↓o
                movea.l ($2038).w,a1
                movea.l $94(a1),a1
                jmp     (a1)
; End of function sub_FFC64360

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64370:                           ; DATA XREF: ROM:FFC06968↑o

var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_6           =  $E
arg_A           =  $12

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_6(a6),a4
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFC641FE
                tst.w   (sp)+
                beq.s   loc_FFC64392
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,arg_A(a6)
                bra.s   loc_FFC643B0
; ---------------------------------------------------------------------------

loc_FFC64392:                           ; CODE XREF: sub_FFC64370+14↑j
                subq.l  #2,sp
                move.l  (a4),-(sp)
                move.l  arg_0(a6),-(sp)
                pea     sub_FFC64360(pc)
                move.w  arg_4(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFC64334
                clr.w   arg_A(a6)
                addq.w  #2,sp

loc_FFC643B0:                           ; CODE XREF: sub_FFC64370+20↑j
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC64370


; =============== S U B R O U T I N E =======================================


sub_FFC643BA:                           ; DATA XREF: ROM:FFC63900↑o
                movea.l ($2038).w,a1
                movea.l $98(a1),a1
                jmp     (a1)
; End of function sub_FFC643BA

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

sub_FFC643D0:                           ; DATA XREF: ROM:FFC0696C↑o

arg_0           =  8
arg_2           =  $A
arg_6           =  $E

                link    a6,#0
                move.w  arg_0(a6),d1
                moveq   #0,d0
                move.w  d1,d0
                cmpi.w  #7,d0
                bls.s   loc_FFC643EA
                move.w  #$FFCE,arg_6(a6)
                bra.s   loc_FFC643FA
; ---------------------------------------------------------------------------

loc_FFC643EA:                           ; CODE XREF: sub_FFC643D0+10↑j
                lsl.w   #8,d1
                movea.l arg_2(a6),a0
                movea.l (a0),a0
                move.w  d1,2(a0)
                clr.w   arg_6(a6)

loc_FFC643FA:                           ; CODE XREF: sub_FFC643D0+18↑j
                unlk    a6
                rtd     #6
; End of function sub_FFC643D0


; =============== S U B R O U T I N E =======================================


sub_FFC64400:                           ; DATA XREF: ROM:FFC6392A↑o
                movea.l ($2038).w,a1
                movea.l $9C(a1),a1
                jmp     (a1)
; End of function sub_FFC64400

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64410:                           ; DATA XREF: ROM:FFC06970↑o

arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                move.w  2(a0),d0
                lsr.w   #8,d0
                move.w  d0,arg_4(a6)
                unlk    a6
                rtd     #4
; End of function sub_FFC64410


; =============== S U B R O U T I N E =======================================


sub_FFC6442A:                           ; DATA XREF: ROM:FFC6392C↑o
                movea.l ($2038).w,a1
                movea.l $A0(a1),a1
                jmp     (a1)
; End of function sub_FFC6442A

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

sub_FFC64440:                           ; DATA XREF: ROM:FFC06974↑o

var_4           = -4
arg_4           =  $C
arg_C           =  $14

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_4(a6),a4
                tst.l   (a4)
                beq.s   loc_FFC6445E
                subq.l  #2,sp
                move.l  (a4),-(sp)
                _HomeResFile
                moveq   #$FFFFFFFF,d0
                cmp.w   (sp)+,d0
                bne.s   loc_FFC6445E
                movea.l (a4),a0
                _DisposeHandle

loc_FFC6445E:                           ; CODE XREF: sub_FFC64440+C↑j
                                        ; sub_FFC64440+18↑j
                moveq   #0,d0
                move.l  d0,(a4)
                clr.w   arg_C(a6)
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC64440


; =============== S U B R O U T I N E =======================================


sub_FFC64470:                           ; DATA XREF: sub_FFC64480+18↓o
                movea.l ($2038).w,a1
                movea.l $A4(a1),a1
                jmp     (a1)
; End of function sub_FFC64470

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64480:                           ; DATA XREF: ROM:FFC06978↑o

var_4           = -4
arg_0           =  8
arg_2           =  $A
arg_6           =  $E

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_2(a6),a4
                tst.b   arg_0(a6)
                beq.s   loc_FFC644A6
                subq.l  #2,sp
                move.l  a4,-(sp)
                moveq   #$FFFFFFFF,d0
                move.l  d0,-(sp)
                pea     sub_FFC64470(pc)
                moveq   #0,d1
                move.l  d1,-(sp)
                jsr     sub_FFC64334
                addq.w  #2,sp

loc_FFC644A6:                           ; CODE XREF: sub_FFC64480+E↑j
                movea.l a4,a0
                _DisposeHandle
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,arg_6(a6)
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #6
; End of function sub_FFC64480


; =============== S U B R O U T I N E =======================================


sub_FFC644BE:                           ; DATA XREF: ROM:FFC63902↑o
                movea.l ($2038).w,a1
                movea.l $A8(a1),a1
                jmp     (a1)
; End of function sub_FFC644BE

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

sub_FFC644D0:                           ; DATA XREF: ROM:FFC0697C↑o

var_18          = -$18
arg_0           =  8
arg_6           =  $E

                link    a6,#-4
                movem.l d6-d7/a2-a4,-(sp)
                move.l  arg_0(a6),d6
                move.w  arg_6(a6),d7
                movea.l d6,a0
                movea.l (a0),a3
                moveq   #0,d0
                move.w  d7,d0
                movea.l 4(a3,d0.l*4),a4
                move.l  a4,d0
                bne.s   loc_FFC6451E
                tst.w   (a3)
                beq.s   loc_FFC6451E
                movea.l $50(a3),a2
                move.l  a2,d0
                beq.s   loc_FFC6451E
                subq.l  #4,sp
                move.l  d7,d0
                asl.w   #2,d0
                lea     dword_FFC63940(pc),a0
                move.l  (a0,d0.w),-(sp)
                move.l  $4C(a3),-(sp)
                jsr     (a2)
                movea.l (sp)+,a4
                moveq   #0,d0
                move.w  d7,d0
                movea.l d6,a0
                movea.l (a0),a0
                move.l  a4,4(a0,d0.l*4)

loc_FFC6451E:                           ; CODE XREF: sub_FFC644D0+1E↑j
                                        ; sub_FFC644D0+22↑j ...
                move.l  a4,d0
                movem.l var_18(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC644D0


; =============== S U B R O U T I N E =======================================


sub_FFC6452A:                           ; DATA XREF: ROM:FFC63A12↑o
                                        ; ROM:FFC63A50↑o ...
                movea.l ($2038).w,a1
                movea.l $AC(a1),a1
                jmp     (a1)
; End of function sub_FFC6452A

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

sub_FFC64540:                           ; DATA XREF: ROM:FFC06980↑o

var_26          = -$26
var_12          = -$12
arg_0           =  8
arg_2           =  $A

                link    a6,#-$12
                movem.l d3/d6-d7/a3-a4,-(sp)
                movea.l arg_2(a6),a3
                moveq   #0,d0
                move.w  $70(a3),d0
                cmpi.l  #$80,d0
                sne     d3
                neg.b   d3
                move.b  d3,d7
                pea     var_12(a6)
                _GetPenState
                tst.b   d7
                beq.s   loc_FFC64592
                movea.l $44(a3),a0
                _HGetState
                move.b  d0,d6
                movea.l $44(a3),a0
                _HLock
                subq.l  #4,sp
                _NewRgn
                movea.l (sp),a4
                move.l  a3,-(sp)
                jsr     sub_FFC64028
                move.l  a4,-(sp)
                pea     $38(a3)
                pea     $4C(a3)
                jsr     sub_FFC63C10
                bra.s   loc_FFC64596
; ---------------------------------------------------------------------------

loc_FFC64592:                           ; CODE XREF: sub_FFC64540+26↑j
                movea.l $72(a3),a4

loc_FFC64596:                           ; CODE XREF: sub_FFC64540+50↑j
                move.w  arg_0(a6),d0
                subq.w  #1,d0
                beq.s   loc_FFC645DA
                subq.w  #1,d0
                beq.s   loc_FFC645C6
                subq.w  #1,d0
                bne.s   loc_FFC645EC
                move.l  a4,-(sp)
                moveq   #$FFFFFFF0,d0
                add.l   (a5),d0
                move.l  d0,-(sp)
                _FillRgn
                move.l  a4,-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  d0,-(sp)
                _InsetRgn
                move.l  a4,-(sp)
                moveq   #$FFFFFFE0,d0
                add.l   (a5),d0
                move.l  d0,-(sp)
                _FillRgn
                bra.s   loc_FFC645EC
; ---------------------------------------------------------------------------

loc_FFC645C6:                           ; CODE XREF: sub_FFC64540+60↑j
                moveq   #$FFFFFFE0,d0
                add.l   (a5),d0
                move.l  d0,-(sp)
                _PenPat
                moveq   #9,d0
                move.w  d0,-(sp)
                _PenMode
                move.l  a4,-(sp)
                _PaintRgn
                bra.s   loc_FFC645EC
; ---------------------------------------------------------------------------

loc_FFC645DA:                           ; CODE XREF: sub_FFC64540+5C↑j
                moveq   #$FFFFFFE8,d0
                add.l   (a5),d0
                move.l  d0,-(sp)
                _PenPat
                moveq   #$B,d0
                move.w  d0,-(sp)
                _PenMode
                move.l  a4,-(sp)
                _PaintRgn

loc_FFC645EC:                           ; CODE XREF: sub_FFC64540+64↑j
                                        ; sub_FFC64540+84↑j ...
                pea     var_12(a6)
                _SetPenState
                tst.b   d7
                beq.s   loc_FFC64602
                move.l  a4,-(sp)
                _DisposeRgn
                movea.l $44(a3),a0
                move.b  d6,d0
                _HSetState

loc_FFC64602:                           ; CODE XREF: sub_FFC64540+B4↑j
                movem.l var_26(a6),d3/d6-d7/a3-a4
                unlk    a6
                rtd     #6
; End of function sub_FFC64540


; =============== S U B R O U T I N E =======================================


sub_FFC6460E:                           ; CODE XREF: sub_FFC64950+74↓p
                                        ; sub_FFC64A10+62↓p ...
                movea.l ($2038).w,a1
                movea.l $B0(a1),a1
                jmp     (a1)
; End of function sub_FFC6460E

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

sub_FFC64620:                           ; DATA XREF: ROM:FFC06984↑o

var_30          = -$30
var_10          = -$10
var_C           = -$C
var_4           = -4
var_2           = -2
arg_0           =  8
arg_4           =  $C

                link    a6,#-$10
                movem.l d3-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l arg_4(a6),a3
                movea.l (a2),a4
                moveq   #$FFFFFFFF,d0
                move.l  d0,var_10(a6)
                move.w  $A(a2),d1
                ext.l   d1
                subq.l  #1,d1
                move.w  d1,var_4(a6)
                moveq   #$20,d1 ; ' '
                sub.w   $C(a2),d1
                move.l  var_10(a6),d2
                lsl.l   d1,d2
                move.l  d2,var_10(a6)
                moveq   #0,d1
                move.l  d1,var_C(a6)
                move.l  var_10(a6),d4
                and.l   (a4),d4
                adda.w  4(a2),a4
                clr.w   var_2(a6)
                bra.s   loc_FFC646C8
; ---------------------------------------------------------------------------

loc_FFC6466A:                           ; CODE XREF: sub_FFC64620+B0↓j
                move.l  d4,d3
                move.l  var_10(a6),d5
                and.l   (a4),d5
                adda.w  4(a2),a4
                tst.l   d3
                beq.s   loc_FFC646B8
                tst.l   var_C(a6)
                beq.s   loc_FFC646B6
                tst.l   d5
                beq.s   loc_FFC646B6
                move.l  #$40000000,d7
                move.l  d4,d6
                bra.s   loc_FFC646B2
; ---------------------------------------------------------------------------

loc_FFC6468E:                           ; CODE XREF: sub_FFC64620+94↓j
                move.l  #$E0000000,d0
                and.l   d6,d0
                cmpi.l  #$E0000000,d0
                bne.s   loc_FFC646AE
                move.l  var_C(a6),d0
                and.l   d7,d0
                beq.s   loc_FFC646AE
                move.l  d5,d0
                and.l   d7,d0
                beq.s   loc_FFC646AE
                eor.l   d7,d3

loc_FFC646AE:                           ; CODE XREF: sub_FFC64620+7C↑j
                                        ; sub_FFC64620+84↑j ...
                lsl.l   #1,d6
                lsr.l   #1,d7

loc_FFC646B2:                           ; CODE XREF: sub_FFC64620+6C↑j
                tst.l   d6
                bne.s   loc_FFC6468E

loc_FFC646B6:                           ; CODE XREF: sub_FFC64620+5E↑j
                                        ; sub_FFC64620+62↑j
                or.l    d3,(a3)

loc_FFC646B8:                           ; CODE XREF: sub_FFC64620+58↑j
                addq.w  #4,a3
                move.l  d4,var_C(a6)
                move.l  d5,d4
                move.w  var_2(a6),d0
                addq.w  #1,var_2(a6)

loc_FFC646C8:                           ; CODE XREF: sub_FFC64620+48↑j
                move.w  var_2(a6),d0
                cmp.w   var_4(a6),d0
                blt.s   loc_FFC6466A
                tst.l   d5
                beq.s   loc_FFC646D8
                or.l    d5,(a3)

loc_FFC646D8:                           ; CODE XREF: sub_FFC64620+B4↑j
                movem.l var_30(a6),d3-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC64620


; =============== S U B R O U T I N E =======================================


sub_FFC646E2:                           ; CODE XREF: sub_FFC64760+B0↓p
                movea.l ($2038).w,a1
                movea.l $B4(a1),a1
                jmp     (a1)
; End of function sub_FFC646E2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC646F0:                           ; DATA XREF: ROM:FFC06988↑o

var_10          = -$10
arg_0           =  8
arg_2           =  $A
arg_6           =  $E

                link    a6,#0
                movem.l d5/a2-a4,-(sp)
                movea.l arg_2(a6),a2
                move.b  arg_0(a6),d5
                movea.l arg_6(a6),a0
                movea.l (a0),a3
                movea.l (a2),a4
                move.w  4(a2),d2
                move.w  $A(a2),d1

loc_FFC64710:                           ; CODE XREF: sub_FFC646F0+4E↓j
                tst.b   d5
                beq.s   loc_FFC64722
                andi.l  #$AAAAAAAA,(a3)+
                andi.l  #$55555555,(a3)+
                bra.s   loc_FFC6473A
; ---------------------------------------------------------------------------

loc_FFC64722:                           ; CODE XREF: sub_FFC646F0+22↑j
                move.l  (a4),d0
                and.l   #$88888888,d0
                or.l    d0,(a3)+
                adda.w  d2,a4
                move.l  (a4),d0
                and.l   #$22222222,d0
                or.l    d0,(a3)+
                adda.w  d2,a4

loc_FFC6473A:                           ; CODE XREF: sub_FFC646F0+30↑j
                subq.w  #2,d1
                tst.w   d1
                bne.s   loc_FFC64710
                movem.l var_10(a6),d5/a2-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC646F0


; =============== S U B R O U T I N E =======================================


sub_FFC6474C:                           ; CODE XREF: sub_FFC64760+C8↓p
                                        ; sub_FFC64760+DA↓p
                movea.l ($2038).w,a1
                movea.l $B8(a1),a1
                jmp     (a1)
; End of function sub_FFC6474C

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

sub_FFC64760:                           ; DATA XREF: ROM:FFC0698C↑o

var_B2          = -$B2
var_96          = -$96
var_92          = -$92
var_8E          = -$8E
var_8C          = -$8C
var_84          = -$84
var_4           = -4
arg_0           =  8
arg_2           =  $A
arg_4           =  $C

                link    a6,#-$96
                movem.l d3-d7/a3-a4,-(sp)
                move.b  arg_0(a6),d4
                move.w  arg_2(a6),d6
                movea.l arg_4(a6),a4
                lea     var_84(a6),a3
                move.l  a3,d0
                add.l   #$80,d0
                move.l  d0,var_4(a6)
                move.l  $3C(a4),d0
                cmp.l   $A(a4),d0
                seq     d3
                neg.b   d3
                move.b  d3,d5

loc_FFC64792:                           ; CODE XREF: sub_FFC64760+3A↓j
                moveq   #0,d0
                move.l  d0,(a3)+
                cmpa.l  var_4(a6),a3
                bcs.s   loc_FFC64792
                lea     var_84(a6),a0
                move.l  a0,var_92(a6)
                move.w  #4,var_8E(a6)
                lea     var_8C(a6),a0
                lea     $38(a4),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                tst.b   d4
                beq.s   loc_FFC64802
                cmpi.w  #3,d6
                beq.s   loc_FFC64802
                tst.b   d5
                beq.s   loc_FFC647EA
                move.w  $A(a4),d7
                movea.l $44(a4),a0
                move.l  (a0),var_96(a6)
                lea     var_84(a6),a3

loc_FFC647D4:                           ; CODE XREF: sub_FFC64760+86↓j
                movea.l var_96(a6),a0
                move.l  (a0),(a3)+
                move.w  $5C(a4),d0
                ext.l   d0
                add.l   d0,var_96(a6)
                subq.w  #1,d7
                bne.s   loc_FFC647D4
                bra.s   loc_FFC64802
; ---------------------------------------------------------------------------

loc_FFC647EA:                           ; CODE XREF: sub_FFC64760+62↑j
                move.l  a4,-(sp)
                pea     var_92(a6)
                pea     6(a4)
                pea     var_8C(a6)
                moveq   #2,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits

loc_FFC64802:                           ; CODE XREF: sub_FFC64760+58↑j
                                        ; sub_FFC64760+5E↑j ...
                cmpi.w  #3,d6
                bne.s   loc_FFC64816
                pea     var_84(a6)
                pea     $32(a4)
                jsr     sub_FFC646E2
                addq.w  #8,sp

loc_FFC64816:                           ; CODE XREF: sub_FFC64760+A6↑j
                cmpi.w  #1,d6
                bne.s   loc_FFC6482E
                pea     var_92(a6)
                pea     $32(a4)
                moveq   #1,d0
                move.b  d0,-(sp)
                jsr     sub_FFC6474C
                bra.s   loc_FFC6483E
; ---------------------------------------------------------------------------

loc_FFC6482E:                           ; CODE XREF: sub_FFC64760+BA↑j
                pea     var_92(a6)
                pea     $32(a4)
                moveq   #0,d0
                move.b  d0,-(sp)
                jsr     sub_FFC6474C

loc_FFC6483E:                           ; CODE XREF: sub_FFC64760+CC↑j
                lea     $38(a4),a3
                tst.b   d4
                bne.s   loc_FFC6484C
                cmpi.w  #3,d6
                bne.s   loc_FFC648A0

loc_FFC6484C:                           ; CODE XREF: sub_FFC64760+E4↑j
                tst.w   $66(a4)
                beq.s   loc_FFC6486E
                tst.b   d5
                beq.s   loc_FFC6486E
                pea     var_92(a6)
                pea     $32(a4)
                move.l  $40(a4),-(sp)
                move.l  a3,-(sp)
                move.l  a3,-(sp)
                pea     $4C(a4)
                _CopyMask
                bra.s   loc_FFC648B8
; ---------------------------------------------------------------------------

loc_FFC6486E:                           ; CODE XREF: sub_FFC64760+F0↑j
                                        ; sub_FFC64760+F4↑j
                pea     $32(a4)
                move.l  $40(a4),-(sp)
                move.l  a3,-(sp)
                pea     $4C(a4)
                moveq   #3,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits
                pea     var_92(a6)
                move.l  $40(a4),-(sp)
                move.l  a3,-(sp)
                pea     $4C(a4)
                moveq   #1,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits
                bra.s   loc_FFC648B8
; ---------------------------------------------------------------------------

loc_FFC648A0:                           ; CODE XREF: sub_FFC64760+EA↑j
                pea     var_92(a6)
                move.l  $40(a4),-(sp)
                move.l  a3,-(sp)
                pea     $4C(a4)
                moveq   #1,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits

loc_FFC648B8:                           ; CODE XREF: sub_FFC64760+10C↑j
                                        ; sub_FFC64760+13E↑j
                movem.l var_B2(a6),d3-d7/a3-a4
                unlk    a6
                rtd     #8
; End of function sub_FFC64760


; =============== S U B R O U T I N E =======================================


sub_FFC648C4:                           ; CODE XREF: sub_FFC64950+82↓p
                                        ; sub_FFC64A10+70↓p ...
                movea.l ($2038).w,a1
                movea.l $BC(a1),a1
                jmp     (a1)
; End of function sub_FFC648C4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC648D0:                           ; DATA XREF: ROM:FFC06990↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                lea     $4C(a4),a3
                tst.w   $66(a4)
                beq.s   loc_FFC64908
                move.l  $A(a4),d0
                cmp.l   $3C(a4),d0
                bne.s   loc_FFC64908
                move.l  a4,-(sp)
                pea     $32(a4)
                move.l  $40(a4),-(sp)
                pea     6(a4)
                pea     $38(a4)
                move.l  a3,-(sp)
                _CopyMask
                bra.s   loc_FFC64936
; ---------------------------------------------------------------------------

loc_FFC64908:                           ; CODE XREF: sub_FFC648D0+14↑j
                                        ; sub_FFC648D0+1E↑j
                pea     $32(a4)
                move.l  $40(a4),-(sp)
                pea     $38(a4)
                move.l  a3,-(sp)
                moveq   #3,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits
                move.l  a4,-(sp)
                move.l  $40(a4),-(sp)
                pea     6(a4)
                move.l  a3,-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits

loc_FFC64936:                           ; CODE XREF: sub_FFC648D0+36↑j
                movem.l var_8(a6),a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC648D0


; =============== S U B R O U T I N E =======================================


sub_FFC64942:                           ; CODE XREF: sub_FFC64950+62↓p
                                        ; sub_FFC64A10+5A↓p ...
                movea.l ($2038).w,a1
                movea.l $C0(a1),a1
                jmp     (a1)
; End of function sub_FFC64942

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64950:                           ; DATA XREF: ROM:FFC06994↑o

var_20          = -$20
var_10          = -$10
var_8           = -8
arg_0           =  8

                link    a6,#-$10
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l $48(a4),a3
                move.w  $5E(a4),d7
                movea.l $7A(a4),a0
                _HNoPurge
                cmpi.w  #1,d7
                bne.s   loc_FFC64972
                clr.w   d7

loc_FFC64972:                           ; CODE XREF: sub_FFC64950+1E↑j
                tst.l   (a3)
                bne.s   loc_FFC6497A
                move.l  a3,-(sp)
                _LoadResource           ; come-from patches = #1

loc_FFC6497A:                           ; CODE XREF: sub_FFC64950+24↑j
                movea.l a3,a0
                _HGetState
                move.b  d0,d6
                movea.l a3,a0
                _HLock
                move.l  a4,-(sp)
                jsr     sub_FFC641CC
                pea     var_10(a6)
                move.w  #$40D,d0
                _PaletteDispatch
                pea     var_8(a6)
                move.w  #$40E,d0
                _PaletteDispatch
                moveq   #$21,d0 ; '!'
                move.l  d0,-(sp)
                _ForeColor
                moveq   #$1E,d0
                move.l  d0,-(sp)
                _BackColor
                cmpi.w  #3,d7
                beq.s   loc_FFC649B6
                move.l  a4,-(sp)
                jsr     sub_FFC64942

loc_FFC649B6:                           ; CODE XREF: sub_FFC64950+5E↑j
                tst.w   d7
                beq.s   loc_FFC649D6
                tst.b   $6E(a4)
                beq.s   loc_FFC649CA
                move.l  a4,-(sp)
                move.w  d7,-(sp)
                jsr     sub_FFC6460E
                bra.s   loc_FFC649D6
; ---------------------------------------------------------------------------

loc_FFC649CA:                           ; CODE XREF: sub_FFC64950+6E↑j
                move.l  a4,-(sp)
                move.w  d7,-(sp)
                moveq   #0,d0
                move.b  d0,-(sp)
                jsr     sub_FFC648C4

loc_FFC649D6:                           ; CODE XREF: sub_FFC64950+68↑j
                                        ; sub_FFC64950+78↑j
                pea     var_10(a6)
                move.w  #$40F,d0
                _PaletteDispatch
                pea     var_8(a6)
                move.w  #$410,d0
                _PaletteDispatch
                movea.l $2A(a4),a0
                _HPurge
                movea.l a3,a0
                move.b  d6,d0
                _HSetState
                movem.l var_20(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC64950


; =============== S U B R O U T I N E =======================================


sub_FFC64A02:                           ; CODE XREF: sub_FFC64C60+102↓p
                                        ; sub_FFC663C0+5E↓p
                movea.l ($2038).w,a1
                movea.l $C4(a1),a1
                jmp     (a1)
; End of function sub_FFC64A02

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64A10:                           ; DATA XREF: ROM:FFC06998↑o

var_28          = -$28
var_1C          = -$1C
var_16          = -$16
var_10          = -$10
var_8           = -8
arg_0           =  8

                link    a6,#-$1C
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  $5E(a4),d7
                movea.l $44(a4),a0
                move.l  (a0),(a4)
                tst.w   $62(a4)
                beq.s   loc_FFC64A58
                pea     var_10(a6)
                move.w  #$40D,d0
                _PaletteDispatch
                pea     var_8(a6)
                move.w  #$40E,d0
                _PaletteDispatch
                pea     var_1C(a6)
                _GetForeColor
                pea     var_16(a6)
                _GetBackColor
                pea     var_16(a6)
                _RGBForeColor
                pea     var_1C(a6)
                _RGBBackColor           ; come-from patches = #1

loc_FFC64A58:                           ; CODE XREF: sub_FFC64A10+1A↑j
                tst.w   d7
                beq.s   loc_FFC64A86
                tst.b   $6E(a4)
                beq.s   loc_FFC64A78
                cmpi.w  #3,d7
                beq.s   loc_FFC64A6E
                move.l  a4,-(sp)
                jsr     sub_FFC64942

loc_FFC64A6E:                           ; CODE XREF: sub_FFC64A10+56↑j
                move.l  a4,-(sp)
                move.w  d7,-(sp)
                jsr     sub_FFC6460E
                bra.s   loc_FFC64A8C
; ---------------------------------------------------------------------------

loc_FFC64A78:                           ; CODE XREF: sub_FFC64A10+50↑j
                move.l  a4,-(sp)
                move.w  d7,-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                jsr     sub_FFC648C4
                bra.s   loc_FFC64A8C
; ---------------------------------------------------------------------------

loc_FFC64A86:                           ; CODE XREF: sub_FFC64A10+4A↑j
                move.l  a4,-(sp)
                jsr     sub_FFC64942

loc_FFC64A8C:                           ; CODE XREF: sub_FFC64A10+66↑j
                                        ; sub_FFC64A10+74↑j
                tst.w   $62(a4)
                beq.s   loc_FFC64AA6
                pea     var_10(a6)
                move.w  #$40F,d0
                _PaletteDispatch
                pea     var_8(a6)
                move.w  #$410,d0
                _PaletteDispatch

loc_FFC64AA6:                           ; CODE XREF: sub_FFC64A10+80↑j
                movem.l var_28(a6),d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC64A10


; =============== S U B R O U T I N E =======================================


sub_FFC64AB2:                           ; CODE XREF: sub_FFC64C10+2C↓p
                movea.l ($2038).w,a1
                movea.l $C8(a1),a1
                jmp     (a1)
; End of function sub_FFC64AB2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64AC0:                           ; DATA XREF: ROM:FFC0699C↑o

var_30          = -$30
var_1C          = -$1C
var_16          = -$16
var_14          = -$14
var_12          = -$12
var_10          = -$10
var_8           = -8
arg_0           =  8

                link    a6,#-$1C
                movem.l d3/d5-d7/a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  $68(a4),d6
                move.w  $5E(a4),d7
                cmpi.w  #4,d6
                sgt     d3
                neg.b   d3
                move.b  d3,d5
                cmpi.w  #2,d6
                ble.s   loc_FFC64AF8
                tst.l   $7E(a4)
                beq.s   loc_FFC64AFC
                movea.l $7E(a4),a0
                movea.l (a0),a0
                moveq   #1,d0
                and.w   $14(a0),d0
                bne.s   loc_FFC64AFC

loc_FFC64AF8:                           ; CODE XREF: sub_FFC64AC0+22↑j
                clr.w   d6
                bra.s   loc_FFC64B00
; ---------------------------------------------------------------------------

loc_FFC64AFC:                           ; CODE XREF: sub_FFC64AC0+28↑j
                                        ; sub_FFC64AC0+36↑j
                move.w  $60(a4),d6

loc_FFC64B00:                           ; CODE XREF: sub_FFC64AC0+3A↑j
                tst.w   d6
                beq.s   loc_FFC64B1A
                subq.l  #2,sp
                move.w  d6,-(sp)
                pea     var_1C(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.w  #$50B,d0
                _IconDispatch
                addq.w  #2,sp
                bra.s   loc_FFC64B20
; ---------------------------------------------------------------------------

loc_FFC64B1A:                           ; CODE XREF: sub_FFC64AC0+42↑j
                pea     var_1C(a6)
                _GetForeColor

loc_FFC64B20:                           ; CODE XREF: sub_FFC64AC0+58↑j
                cmpi.w  #3,d7
                bne.s   loc_FFC64B3A
                move.w  #$CC2A,var_16(a6)
                move.w  #$CC2A,var_14(a6)
                move.w  #$FF2A,var_12(a6)
                bra.s   loc_FFC64B40
; ---------------------------------------------------------------------------

loc_FFC64B3A:                           ; CODE XREF: sub_FFC64AC0+64↑j
                pea     var_16(a6)
                _GetBackColor

loc_FFC64B40:                           ; CODE XREF: sub_FFC64AC0+78↑j
                movea.l $44(a4),a0
                move.l  (a0),(a4)
                cmpi.w  #1,d7
                bne.s   loc_FFC64B6E
                tst.b   d5
                bne.s   loc_FFC64B54
                tst.w   d6
                bne.s   loc_FFC64B6E

loc_FFC64B54:                           ; CODE XREF: sub_FFC64AC0+8E↑j
                subq.l  #2,sp
                move.l  $7E(a4),-(sp)
                pea     var_16(a6)
                pea     var_1C(a6)
                move.w  #$C19,d0
                _PaletteDispatch
                tst.b   (sp)+
                beq.s   loc_FFC64B6E
                clr.w   d7

loc_FFC64B6E:                           ; CODE XREF: sub_FFC64AC0+8A↑j
                                        ; sub_FFC64AC0+92↑j ...
                tst.w   $62(a4)
                beq.s   loc_FFC64B8C
                tst.b   d5
                beq.s   loc_FFC64B82
                pea     var_1C(a6)
                jsr     sub_FFC6588C
                addq.w  #4,sp

loc_FFC64B82:                           ; CODE XREF: sub_FFC64AC0+B6↑j
                pea     var_16(a6)
                jsr     sub_FFC6588C
                addq.w  #4,sp

loc_FFC64B8C:                           ; CODE XREF: sub_FFC64AC0+B2↑j
                pea     var_10(a6)
                move.w  #$40D,d0
                _PaletteDispatch
                pea     var_8(a6)
                move.w  #$40E,d0
                _PaletteDispatch
                pea     var_1C(a6)
                _RGBForeColor
                pea     var_16(a6)
                _RGBBackColor           ; come-from patches = #1
                tst.w   d7
                beq.s   loc_FFC64BDA
                tst.b   $6E(a4)
                beq.s   loc_FFC64BCC
                cmpi.w  #3,d7
                beq.s   loc_FFC64BC2
                move.l  a4,-(sp)
                jsr     sub_FFC64942

loc_FFC64BC2:                           ; CODE XREF: sub_FFC64AC0+FA↑j
                move.l  a4,-(sp)
                move.w  d7,-(sp)
                jsr     sub_FFC6460E
                bra.s   loc_FFC64BE0
; ---------------------------------------------------------------------------

loc_FFC64BCC:                           ; CODE XREF: sub_FFC64AC0+F4↑j
                move.l  a4,-(sp)
                move.w  d7,-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                jsr     sub_FFC648C4
                bra.s   loc_FFC64BE0
; ---------------------------------------------------------------------------

loc_FFC64BDA:                           ; CODE XREF: sub_FFC64AC0+EE↑j
                move.l  a4,-(sp)
                jsr     sub_FFC64942

loc_FFC64BE0:                           ; CODE XREF: sub_FFC64AC0+10A↑j
                                        ; sub_FFC64AC0+118↑j
                pea     var_10(a6)
                move.w  #$40F,d0
                _PaletteDispatch
                pea     var_8(a6)
                move.w  #$410,d0
                _PaletteDispatch
                movem.l var_30(a6),d3/d5-d7/a4
                unlk    a6
                rtd     #4
; End of function sub_FFC64AC0


; =============== S U B R O U T I N E =======================================


sub_FFC64C00:                           ; CODE XREF: sub_FFC64C10+24↓p
                movea.l ($2038).w,a1
                movea.l $CC(a1),a1
                jmp     (a1)
; End of function sub_FFC64C00

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64C10:                           ; DATA XREF: ROM:FFC069A0↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  $5C(a4),4(a4)
                move.w  #1,$20(a4)
                moveq   #0,d0
                move.w  $68(a4),d0
                cmpi.w  #2,d0
                bcs.s   loc_FFC64C3A
                move.l  a4,-(sp)
                jsr     sub_FFC64C00
                bra.s   loc_FFC64C40
; ---------------------------------------------------------------------------

loc_FFC64C3A:                           ; CODE XREF: sub_FFC64C10+20↑j
                move.l  a4,-(sp)
                jsr     sub_FFC64AB2

loc_FFC64C40:                           ; CODE XREF: sub_FFC64C10+28↑j
                clr.w   $20(a4)
                movea.l var_4(a6),a4
                unlk    a6
                rtd     #4
; End of function sub_FFC64C10


; =============== S U B R O U T I N E =======================================


sub_FFC64C4E:                           ; CODE XREF: sub_FFC64C60+10A↓p
                                        ; sub_FFC663C0+7E↓p
                movea.l ($2038).w,a1
                movea.l $D0(a1),a1
                jmp     (a1)
; End of function sub_FFC64C4E

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

sub_FFC64C60:                           ; DATA XREF: ROM:FFC069A4↑o

var_28          = -$28
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12

                link    a6,#-$14
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_4(a6),a2
                move.w  arg_A(a6),d7
                movea.l arg_0(a6),a4
                moveq   #0,d0
                movea.l d0,a3
                move.w  $5E(a4),d6
                move.l  a2,d0
                beq.w   loc_FFC64D10
                tst.w   arg_8(a6)
                beq.w   loc_FFC64D10
                lea     var_10(a6),a0
                lea     $54(a4),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                pea     var_10(a6)
                pea     6(a4)
                pea     $4C(a4)
                _MapRect
                pea     var_10(a6)
                _LocalToGlobal
                pea     var_C(a6)
                _LocalToGlobal
                subq.l  #2,sp
                movea.l (a2),a0
                pea     $22(a0)
                pea     var_10(a6)
                pea     var_8(a6)
                _SectRect
                tst.b   (sp)+
                beq.w   loc_FFC64D7A
                subq.l  #2,sp
                pea     var_8(a6)
                pea     var_10(a6)
                _EqualRect
                tst.b   (sp)+
                bne.s   loc_FFC64D10
                tst.w   $64(a4)
                bne.s   loc_FFC64D10
                movea.l (a5),a1
                move.l  (a1),d0
                movea.l d0,a0
                move.l  $1C(a0),var_14(a6)
                subq.l  #4,sp
                _NewRgn
                movea.l (sp),a3
                _GetClip
                pea     var_8(a6)
                _GlobalToLocal
                pea     var_4(a6)
                _GlobalToLocal
                pea     var_8(a6)
                _ClipRect
                move.l  a3,-(sp)
                move.l  var_14(a6),-(sp)
                move.l  var_14(a6),-(sp)
                _SectRgn

loc_FFC64D10:                           ; CODE XREF: sub_FFC64C60+1E↑j
                                        ; sub_FFC64C60+26↑j ...
                move.w  d7,$68(a4)
                move.l  a2,$7E(a4)
                cmpi.w  #4,d7
                ble.s   loc_FFC64D24
                cmpi.w  #3,d6
                bne.s   loc_FFC64D36

loc_FFC64D24:                           ; CODE XREF: sub_FFC64C60+BC↑j
                cmpi.w  #4,d7
                bne.s   loc_FFC64D42
                tst.w   $62(a4)
                bne.s   loc_FFC64D42
                moveq   #1,d0
                and.w   d6,d0
                bne.s   loc_FFC64D42

loc_FFC64D36:                           ; CODE XREF: sub_FFC64C60+C2↑j
                move.w  d7,$6A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC640C2
                bra.s   loc_FFC64D4E
; ---------------------------------------------------------------------------

loc_FFC64D42:                           ; CODE XREF: sub_FFC64C60+C8↑j
                                        ; sub_FFC64C60+CE↑j ...
                move.w  #1,$6A(a4)
                moveq   #0,d0
                move.l  d0,$7A(a4)

loc_FFC64D4E:                           ; CODE XREF: sub_FFC64C60+E0↑j
                tst.w   $64(a4)
                bne.s   loc_FFC64D7A
                moveq   #0,d0
                move.w  $6A(a4),d0
                cmpi.w  #4,d0
                bcs.s   loc_FFC64D68
                move.l  a4,-(sp)
                jsr     sub_FFC64A02
                bra.s   loc_FFC64D6E
; ---------------------------------------------------------------------------

loc_FFC64D68:                           ; CODE XREF: sub_FFC64C60+FE↑j
                move.l  a4,-(sp)
                jsr     sub_FFC64C4E

loc_FFC64D6E:                           ; CODE XREF: sub_FFC64C60+106↑j
                move.l  a3,d0
                beq.s   loc_FFC64D7A
                move.l  a3,-(sp)
                _SetClip
                move.l  a3,-(sp)
                _DisposeRgn

loc_FFC64D7A:                           ; CODE XREF: sub_FFC64C60+64↑j
                                        ; sub_FFC64C60+F2↑j ...
                movem.l var_28(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC64C60


; =============== S U B R O U T I N E =======================================


sub_FFC64D86:                           ; CODE XREF: sub_FFC650E0+130↓p
                                        ; sub_FFC650E0+15A↓p ...
                movea.l ($2038).w,a1
                movea.l $D4(a1),a1
                jmp     (a1)
; End of function sub_FFC64D86


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64D90:                           ; DATA XREF: ROM:FFC069A8↑o

var_24          = -$24
var_8           = -8
var_6           = -6
var_4           = -4
arg_0           =  8

                link    a6,#-8
                movem.l d3-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l $32(a3),a4
                move.w  $36(a3),var_6(a6)
                move.w  $3C(a3),d5
                moveq   #4,d0
                cmp.w   $5C(a3),d0
                sgt     d3
                neg.b   d3
                beq.s   loc_FFC64DBE
                move.l  #$FFFF0000,d0
                bra.s   loc_FFC64DC0
; ---------------------------------------------------------------------------

loc_FFC64DBE:                           ; CODE XREF: sub_FFC64D90+24↑j
                moveq   #$FFFFFFFF,d0

loc_FFC64DC0:                           ; CODE XREF: sub_FFC64D90+2C↑j
                move.l  d0,d4
                clr.w   d7
                bra.s   loc_FFC64DD8
; ---------------------------------------------------------------------------

loc_FFC64DC6:                           ; CODE XREF: sub_FFC64D90+4A↓j
                move.l  d4,d0
                and.l   (a4),d0
                bne.s   loc_FFC64DDC
                addq.w  #1,d7
                moveq   #0,d0
                move.w  var_6(a6),d0
                tst.l   d0
                adda.l  d0,a4

loc_FFC64DD8:                           ; CODE XREF: sub_FFC64D90+34↑j
                cmp.w   d7,d5
                bhi.s   loc_FFC64DC6

loc_FFC64DDC:                           ; CODE XREF: sub_FFC64D90+3A↑j
                cmp.w   d7,d5
                bne.s   loc_FFC64DE4
                moveq   #0,d0
                bra.s   loc_FFC64E3E
; ---------------------------------------------------------------------------

loc_FFC64DE4:                           ; CODE XREF: sub_FFC64D90+4E↑j
                move.w  d7,$54(a3)
                moveq   #0,d6
                bra.s   loc_FFC64E0A
; ---------------------------------------------------------------------------

loc_FFC64DEC:                           ; CODE XREF: sub_FFC64D90+7C↓j
                move.l  d4,d0
                and.l   (a4),d0
                move.l  d0,var_4(a6)
                beq.s   loc_FFC64DFE
                move.w  d7,var_8(a6)
                or.l    var_4(a6),d6

loc_FFC64DFE:                           ; CODE XREF: sub_FFC64D90+64↑j
                addq.w  #1,d7
                moveq   #0,d0
                move.w  var_6(a6),d0
                tst.l   d0
                adda.l  d0,a4

loc_FFC64E0A:                           ; CODE XREF: sub_FFC64D90+5A↑j
                cmp.w   d7,d5
                bhi.s   loc_FFC64DEC
                move.w  var_8(a6),d0
                addq.w  #1,d0
                move.w  d0,$58(a3)
                clr.w   d7
                bra.s   loc_FFC64E20
; ---------------------------------------------------------------------------

loc_FFC64E1C:                           ; CODE XREF: sub_FFC64D90+98↓j
                lsl.l   #1,d6
                addq.w  #1,d7

loc_FFC64E20:                           ; CODE XREF: sub_FFC64D90+8A↑j
                move.l  #$80000000,d0
                and.l   d6,d0
                beq.s   loc_FFC64E1C
                move.w  d7,$56(a3)
                bra.s   loc_FFC64E34
; ---------------------------------------------------------------------------

loc_FFC64E30:                           ; CODE XREF: sub_FFC64D90+A6↓j
                lsl.l   #1,d6
                addq.w  #1,d7

loc_FFC64E34:                           ; CODE XREF: sub_FFC64D90+9E↑j
                tst.l   d6
                bne.s   loc_FFC64E30
                move.w  d7,$5A(a3)
                moveq   #1,d0

loc_FFC64E3E:                           ; CODE XREF: sub_FFC64D90+52↑j
                movem.l var_24(a6),d3-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC64D90


; =============== S U B R O U T I N E =======================================


sub_FFC64E48:                           ; CODE XREF: sub_FFC650E0+9C↓p
                                        ; sub_FFC65280+42↓p ...
                movea.l ($2038).w,a1
                movea.l $D8(a1),a1
                jmp     (a1)
; End of function sub_FFC64E48

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

sub_FFC64E60:                           ; DATA XREF: ROM:FFC069AC↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                lea     $82(a4),a3
                move.w  $36(a4),d6
                ext.l   d6
                move.l  d6,d1
                move.l  arg_4(a6),d0
                divu.w  d1,d0
                move.w  d0,d7
                cmpi.w  #$20,d7 ; ' '
                ble.s   loc_FFC64E88
                moveq   #$20,d7 ; ' '

loc_FFC64E88:                           ; CODE XREF: sub_FFC64E60+24↑j
                movea.l $44(a4),a0
                move.l  (a0),-(sp)
                move.l  a3,-(sp)
                move.w  d6,-(sp)
                moveq   #4,d0
                move.w  d0,-(sp)
                move.w  d7,-(sp)
                move.w  d6,d1
                asr.w   #1,d1
                move.w  d1,-(sp)
                _CalcMask
                move.l  a3,$32(a4)
                move.w  #4,$36(a4)
                movem.l var_10(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC64E60


; =============== S U B R O U T I N E =======================================


sub_FFC64EB4:                           ; CODE XREF: sub_FFC64EC0+C2↓p
                movea.l ($2038).w,a1
                movea.l $DC(a1),a1
                jmp     (a1)
; End of function sub_FFC64EB4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC64EC0:                           ; DATA XREF: ROM:FFC069B0↑o

var_20          = -$20
arg_0           =  8

                link    a6,#-4
                movem.l d3-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                pea     $4C(a4)
                jsr     sub_FFC6411C
                move.w  d0,d6
                move.w  d6,d7
                addq.w  #4,sp
                bra.s   loc_FFC64EF4
; ---------------------------------------------------------------------------

loc_FFC64EDC:                           ; CODE XREF: sub_FFC64EC0+38↓j
                ext.l   d7
                move.l  d7,-(sp)
                move.l  $72(a4),-(sp)
                movea.l $76(a4),a0
                jsr     (a0)
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC64F22
                addq.w  #3,d7

loc_FFC64EF4:                           ; CODE XREF: sub_FFC64EC0+1A↑j
                cmpi.w  #6,d7
                ble.s   loc_FFC64EDC
                move.w  d6,d7
                subq.w  #3,d7
                bra.s   loc_FFC64F18
; ---------------------------------------------------------------------------

loc_FFC64F00:                           ; CODE XREF: sub_FFC64EC0+5A↓j
                ext.l   d7
                move.l  d7,-(sp)
                move.l  $72(a4),-(sp)
                movea.l $76(a4),a0
                jsr     (a0)
                movea.l d0,a3
                move.l  a3,d0
                addq.w  #8,sp
                bne.s   loc_FFC64F22
                subq.w  #3,d7

loc_FFC64F18:                           ; CODE XREF: sub_FFC64EC0+3E↑j
                tst.w   d7
                bge.s   loc_FFC64F00
                moveq   #0,d0
                bra.w   loc_FFC64FE4
; ---------------------------------------------------------------------------

loc_FFC64F22:                           ; CODE XREF: sub_FFC64EC0+30↑j
                                        ; sub_FFC64EC0+54↑j
                move.l  a3,$44(a4)
                move.w  d7,$70(a4)
                moveq   #0,d0
                move.l  d0,$48(a4)
                tst.w   d7
                bne.s   loc_FFC64F3A
                moveq   #4,d5
                moveq   #$20,d7 ; ' '
                bra.s   loc_FFC64F48
; ---------------------------------------------------------------------------

loc_FFC64F3A:                           ; CODE XREF: sub_FFC64EC0+72↑j
                moveq   #2,d5
                cmpi.w  #3,d7
                bne.s   loc_FFC64F46
                moveq   #$10,d7
                bra.s   loc_FFC64F48
; ---------------------------------------------------------------------------

loc_FFC64F46:                           ; CODE XREF: sub_FFC64EC0+80↑j
                moveq   #$C,d7

loc_FFC64F48:                           ; CODE XREF: sub_FFC64EC0+78↑j
                                        ; sub_FFC64EC0+84↑j
                move.w  d5,$5C(a4)
                move.w  d5,$36(a4)
                moveq   #0,d0
                move.l  d0,$38(a4)
                move.w  d7,$3C(a4)
                ext.l   d5
                move.l  d5,d1
                lsl.l   #3,d1
                move.w  d1,$3E(a4)
                tst.l   (a3)
                bne.s   loc_FFC64F6C
                move.l  a3,-(sp)
                _LoadResource           ; come-from patches = #1

loc_FFC64F6C:                           ; CODE XREF: sub_FFC64EC0+A6↑j
                muls.w  d7,d5
                lsl.w   #1,d5
                movea.l a3,a0
                _GetHandleSize
                move.l  d0,d4
                ext.l   d5
                cmp.l   d4,d5
                ble.s   loc_FFC64F8A
                asr.w   #1,d5
                move.l  d4,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC64EB4
                addq.w  #8,sp
                bra.s   loc_FFC64F94
; ---------------------------------------------------------------------------

loc_FFC64F8A:                           ; CODE XREF: sub_FFC64EC0+BA↑j
                move.l  d4,d0
                asr.l   #1,d0
                add.l   (a3),d0
                move.l  d0,$32(a4)

loc_FFC64F94:                           ; CODE XREF: sub_FFC64EC0+C8↑j
                moveq   #0,d0
                move.w  $70(a4),d0
                moveq   #6,d1
                cmp.l   d0,d1
                bne.s   loc_FFC64FCE
                ext.l   d5
                cmp.l   d4,d5
                bge.s   loc_FFC64FCE
                move.w  $50(a4),d0
                ext.l   d0
                move.w  $4C(a4),d1
                ext.l   d1
                add.l   d0,d1
                move.l  d1,d3
                asr.l   #1,d3
                move.w  d3,d0
                subq.w  #8,d0
                move.w  d0,$4C(a4)
                move.w  d3,d0
                addq.w  #8,d0
                move.w  d0,$50(a4)
                move.w  #$10,$3C(a4)

loc_FFC64FCE:                           ; CODE XREF: sub_FFC64EC0+DE↑j
                                        ; sub_FFC64EC0+E4↑j
                movea.l a4,a0
                addq.l  #6,a0
                lea     $38(a4),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                clr.w   $20(a4)
                clr.b   $6E(a4)
                moveq   #1,d0

loc_FFC64FE4:                           ; CODE XREF: sub_FFC64EC0+5E↑j
                movem.l var_20(a6),d3-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC64EC0


; =============== S U B R O U T I N E =======================================


sub_FFC64FEE:                           ; CODE XREF: sub_FFC650E0+84↓p
                                        ; sub_FFC65280+2C↓p ...
                movea.l ($2038).w,a1
                movea.l $E0(a1),a1
                jmp     (a1)
; End of function sub_FFC64FEE

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

sub_FFC65000:                           ; DATA XREF: ROM:FFC069B4↑o

var_A6          = -$A6
var_96          = -$96
var_16          = -$16
var_12          = -$12
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8

                link    a6,#-$96
                movem.l d6-d7/a3-a4,-(sp)
                lea     var_96(a6),a3
                movea.l arg_0(a6),a4
                move.w  $52(a4),d0
                ext.l   d0
                move.w  $4E(a4),d1
                ext.l   d1
                move.l  d0,d6
                sub.l   d1,d6
                move.w  $50(a4),d0
                ext.l   d0
                move.w  $4C(a4),d1
                ext.l   d1
                move.l  d0,d7
                sub.l   d1,d7
                cmpi.w  #$20,d6 ; ' '
                bgt.s   loc_FFC6503C
                cmpi.w  #$20,d7 ; ' '
                ble.s   loc_FFC65046

loc_FFC6503C:                           ; CODE XREF: sub_FFC65000+34↑j
                move.b  #1,$6E(a4)
                bra.w   loc_FFC650C6
; ---------------------------------------------------------------------------

loc_FFC65046:                           ; CODE XREF: sub_FFC65000+3A↑j
                cmp.w   $3E(a4),d6
                bne.s   loc_FFC65052
                cmp.w   $3C(a4),d7
                beq.s   loc_FFC650C6

loc_FFC65052:                           ; CODE XREF: sub_FFC65000+4A↑j
                moveq   #0,d0
                move.l  d0,var_8(a6)
                move.w  d6,var_4+2(a6)
                move.w  d7,var_4(a6)
                move.l  d0,var_10(a6)
                move.l  #$200020,var_C(a6)
                move.w  #4,var_12(a6)
                lea     $82(a4),a0
                move.l  a0,var_16(a6)
                lea     $82(a4),a0
                cmpa.l  $32(a4),a0
                bne.s   loc_FFC65098
                move.l  a3,$32(a4)
                lea     $82(a4),a1
                movea.l a1,a0
                movea.l a3,a1
                move.l  #$80,d0
                _BlockMoveData

loc_FFC65098:                           ; CODE XREF: sub_FFC65000+82↑j
                pea     $32(a4)
                pea     var_16(a6)
                pea     $38(a4)
                pea     var_8(a6)
                moveq   #0,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                _CopyBits
                move.l  var_4(a6),$3C(a4)
                lea     $82(a4),a0
                move.l  a0,$32(a4)
                move.w  #4,$36(a4)

loc_FFC650C6:                           ; CODE XREF: sub_FFC65000+42↑j
                                        ; sub_FFC65000+50↑j
                movem.l var_A6(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC65000


; =============== S U B R O U T I N E =======================================


sub_FFC650D2:                           ; CODE XREF: sub_FFC650E0+C0↓p
                                        ; sub_FFC65330+64↓p
                movea.l ($2038).w,a1
                movea.l $E4(a1),a1
                jmp     (a1)
; End of function sub_FFC650D2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC650E0:                           ; DATA XREF: ROM:FFC069B8↑o

var_128         = -$128
var_10C         = -$10C
var_108         = -$108
var_103         = -$103
var_102         = -$102
var_C2          = -$C2
var_BE          = -$BE
var_B6          = -$B6
var_A4          = -$A4
var_A2          = -$A2
var_A0          = -$A0
var_9E          = -$9E
var_9C          = -$9C
var_90          = -$90
var_8C          = -$8C
arg_0           =  8
arg_2           =  $A
arg_6           =  $E
arg_A           =  $12
arg_C           =  $14
arg_E           =  $16
arg_12          =  $1A

                link    a6,#-$10C
                movem.l d3-d7/a3-a4,-(sp)
                move.w  arg_0(a6),d4
                move.l  arg_6(a6),d5
                move.w  arg_C(a6),d6
                move.w  arg_A(a6),d7
                tst.w   d4
                beq.s   loc_FFC6510E
                movea.l d5,a0
                movea.l (a0),a0
                tst.w   (a0)
                bne.s   loc_FFC6510E
                move.w  #$FFCE,arg_12(a6)
                bra.w   loc_FFC65266
; ---------------------------------------------------------------------------

loc_FFC6510E:                           ; CODE XREF: sub_FFC650E0+1A↑j
                                        ; sub_FFC650E0+22↑j
                movea.l arg_E(a6),a0
                lea     var_B6(a6),a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                move.l  d5,var_90(a6)
                move.l  arg_2(a6),var_8C(a6)
                moveq   #3,d0
                and.w   d7,d0
                move.w  d0,var_A4(a6)
                move.w  #$4000,d0
                and.w   d7,d0
                move.w  d0,var_A0(a6)
                move.w  d4,var_9E(a6)
                movea.l (a5),a1
                move.l  (a1),d0
                movea.l d0,a3
                moveq   #0,d3
                moveq   #$FFFFFFFF,d0
                cmp.w   ($948).w,d0
                bne.s   loc_FFC65152
                tst.l   $5C(a3)
                bne.s   loc_FFC65152
                moveq   #1,d3

loc_FFC65152:                           ; CODE XREF: sub_FFC650E0+68↑j
                                        ; sub_FFC650E0+6E↑j
                ext.w   d3
                move.w  d3,var_9C(a6)
                movea.l a3,a0
                addq.l  #2,a0
                move.l  a0,var_C2(a6)
                pea     var_102(a6)
                jsr     sub_FFC64FEE
                tst.w   d0
                addq.w  #4,sp
                bne.s   loc_FFC65178
                move.w  #$FC18,arg_12(a6)
                bra.w   loc_FFC65266
; ---------------------------------------------------------------------------

loc_FFC65178:                           ; CODE XREF: sub_FFC650E0+8C↑j
                pea     var_102(a6)
                jsr     sub_FFC64E48
                tst.b   d0
                addq.w  #4,sp
                beq.w   loc_FFC65262
                tst.w   d6
                beq.s   loc_FFC65196
                pea     var_102(a6)
                move.w  d6,-(sp)
                jsr     sub_FFC63DB4

loc_FFC65196:                           ; CODE XREF: sub_FFC650E0+AA↑j
                tst.w   var_A4(a6)
                beq.s   loc_FFC651A4
                pea     var_102(a6)
                jsr     sub_FFC650D2

loc_FFC651A4:                           ; CODE XREF: sub_FFC650E0+BA↑j
                tst.w   6(a3)
                bge.w   loc_FFC6524A
                movea.l var_BE(a6),a0
                move.l  a0,var_108(a6)
                _HGetState
                move.b  d0,var_103(a6)
                movea.l var_108(a6),a0
                _HLock
                move.w  #$F00,d0
                and.w   d7,d0
                lsr.w   #8,d0
                move.w  d0,var_A2(a6)
                tst.w   var_9C(a6)
                beq.s   loc_FFC6522A
                jsr     sub_FFC6397C
                move.l  d0,var_10C(a6)
                movea.l d0,a0
                moveq   #1,d0
                cmp.l   $264(a0),d0
                bne.s   loc_FFC651EE
                movea.l var_10C(a6),a0
                movea.l $268(a0),a4
                bra.s   loc_FFC651F6
; ---------------------------------------------------------------------------

loc_FFC651EE:                           ; CODE XREF: sub_FFC650E0+102↑j
                movea.l var_10C(a6),a0
                movea.l $260(a0),a4

loc_FFC651F6:                           ; CODE XREF: sub_FFC650E0+10C↑j
                move.l  a4,d0
                beq.s   loc_FFC65216
                movea.l (a4),a0
                movea.l $16(a0),a0
                movea.l (a0),a0
                move.w  $20(a0),-(sp)
                moveq   #0,d0
                move.w  d0,-(sp)
                move.l  a4,-(sp)
                pea     var_102(a6)
                jsr     sub_FFC64D86
                bra.s   loc_FFC6523E
; ---------------------------------------------------------------------------

loc_FFC65216:                           ; CODE XREF: sub_FFC650E0+118↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     sub_FFC64D86(pc)
                pea     var_102(a6)
                moveq   #7,d1
                move.l  d1,-(sp)
                _DeviceLoop
                bra.s   loc_FFC6523E
; ---------------------------------------------------------------------------

loc_FFC6522A:                           ; CODE XREF: sub_FFC650E0+F0↑j
                moveq   #8,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.w  d1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_102(a6)
                jsr     sub_FFC64D86

loc_FFC6523E:                           ; CODE XREF: sub_FFC650E0+134↑j
                                        ; sub_FFC650E0+148↑j
                movea.l var_108(a6),a0
                move.b  var_103(a6),d0
                _HSetState
                bra.s   loc_FFC65262
; ---------------------------------------------------------------------------

loc_FFC6524A:                           ; CODE XREF: sub_FFC650E0+C8↑j
                clr.w   var_A2(a6)
                moveq   #1,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.w  d1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_102(a6)
                jsr     sub_FFC64D86

loc_FFC65262:                           ; CODE XREF: sub_FFC650E0+A4↑j
                                        ; sub_FFC650E0+168↑j
                clr.w   arg_12(a6)

loc_FFC65266:                           ; CODE XREF: sub_FFC650E0+2A↑j
                                        ; sub_FFC650E0+94↑j
                movem.l var_128(a6),d3-d7/a3-a4
                unlk    a6
                rtd     #$12
; End of function sub_FFC650E0


; =============== S U B R O U T I N E =======================================


sub_FFC65272:                           ; CODE XREF: ROM:FFC63A1A↑j
                                        ; ROM:FFC63B06↑p ...
                movea.l ($2038).w,a1
                movea.l $E8(a1),a1
                jmp     (a1)
; End of function sub_FFC65272

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC65280:                           ; DATA XREF: ROM:FFC069BC↑o

var_112         = -$112
var_102         = -$102
var_CA          = -$CA
var_BE          = -$BE
var_B6          = -$B6
var_90          = -$90
var_8C          = -$8C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12
arg_E           =  $16
arg_12          =  $1A

                link    a6,#-$102
                movem.l d6-d7/a3-a4,-(sp)
                move.w  arg_8(a6),d7
                movea.l arg_E(a6),a3
                movea.l arg_A(a6),a0
                lea     var_B6(a6),a1
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                move.l  arg_4(a6),var_90(a6)
                move.l  arg_0(a6),var_8C(a6)
                pea     var_102(a6)
                jsr     sub_FFC64FEE
                tst.w   d0
                addq.w  #4,sp
                bne.s   loc_FFC652BE
                move.w  #$FC18,arg_12(a6)
                bra.s   loc_FFC65310
; ---------------------------------------------------------------------------

loc_FFC652BE:                           ; CODE XREF: sub_FFC65280+34↑j
                pea     var_102(a6)
                jsr     sub_FFC64E48
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFC65308
                movea.l var_BE(a6),a4
                movea.l a4,a0
                _HGetState
                move.b  d0,d6
                movea.l a4,a0
                _HLock
                tst.w   d7
                beq.s   loc_FFC652E8
                pea     var_102(a6)
                move.w  d7,-(sp)
                jsr     sub_FFC63DB4

loc_FFC652E8:                           ; CODE XREF: sub_FFC65280+5C↑j
                move.l  a3,-(sp)
                pea     var_102(a6)
                jsr     sub_FFC64028
                move.l  a3,-(sp)
                pea     var_CA(a6)
                pea     var_B6(a6)
                jsr     sub_FFC63C10
                movea.l a4,a0
                move.b  d6,d0
                _HSetState
                bra.s   loc_FFC6530C
; ---------------------------------------------------------------------------

loc_FFC65308:                           ; CODE XREF: sub_FFC65280+4A↑j
                move.l  a3,-(sp)
                _SetEmptyRgn

loc_FFC6530C:                           ; CODE XREF: sub_FFC65280+86↑j
                clr.w   arg_12(a6)

loc_FFC65310:                           ; CODE XREF: sub_FFC65280+3C↑j
                movem.l var_112(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #$12
; End of function sub_FFC65280


; =============== S U B R O U T I N E =======================================


sub_FFC6531C:                           ; CODE XREF: ROM:FFC63A56↑j
                                        ; ROM:FFC63B36↑p ...
                movea.l ($2038).w,a1
                movea.l $EC(a1),a1
                jmp     (a1)
; End of function sub_FFC6531C

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

sub_FFC65330:                           ; DATA XREF: ROM:FFC069C0↑o

var_128         = -$128
var_10C         = -$10C
var_DA          = -$DA
var_D6          = -$D6
var_CD          = -$CD
var_C0          = -$C0
var_9A          = -$9A
var_96          = -$96
var_A           = -$A
var_8           = -8
var_6           = -6
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12
arg_E           =  $16
arg_10          =  $18
arg_14          =  $1C

                link    a6,#-$10C
                movem.l d3-d7/a3-a4,-(sp)
                move.w  arg_8(a6),d7
                move.l  arg_10(a6),d6
                movea.l arg_A(a6),a4
                lea     var_C0(a6),a0
                movea.l a4,a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  arg_4(a6),var_9A(a6)
                move.l  arg_0(a6),var_96(a6)
                pea     var_10C(a6)
                jsr     sub_FFC64FEE
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFC65376
                pea     var_10C(a6)
                jsr     sub_FFC64E48
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFC6537E

loc_FFC65376:                           ; CODE XREF: sub_FFC65330+36↑j
                clr.b   arg_14(a6)
                bra.w   loc_FFC6544E
; ---------------------------------------------------------------------------

loc_FFC6537E:                           ; CODE XREF: sub_FFC65330+44↑j
                tst.w   d7
                beq.s   loc_FFC6538C
                pea     var_10C(a6)
                move.w  d7,-(sp)
                jsr     sub_FFC63DB4

loc_FFC6538C:                           ; CODE XREF: sub_FFC65330+50↑j
                lea     var_C0(a6),a4
                pea     var_10C(a6)
                jsr     sub_FFC650D2
                tst.w   arg_E(a6)
                beq.s   loc_FFC653E6
                subq.l  #2,sp
                move.l  d6,-(sp)
                move.l  a4,-(sp)
                pea     var_A(a6)
                _SectRect
                tst.b   (sp)+
                bne.s   loc_FFC653B6
                clr.b   arg_14(a6)
                bra.w   loc_FFC6544E
; ---------------------------------------------------------------------------

loc_FFC653B6:                           ; CODE XREF: sub_FFC65330+7C↑j
                moveq   #$FFFFFFFF,d7
                move.w  var_4(a6),d0
                ext.l   d0
                move.w  var_8(a6),d1
                ext.l   d1
                sub.l   d1,d0
                moveq   #$20,d1 ; ' '
                sub.l   d0,d1
                lsl.l   d1,d7
                move.w  var_8(a6),d0
                sub.w   2(a4),d0
                lsr.l   d0,d7
                move.w  var_A(a6),d3
                sub.w   (a4),d3
                move.w  var_6(a6),d4
                sub.w   var_A(a6),d4
                bra.s   loc_FFC65406
; ---------------------------------------------------------------------------

loc_FFC653E6:                           ; CODE XREF: sub_FFC65330+6C↑j
                move.l  #$FFFF,d0
                and.l   d6,d0
                sub.b   3(a4),d0
                moveq   #$1F,d1
                sub.b   d0,d1
                moveq   #1,d7
                lsl.l   d1,d7
                moveq   #$10,d0
                move.l  d6,d1
                lsr.l   d0,d1
                move.w  d1,d3
                sub.w   (a4),d3
                moveq   #1,d4

loc_FFC65406:                           ; CODE XREF: sub_FFC65330+B4↑j
                move.w  var_D6(a6),d6
                moveq   #$20,d0 ; ' '
                sub.b   var_CD(a6),d0
                moveq   #$FFFFFFFF,d5
                lsl.l   d0,d5
                ext.l   d3
                move.l  d3,d0
                ext.l   d6
                move.l  d6,d1
                mulu.w  d1,d0
                movea.l d0,a4
                adda.l  var_DA(a6),a4
                ext.l   d4
                move.l  d4,d0
                ext.l   d6
                move.l  d6,d1
                mulu.w  d1,d0
                movea.l d0,a3
                adda.l  a4,a3

loc_FFC65432:                           ; CODE XREF: sub_FFC65330+118↓j
                move.l  d5,d0
                and.l   (a4),d0
                move.l  d7,d1
                and.l   d0,d1
                beq.s   loc_FFC65444
                move.b  #1,arg_14(a6)
                bra.s   loc_FFC6544E
; ---------------------------------------------------------------------------

loc_FFC65444:                           ; CODE XREF: sub_FFC65330+10A↑j
                adda.w  d6,a4
                cmpa.l  a4,a3
                bhi.s   loc_FFC65432
                clr.b   arg_14(a6)

loc_FFC6544E:                           ; CODE XREF: sub_FFC65330+4A↑j
                                        ; sub_FFC65330+82↑j ...
                movem.l var_128(a6),d3-d7/a3-a4
                unlk    a6
                rtd     #$14
; End of function sub_FFC65330


; =============== S U B R O U T I N E =======================================


sub_FFC6545A:                           ; CODE XREF: sub_FFC65470+CE↓p
                movea.l ($2038).w,a1
                movea.l $F0(a1),a1
                jmp     (a1)
; End of function sub_FFC6545A

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

sub_FFC65470:                           ; DATA XREF: ROM:FFC069C4↑o

var_24          = -$24
var_8           = -8
arg_0           =  8
arg_2           =  $A
arg_6           =  $E
arg_A           =  $12
arg_C           =  $14
arg_10          =  $18
arg_14          =  $1C

                link    a6,#-8
                movem.l d4-d7/a2-a4,-(sp)
                movea.l arg_2(a6),a2
                move.l  arg_6(a6),d4
                move.w  arg_A(a6),d5
                move.w  arg_0(a6),d7
                movea.l arg_C(a6),a4
                clr.b   d6
                moveq   #0,d0
                movea.l d0,a3
                tst.w   d7
                beq.s   loc_FFC654BC
                subq.l  #2,sp
                move.l  arg_10(a6),-(sp)
                move.l  a4,-(sp)
                pea     var_8(a6)
                _SectRect
                tst.b   (sp)+
                beq.w   loc_FFC65548
                subq.l  #2,sp
                move.l  a4,-(sp)
                pea     var_8(a6)
                _EqualRect
                tst.b   (sp)+
                bne.w   loc_FFC65546
                bra.s   loc_FFC654CA
; ---------------------------------------------------------------------------

loc_FFC654BC:                           ; CODE XREF: sub_FFC65470+24↑j
                subq.l  #2,sp
                move.l  arg_10(a6),-(sp)
                move.l  a4,-(sp)
                _PtInRect
                tst.b   (sp)+
                beq.s   loc_FFC65548

loc_FFC654CA:                           ; CODE XREF: sub_FFC65470+4A↑j
                move.w  6(a4),d0
                ext.l   d0
                move.w  2(a4),d1
                ext.l   d1
                sub.l   d1,d0
                moveq   #$20,d1 ; ' '
                cmp.l   d0,d1
                blt.s   loc_FFC654F0
                move.w  4(a4),d0
                ext.l   d0
                move.w  (a4),d1
                ext.l   d1
                sub.l   d1,d0
                moveq   #$20,d1 ; ' '
                cmp.l   d0,d1
                bge.s   loc_FFC6552E

loc_FFC654F0:                           ; CODE XREF: sub_FFC65470+6C↑j
                subq.l  #4,sp
                _NewRgn
                movea.l (sp)+,a3
                subq.l  #2,sp
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                move.w  d5,-(sp)
                move.l  d4,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC6531C
                tst.w   (sp)+
                bne.s   loc_FFC65548
                tst.w   d7
                beq.s   loc_FFC6551E
                subq.l  #2,sp
                move.l  arg_10(a6),-(sp)
                move.l  a3,-(sp)
                _RectInRgn
                tst.b   (sp)+
                beq.s   loc_FFC65548
                bra.s   loc_FFC65546
; ---------------------------------------------------------------------------

loc_FFC6551E:                           ; CODE XREF: sub_FFC65470+9C↑j
                subq.l  #2,sp
                move.l  arg_10(a6),-(sp)
                move.l  a3,-(sp)
                _PtInRgn
                tst.b   (sp)+
                beq.s   loc_FFC65548
                bra.s   loc_FFC65546
; ---------------------------------------------------------------------------

loc_FFC6552E:                           ; CODE XREF: sub_FFC65470+7E↑j
                subq.l  #2,sp
                move.l  arg_10(a6),-(sp)
                move.w  d7,-(sp)
                move.l  a4,-(sp)
                move.w  d5,-(sp)
                move.l  d4,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFC6545A
                tst.b   (sp)+
                beq.s   loc_FFC65548

loc_FFC65546:                           ; CODE XREF: sub_FFC65470+46↑j
                                        ; sub_FFC65470+AC↑j ...
                moveq   #1,d6

loc_FFC65548:                           ; CODE XREF: sub_FFC65470+36↑j
                                        ; sub_FFC65470+58↑j ...
                move.l  a3,d0
                beq.s   loc_FFC65550
                move.l  a3,-(sp)
                _DisposeRgn

loc_FFC65550:                           ; CODE XREF: sub_FFC65470+DA↑j
                move.b  d6,arg_14(a6)
                movem.l var_24(a6),d4-d7/a2-a4
                unlk    a6
                rtd     #$14
; End of function sub_FFC65470


; =============== S U B R O U T I N E =======================================


sub_FFC65560:                           ; CODE XREF: ROM:FFC63A94↑j
                                        ; ROM:FFC63B6E↑p
                movea.l ($2038).w,a1
                movea.l $F4(a1),a1
                jmp     (a1)
; End of function sub_FFC65560

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC65570:                           ; DATA XREF: ROM:FFC069C8↑o

var_2C          = -$2C
var_10          = -$10
var_C           = -$C
var_8           = -8
arg_0           =  8

                link    a6,#-$10
                movem.l d4-d7/a2-a4,-(sp)
                subq.l  #4,sp
                _GetDeviceList
                movea.l (sp)+,a4
                move.l  #$280,d6
                moveq   #0,d5

loc_FFC65586:                           ; CODE XREF: sub_FFC65570+26↓j
                addq.l  #1,d5
                addi.l  #$18,d6
                movea.l (a4),a0
                movea.l $1E(a0),a4
                move.l  a4,d0
                bne.s   loc_FFC65586
                move.l  d6,d0
                _NewHandleSysClear
                movea.l arg_0(a6),a1
                move.l  a0,(a1)
                movea.l arg_0(a6),a1
                movea.l (a1),a0
                _HLock
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                movea.l (a0),a0
                move.l  a0,var_10(a6)
                lea     (a0),a3
                move.w  #$BFF8,d7

loc_FFC655BC:                           ; CODE XREF: sub_FFC65570+60↓j
                subq.l  #4,sp
                move.l  #$6C737472,-(sp)
                move.w  d7,-(sp)
                _GetResource
                move.l  (sp)+,(a3)+
                addq.w  #1,d7
                cmpi.w  #$C000,d7
                blt.s   loc_FFC655BC
                movea.l var_10(a6),a0
                moveq   #0,d0
                move.l  d0,$260(a0)
                movea.l var_10(a6),a0
                move.l  d5,$264(a0)
                subq.l  #4,sp
                _GetDeviceList
                movea.l (sp)+,a4
                movea.l var_10(a6),a0
                lea     $268(a0),a2

loc_FFC655F2:                           ; CODE XREF: sub_FFC65570+AC↓j
                move.l  a4,(a2)
                movea.l (a4),a0
                movea.l $16(a0),a0
                movea.l (a0),a0
                movea.l $2A(a0),a0
                movea.l (a0),a0
                move.l  (a0),4(a2)
                moveq   #0,d0
                move.l  d0,8(a2)
                move.l  d0,$10(a2)
                lea     $18(a2),a2
                movea.l (a4),a0
                movea.l $1E(a0),a4
                move.l  a4,d0
                bne.s   loc_FFC655F2
                subq.l  #2,sp
                _CurResFile
                move.w  (sp)+,d4
                moveq   #0,d0
                move.w  d0,-(sp)
                _UseResFile
                movea.l var_10(a6),a0
                lea     $258(a0),a3
                subq.l  #4,sp
                move.l  #$696E646C,-(sp)
                move.w  #$BFF8,-(sp)
                _GetResource
                move.l  (sp)+,(a3)+
                subq.l  #4,sp
                move.l  #$696E646C,-(sp)
                move.w  #$BFF9,-(sp)
                _GetResource
                move.l  (sp)+,(a3)
                movea.l var_10(a6),a0
                lea     $220(a0),a3
                moveq   #1,d0
                move.b  d0,-(sp)
                moveq   #$FFFFFFFF,d0
                tst.b   (sp)+
                sne     d0
                move.w  d0,($B9E).w
                subq.l  #4,sp
                move.l  #$636C7574,-(sp)
                moveq   #8,d0
                move.w  d0,-(sp)
                _GetResource
                move.l  (sp)+,(a3)+
                moveq   #1,d0
                move.b  d0,-(sp)
                moveq   #$FFFFFFFF,d0
                tst.b   (sp)+
                sne     d0
                move.w  d0,($B9E).w
                subq.l  #4,sp
                move.l  #$636C7574,-(sp)
                moveq   #4,d0
                move.w  d0,-(sp)
                _GetResource
                move.l  (sp)+,(a3)+
                movea.l var_10(a6),a0
                lea     $228(a0),a0
                move.l  a0,var_8(a6)
                moveq   #0,d0
                move.l  d0,(a0)
                movea.l var_8(a6),a0
                clr.w   4(a0)
                addq.l  #6,var_8(a6)
                move.w  #$BFF9,d7

loc_FFC656B6:                           ; CODE XREF: sub_FFC65570+16A↓j
                subq.l  #4,sp
                move.l  #$72676220,-(sp)
                move.w  d7,-(sp)
                _GetResource
                movea.l (sp)+,a0
                movea.l (a0),a0
                move.l  var_8(a6),d0
                addq.l  #6,var_8(a6)
                movea.l d0,a1
                move.l  (a0)+,(a1)+
                move.w  (a0)+,(a1)+
                addq.w  #1,d7
                cmpi.w  #$C000,d7
                blt.s   loc_FFC656B6
                move.w  d4,-(sp)
                _UseResFile
                movea.l var_10(a6),a0
                lea     $20(a0),a3
                movea.l $220(a0),a0
                movea.l (a0),a0
                move.l  (a0),(a3)+
                moveq   #1,d7

loc_FFC656F2:                           ; CODE XREF: sub_FFC65570+18E↓j
                subq.l  #4,sp
                _GetCTSeed
                move.l  (sp)+,(a3)+
                addq.w  #1,d7
                cmpi.w  #$10,d7
                blt.s   loc_FFC656F2
                movea.l var_10(a6),a0
                movea.l $224(a0),a0
                movea.l (a0),a0
                move.l  (a0),(a3)+
                moveq   #1,d7

loc_FFC6570E:                           ; CODE XREF: sub_FFC65570+1AA↓j
                subq.l  #4,sp
                _GetCTSeed
                move.l  (sp)+,(a3)+
                addq.w  #1,d7
                cmpi.w  #$30,d7 ; '0'
                blt.s   loc_FFC6570E
                movea.l var_10(a6),a0
                lea     $120(a0),a3
                clr.w   d7

loc_FFC65726:                           ; CODE XREF: sub_FFC65570+1C4↓j
                _NewEmptyHandleSys
                move.l  a0,var_C(a6)
                move.l  a0,(a3)+
                addq.w  #1,d7
                cmpi.w  #$40,d7 ; '@'
                blt.s   loc_FFC65726
                movea.l arg_0(a6),a1
                movea.l (a1),a0
                _HUnlock
                movem.l var_2C(a6),d4-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFC65570

; ---------------------------------------------------------------------------
                dc.b $22 ; "
                dc.b $78 ; x
                dc.b $20
                dc.b $38 ; 8
                dc.b $22 ; "
                dc.b $69 ; i
                dc.b   0
                dc.b $F8
                dc.b $4E ; N
                dc.b $D1
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

sub_FFC65760:                           ; DATA XREF: ROM:FFC069CC↑o

arg_2           =  $A
arg_6           =  $E

                link    a6,#0
                moveq   #0,d0
                move.w  arg_2(a6),d0
                moveq   #0,d1
                move.w  arg_6(a6),d1
                move.l  d0,d2
                sub.l   d1,d2
                cmpi.l  #$200,d2
                bge.s   loc_FFC65788
                cmpi.l  #$FFFFFE00,d2
                ble.s   loc_FFC65788
                moveq   #0,d0
                bra.s   loc_FFC6578A
; ---------------------------------------------------------------------------

loc_FFC65788:                           ; CODE XREF: sub_FFC65760+1A↑j
                                        ; sub_FFC65760+22↑j
                move.l  d2,d0

loc_FFC6578A:                           ; CODE XREF: sub_FFC65760+26↑j
                unlk    a6
                rts
; End of function sub_FFC65760


; =============== S U B R O U T I N E =======================================


sub_FFC6578E:                           ; CODE XREF: sub_FFC657A0+42↓p
                                        ; sub_FFC657A0+5C↓p ...
                movea.l ($2038).w,a1
                movea.l $FC(a1),a1
                jmp     (a1)
; End of function sub_FFC6578E

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

sub_FFC657A0:                           ; DATA XREF: ROM:FFC069D0↑o

var_18          = -$18
var_4           = -4
arg_0           =  8

                link    a6,#-8
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a1
                lea     (a1),a4
                lea     2(a1),a2
                lea     4(a1),a3
                move.l  a4,var_4(a6)
                move.w  (a1),d0
                lsr.w   #1,d0
                move.w  d0,(a1)
                move.w  2(a1),d0
                lsr.w   #1,d0
                move.w  d0,2(a1)
                move.w  4(a1),d0
                lsr.w   #1,d0
                move.w  d0,4(a1)
                move.l  a1,-(sp)
                moveq   #0,d0
                move.w  (a2),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.w  (a4),d0
                move.l  d0,-(sp)
                jsr     sub_FFC6578E
                addq.l  #8,sp
                movea.l (sp)+,a1
                tst.l   d0
                bne.s   loc_FFC65808
                move.l  a1,-(sp)
                moveq   #0,d0
                move.w  (a3),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.w  (a4),d0
                move.l  d0,-(sp)
                jsr     sub_FFC6578E
                addq.l  #8,sp
                movea.l (sp)+,a1
                tst.l   d0
                beq.s   loc_FFC65882

loc_FFC65808:                           ; CODE XREF: sub_FFC657A0+4C↑j
                move.l  a1,-(sp)
                moveq   #0,d0
                move.w  (a2),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.w  (a4),d0
                move.l  d0,-(sp)
                jsr     sub_FFC6578E
                addq.l  #8,sp
                movea.l (sp)+,a1
                tst.l   d0
                ble.s   loc_FFC6582C
                move.l  a4,var_4(a6)
                movea.l a2,a4
                movea.l var_4(a6),a2

loc_FFC6582C:                           ; CODE XREF: sub_FFC657A0+80↑j
                move.l  a1,-(sp)
                moveq   #0,d0
                move.w  (a3),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.w  (a4),d0
                move.l  d0,-(sp)
                jsr     sub_FFC6578E
                addq.l  #8,sp
                movea.l (sp)+,a1
                tst.l   d0
                ble.s   loc_FFC65850
                move.l  a4,var_4(a6)
                movea.l a3,a4
                movea.l var_4(a6),a3

loc_FFC65850:                           ; CODE XREF: sub_FFC657A0+A4↑j
                move.w  (a4),d0
                lsr.w   #1,d0
                move.w  d0,(a4)
                move.l  a1,-(sp)
                moveq   #0,d0
                move.w  (a3),d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.w  (a2),d0
                move.l  d0,-(sp)
                jsr     sub_FFC6578E
                addq.l  #8,sp
                movea.l (sp)+,a1
                move.l  d0,d7
                bge.s   loc_FFC65878
                move.w  (a2),d0
                lsr.w   #1,d0
                move.w  d0,(a2)
                bra.s   loc_FFC65882
; ---------------------------------------------------------------------------

loc_FFC65878:                           ; CODE XREF: sub_FFC657A0+CE↑j
                tst.l   d7
                ble.s   loc_FFC65882
                move.w  (a3),d0
                lsr.w   #1,d0
                move.w  d0,(a3)

loc_FFC65882:                           ; CODE XREF: sub_FFC657A0+66↑j
                                        ; sub_FFC657A0+D6↑j ...
                movem.l var_18(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC657A0


; =============== S U B R O U T I N E =======================================


sub_FFC6588C:                           ; CODE XREF: sub_FFC64AC0+BC↑p
                                        ; sub_FFC64AC0+C6↑p ...
                movea.l ($2038).w,a1
                movea.l $100(a1),a1
                jmp     (a1)
; End of function sub_FFC6588C

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

sub_FFC658A0:                           ; DATA XREF: ROM:FFC069D4↑o

arg_0           =  8

                link    a6,#0
                movea.l arg_0(a6),a1
                moveq   #0,d0
                move.w  (a1),d0
                move.l  d0,d1
                lsl.l   #2,d1
                moveq   #0,d0
                move.w  (a1),d0
                add.l   d0,d1
                moveq   #0,d0
                move.w  2(a1),d0
                lsl.l   #3,d0
                add.l   d0,d1
                moveq   #0,d0
                move.w  2(a1),d0
                add.l   d0,d1
                moveq   #0,d0
                move.w  4(a1),d0
                lsl.l   #1,d0
                add.l   d0,d1
                move.l  d1,d0
                lsr.l   #4,d0
                unlk    a6
                rts
; End of function sub_FFC658A0


; =============== S U B R O U T I N E =======================================


sub_FFC658DA:                           ; CODE XREF: sub_FFC658F0+14↓p
                                        ; sub_FFC659A0+24↓p
                movea.l ($2038).w,a1
                movea.l $104(a1),a1
                jmp     (a1)
; End of function sub_FFC658DA

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

sub_FFC658F0:                           ; DATA XREF: ROM:FFC069D8↑o

var_20          = -$20
arg_0           =  8

                link    a6,#-4
                movem.l d4-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l a3,a4
                movea.l a4,a2
                addq.w  #6,a2
                move.l  a3,-(sp)
                jsr     sub_FFC658DA
                move.l  d0,d5
                move.w  (a3),d6
                cmp.w   2(a3),d6
                addq.w  #4,sp
                bcc.s   loc_FFC65918
                move.w  2(a3),d6

loc_FFC65918:                           ; CODE XREF: sub_FFC658F0+22↑j
                cmp.w   4(a3),d6
                bcc.s   loc_FFC65922
                move.w  4(a3),d6

loc_FFC65922:                           ; CODE XREF: sub_FFC658F0+2C↑j
                tst.w   d6
                bne.s   loc_FFC65932
                moveq   #$FFFFFFFF,d0
                move.l  d0,(a3)
                move.w  #$FFFF,4(a3)
                bra.s   loc_FFC65982
; ---------------------------------------------------------------------------

loc_FFC65932:                           ; CODE XREF: sub_FFC658F0+34↑j
                lsr.l   #1,d5
                move.l  d5,d0
                lsr.l   #2,d0
                add.l   d0,d5
                addi.l  #$6000,d5
                move.w  #$FFFF,d4
                sub.w   d5,d4

loc_FFC65946:                           ; CODE XREF: sub_FFC658F0+90↓j
                moveq   #0,d7
                move.w  (a4),d7
                moveq   #0,d0
                move.w  d6,d0
                cmpi.w  #$FFFF,d0
                bcc.s   loc_FFC65968
                mulu.l  #$FFFF,d7
                moveq   #0,d0
                move.w  d6,d0
                move.l  d7,d1
                divu.l  d0,d1
                move.l  d1,d7

loc_FFC65968:                           ; CODE XREF: sub_FFC658F0+62↑j
                mulu.l  d5,d7
                move.l  d7,d0
                divu.l  #$FFFF,d0
                move.l  d0,d7
                move.w  d4,d0
                add.w   d7,d0
                move.w  d0,(a4)+
                cmpa.l  a4,a2
                bhi.s   loc_FFC65946

loc_FFC65982:                           ; CODE XREF: sub_FFC658F0+40↑j
                movem.l var_20(a6),d4-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC658F0


; =============== S U B R O U T I N E =======================================


sub_FFC6598C:                           ; CODE XREF: sub_FFC65A00+106↓p
                movea.l ($2038).w,a1
                movea.l $108(a1),a1
                jmp     (a1)
; End of function sub_FFC6598C

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

sub_FFC659A0:                           ; DATA XREF: ROM:FFC069DC↑o

var_1C          = -$1C
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l d3-d7/a4,-(sp)
                move.l  arg_4(a6),d4
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                lea     8(a0),a4
                move.l  #$FFFF,d5
                moveq   #0,d3
                moveq   #0,d6

loc_FFC659C0:                           ; CODE XREF: sub_FFC659A0+3A↓j
                pea     2(a4)
                jsr     sub_FFC658DA
                move.l  d0,d7
                cmp.l   d7,d5
                addq.w  #4,sp
                bls.s   loc_FFC659D4
                move.l  d7,d5
                move.l  d4,d3

loc_FFC659D4:                           ; CODE XREF: sub_FFC659A0+2E↑j
                addq.l  #1,d6
                addq.w  #8,a4
                cmp.l   d6,d4
                bge.s   loc_FFC659C0
                move.l  d3,d0
                movem.l var_1C(a6),d3-d7/a4
                unlk    a6
                rts
; End of function sub_FFC659A0


; =============== S U B R O U T I N E =======================================


sub_FFC659E8:                           ; CODE XREF: sub_FFC65A00+DA↓p
                movea.l ($2038).w,a1
                movea.l $10C(a1),a1
                jmp     (a1)
; End of function sub_FFC659E8

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

sub_FFC65A00:                           ; DATA XREF: ROM:FFC069E0↑o

var_3C          = -$3C
var_1C          = -$1C
var_18          = -$18
var_14          = -$14
var_C           = -$C
var_A           = -$A
var_8           = -8
var_6           = -6
var_4           = -4
var_2           = -2
arg_0           =  8

                link    a6,#-$1C
                movem.l d3-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a0
                move.w  $6C(a0),d6
                move.l  $7A(a0),var_14(a6)
                moveq   #0,d0
                move.w  $70(a0),d0
                cmpi.l  #$80,d0
                beq.w   loc_FFC65AB0
                jsr     sub_FFC6397C
                movea.l d0,a4
                ext.l   d6
                move.l  $20(a4,d6.l*4),var_1C(a6)
                movea.l arg_0(a6),a0
                moveq   #0,d0
                move.w  $5E(a0),d0
                moveq   #1,d1
                cmp.l   d0,d1
                bne.s   loc_FFC65A48
                subi.w  #$20,d6 ; ' '

loc_FFC65A48:                           ; CODE XREF: sub_FFC65A00+42↑j
                cmpi.w  #$10,d6
                blt.s   loc_FFC65A58
                subi.w  #$10,d6
                moveq   #1,d5
                moveq   #$F,d3
                bra.s   loc_FFC65A5A
; ---------------------------------------------------------------------------

loc_FFC65A58:                           ; CODE XREF: sub_FFC65A00+4C↑j
                clr.w   d5

loc_FFC65A5A:                           ; CODE XREF: sub_FFC65A00+56↑j
                asr.w   #1,d6
                ext.l   d5
                move.l  d5,d7
                asl.l   #2,d7
                lea     $220(a4),a0
                movea.l (a0,d7.l),a3
                lea     $258(a4),a0
                move.l  (a0,d7.l),var_18(a6)
                movea.l a3,a0
                _GetHandleSize
                move.l  d0,d7
                movea.l (a3),a0
                move.w  6(a0),d0
                ext.l   d0
                move.l  d0,d4
                movea.l var_14(a6),a0
                move.l  d7,d0
                _ReallocateHandle
                movea.l var_14(a6),a0
                _HPurge
                movea.l (a3),a0
                movea.l var_14(a6),a2
                movea.l (a2),a1
                move.l  d7,d0
                _BlockMoveData
                movea.l var_14(a6),a0
                movea.l (a0),a0
                move.l  var_1C(a6),(a0)
                movea.l var_18(a6),a0
                movea.l (a0),a3
                bra.s   loc_FFC65AE6
; ---------------------------------------------------------------------------

loc_FFC65AB0:                           ; CODE XREF: sub_FFC65A00+22↑j
                moveq   #0,d0
                movea.l d0,a3
                movea.l var_14(a6),a0
                movea.l (a0),a0
                move.w  6(a0),d1
                ext.l   d1
                move.l  d1,d4
                movea.l arg_0(a6),a0
                moveq   #0,d1
                move.w  $68(a0),d1
                cmpi.w  #8,d1
                bcc.s   loc_FFC65AE4
                moveq   #1,d5
                move.l  d4,-(sp)
                move.l  var_14(a6),-(sp)
                jsr     sub_FFC659E8
                move.l  d0,d3
                addq.w  #8,sp
                bra.s   loc_FFC65AE6
; ---------------------------------------------------------------------------

loc_FFC65AE4:                           ; CODE XREF: sub_FFC65A00+D0↑j
                clr.w   d5

loc_FFC65AE6:                           ; CODE XREF: sub_FFC65A00+AE↑j
                                        ; sub_FFC65A00+E2↑j
                tst.w   d6
                beq.s   loc_FFC65B0C
                subq.l  #2,sp
                move.w  d6,-(sp)
                pea     var_6(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.w  #$50B,d0
                _IconDispatch
                tst.w   d5
                addq.w  #2,sp
                bne.s   loc_FFC65B0C
                pea     var_6(a6)
                jsr     sub_FFC6598C
                addq.w  #4,sp

loc_FFC65B0C:                           ; CODE XREF: sub_FFC65A00+E8↑j
                                        ; sub_FFC65A00+100↑j
                movea.l var_14(a6),a0
                movea.l (a0),a0
                lea     8(a0),a4
                moveq   #0,d7
                bra.w   loc_FFC65C74
; ---------------------------------------------------------------------------

loc_FFC65B1C:                           ; CODE XREF: sub_FFC65A00+276↓j
                move.l  a3,d0
                beq.s   loc_FFC65B2A
                moveq   #0,d0
                move.b  (a3),d0
                cmp.l   d7,d0
                bne.w   loc_FFC65C0E

loc_FFC65B2A:                           ; CODE XREF: sub_FFC65A00+11E↑j
                move.l  a3,d0
                beq.s   loc_FFC65B30
                addq.w  #1,a3

loc_FFC65B30:                           ; CODE XREF: sub_FFC65A00+12C↑j
                lea     var_C(a6),a0
                movea.l a4,a1
                addq.l  #2,a1
                move.l  (a1)+,(a0)+
                move.w  (a1)+,(a0)+
                tst.w   d6
                beq.w   loc_FFC65BEC
                tst.w   d5
                beq.s   loc_FFC65B5C
                cmp.l   d7,d3
                bne.w   loc_FFC65BEC
                lea     var_C(a6),a0
                lea     var_6(a6),a1
                move.l  (a1)+,(a0)+
                move.w  (a1)+,(a0)+
                bra.w   loc_FFC65BEC
; ---------------------------------------------------------------------------

loc_FFC65B5C:                           ; CODE XREF: sub_FFC65A00+144↑j
                tst.l   d7
                beq.s   loc_FFC65BB0
                moveq   #0,d0
                move.w  var_C(a6),d0
                moveq   #0,d1
                move.w  var_6(a6),d1
                tst.l   d1
                mulu.l  d0,d1
                moveq   #$10,d0
                lsr.l   d0,d1
                move.w  d1,var_C(a6)
                moveq   #0,d0
                move.w  var_A(a6),d0
                moveq   #0,d1
                move.w  var_4(a6),d1
                tst.l   d1
                mulu.l  d0,d1
                moveq   #$10,d0
                lsr.l   d0,d1
                move.w  d1,var_A(a6)
                moveq   #0,d0
                move.w  var_8(a6),d0
                moveq   #0,d1
                move.w  var_2(a6),d1
                tst.l   d1
                mulu.l  d0,d1
                moveq   #$10,d0
                lsr.l   d0,d1
                move.w  d1,var_8(a6)
                bra.s   loc_FFC65BEC
; ---------------------------------------------------------------------------

loc_FFC65BB0:                           ; CODE XREF: sub_FFC65A00+15E↑j
                moveq   #0,d0
                move.w  var_C(a6),d0
                moveq   #0,d1
                move.w  var_6(a6),d1
                add.l   d0,d1
                asr.l   #1,d1
                move.w  d1,var_C(a6)
                moveq   #0,d0
                move.w  var_A(a6),d0
                moveq   #0,d1
                move.w  var_4(a6),d1
                add.l   d0,d1
                asr.l   #1,d1
                move.w  d1,var_A(a6)
                moveq   #0,d0
                move.w  var_8(a6),d0
                moveq   #0,d1
                move.w  var_2(a6),d1
                add.l   d0,d1
                asr.l   #1,d1
                move.w  d1,var_8(a6)

loc_FFC65BEC:                           ; CODE XREF: sub_FFC65A00+13E↑j
                                        ; sub_FFC65A00+148↑j ...
                movea.l arg_0(a6),a0
                tst.w   $62(a0)
                beq.s   loc_FFC65C00
                pea     var_C(a6)
                jsr     sub_FFC6588C
                addq.w  #4,sp

loc_FFC65C00:                           ; CODE XREF: sub_FFC65A00+1F4↑j
                movea.l a4,a0
                addq.l  #2,a0
                lea     var_C(a6),a1
                move.l  (a1)+,(a0)+
                move.w  (a1)+,(a0)+
                bra.s   loc_FFC65C12
; ---------------------------------------------------------------------------

loc_FFC65C0E:                           ; CODE XREF: sub_FFC65A00+126↑j
                ori.w   #4,(a4)

loc_FFC65C12:                           ; CODE XREF: sub_FFC65A00+20C↑j
                movea.l arg_0(a6),a0
                moveq   #0,d0
                move.w  $5E(a0),d0
                moveq   #1,d1
                cmp.l   d0,d1
                bne.s   loc_FFC65C70
                lea     var_C(a6),a0
                movea.l a4,a1
                addq.l  #2,a1
                move.l  (a1)+,(a0)+
                move.w  (a1)+,(a0)+
                moveq   #0,d0
                move.w  var_C(a6),d0
                add.l   #$FFFF,d0
                asr.l   #1,d0
                move.w  d0,var_C(a6)
                moveq   #0,d0
                move.w  var_A(a6),d0
                add.l   #$FFFF,d0
                asr.l   #1,d0
                move.w  d0,var_A(a6)
                moveq   #0,d0
                move.w  var_8(a6),d0
                add.l   #$FFFF,d0
                asr.l   #1,d0
                move.w  d0,var_8(a6)
                movea.l a4,a0
                addq.l  #2,a0
                lea     var_C(a6),a1
                move.l  (a1)+,(a0)+
                move.w  (a1)+,(a0)+

loc_FFC65C70:                           ; CODE XREF: sub_FFC65A00+220↑j
                addq.w  #8,a4
                addq.l  #1,d7

loc_FFC65C74:                           ; CODE XREF: sub_FFC65A00+118↑j
                cmp.l   d7,d4
                bge.w   loc_FFC65B1C
                movem.l var_3C(a6),d3-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC65A00


; =============== S U B R O U T I N E =======================================


sub_FFC65C84:                           ; CODE XREF: sub_FFC64040+5A↑p
                                        ; sub_FFC65D00+20↓p ...
                movea.l ($2038).w,a1
                movea.l $110(a1),a1
                jmp     (a1)
; End of function sub_FFC65C84

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC65C90:                           ; DATA XREF: ROM:FFC069E4↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a2-a4,-(sp)
                movea.l arg_4(a6),a2
                movea.l arg_0(a6),a3
                lea     $268(a2),a4
                move.l  $264(a2),d2
                movea.l (a3),a0
                movea.l $16(a0),a0
                movea.l (a0),a0
                movea.l $2A(a0),a0
                movea.l (a0),a0
                move.l  (a0),d1

loc_FFC65CB8:                           ; CODE XREF: sub_FFC65C90+4C↓j
                cmpa.l  (a4),a3
                bne.s   loc_FFC65CD4
                cmp.l   4(a4),d1
                beq.s   loc_FFC65CD0
                move.l  d1,4(a4)
                moveq   #0,d0
                move.l  d0,8(a4)
                move.l  d0,$10(a4)

loc_FFC65CD0:                           ; CODE XREF: sub_FFC65C90+30↑j
                move.l  a4,d0
                bra.s   loc_FFC65CE0
; ---------------------------------------------------------------------------

loc_FFC65CD4:                           ; CODE XREF: sub_FFC65C90+2A↑j
                subq.l  #1,d2
                lea     $18(a4),a4
                tst.l   d2
                bne.s   loc_FFC65CB8
                moveq   #0,d0

loc_FFC65CE0:                           ; CODE XREF: sub_FFC65C90+42↑j
                movem.l var_C(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFC65C90


; =============== S U B R O U T I N E =======================================


sub_FFC65CEA:                           ; CODE XREF: sub_FFC65D60+7A↓p
                movea.l ($2038).w,a1
                movea.l $114(a1),a1
                jmp     (a1)
; End of function sub_FFC65CEA

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

sub_FFC65D00:                           ; DATA XREF: ROM:FFC069E8↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l $7A(a4),a0
                tst.l   (a0)
                bne.s   loc_FFC65D2A
                jsr     sub_FFC6399A
                movea.l d0,a3
                movea.l a3,a0
                _HLock
                move.l  a4,-(sp)
                jsr     sub_FFC65C84
                movea.l a3,a0
                _HUnlock
                addq.w  #4,sp

loc_FFC65D2A:                           ; CODE XREF: sub_FFC65D00+12↑j
                subq.l  #2,sp
                move.l  $7E(a4),-(sp)
                move.l  $7A(a4),-(sp)
                move.l  #$20004000,-(sp)
                move.w  #$C18,d0
                _PaletteDispatch
                moveq   #0,d0
                move.b  (sp)+,d0
                tst.l   d0
                movem.l var_8(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC65D00


; =============== S U B R O U T I N E =======================================


sub_FFC65D50:                           ; CODE XREF: sub_FFC65D60+B2↓p
                                        ; sub_FFC65D60+D6↓p
                movea.l ($2038).w,a1
                movea.l $118(a1),a1
                jmp     (a1)
; End of function sub_FFC65D50

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC65D60:                           ; DATA XREF: ROM:FFC069EC↑o

var_20          = -$20
var_C           = -$C
arg_0           =  8
arg_6           =  $E

                link    a6,#-$C
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a4
                jsr     sub_FFC6397C
                move.l  d0,var_C(a6)
                movea.l $7E(a4),a3
                move.l  a3,d0
                beq.s   loc_FFC65D8A
                movea.l (a3),a0
                moveq   #1,d0
                and.w   $14(a0),d0
                bne.s   loc_FFC65D8A
                clr.w   d7
                bra.s   loc_FFC65D94
; ---------------------------------------------------------------------------

loc_FFC65D8A:                           ; CODE XREF: sub_FFC65D60+1A↑j
                                        ; sub_FFC65D60+24↑j
                moveq   #0,d0
                move.w  $60(a4),d0
                move.l  d0,d7
                lsl.l   #1,d7

loc_FFC65D94:                           ; CODE XREF: sub_FFC65D60+28↑j
                tst.w   $62(a4)
                beq.s   loc_FFC65D9C
                addq.w  #1,d7

loc_FFC65D9C:                           ; CODE XREF: sub_FFC65D60+38↑j
                moveq   #0,d0
                move.w  $5E(a4),d0
                moveq   #1,d1
                cmp.l   d0,d1
                bne.s   loc_FFC65DAC
                addi.w  #$20,d7 ; ' '

loc_FFC65DAC:                           ; CODE XREF: sub_FFC65D60+46↑j
                moveq   #8,d0
                cmp.w   arg_6(a6),d0
                ble.s   loc_FFC65DB8
                addi.w  #$10,d7

loc_FFC65DB8:                           ; CODE XREF: sub_FFC65D60+52↑j
                ext.l   d7
                movea.l var_C(a6),a0
                lea     $120(a0),a0
                move.l  (a0,d7.l*4),$7A(a4)
                move.w  d7,$6C(a4)
                move.l  a3,d0
                bne.s   loc_FFC65DD4
                moveq   #1,d0
                bra.s   loc_FFC65E42
; ---------------------------------------------------------------------------

loc_FFC65DD4:                           ; CODE XREF: sub_FFC65D60+6E↑j
                move.l  var_C(a6),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC65CEA
                movea.l d0,a2
                move.l  a2,d0
                addq.w  #8,sp
                beq.s   loc_FFC65E32
                cmpi.w  #$20,d7 ; ' '
                blt.s   loc_FFC65DFA
                subi.w  #$20,d7 ; ' '
                lea     $10(a2),a1
                lea     $14(a2),a3
                bra.s   loc_FFC65E02
; ---------------------------------------------------------------------------

loc_FFC65DFA:                           ; CODE XREF: sub_FFC65D60+8A↑j
                lea     8(a2),a1
                lea     $C(a2),a3

loc_FFC65E02:                           ; CODE XREF: sub_FFC65D60+98↑j
                moveq   #1,d6
                lsl.l   d7,d6
                move.l  d6,d0
                and.l   (a1),d0
                bne.s   loc_FFC65E28
                or.l    d6,(a1)
                move.l  a1,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC65D50
                addq.l  #4,sp
                movea.l (sp)+,a1
                tst.l   d0
                beq.s   loc_FFC65E22
                or.l    d6,(a3)
                bra.s   loc_FFC65E28
; ---------------------------------------------------------------------------

loc_FFC65E22:                           ; CODE XREF: sub_FFC65D60+BC↑j
                move.l  d6,d0
                not.l   d0
                and.l   d0,(a3)

loc_FFC65E28:                           ; CODE XREF: sub_FFC65D60+AA↑j
                                        ; sub_FFC65D60+C0↑j
                move.l  d6,d0
                and.l   (a3),d0
                bne.s   loc_FFC65E40
                moveq   #0,d0
                bra.s   loc_FFC65E42
; ---------------------------------------------------------------------------

loc_FFC65E32:                           ; CODE XREF: sub_FFC65D60+84↑j
                move.l  a1,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFC65D50
                addq.l  #4,sp
                movea.l (sp)+,a1
                bra.s   loc_FFC65E42
; ---------------------------------------------------------------------------

loc_FFC65E40:                           ; CODE XREF: sub_FFC65D60+CC↑j
                moveq   #1,d0

loc_FFC65E42:                           ; CODE XREF: sub_FFC65D60+72↑j
                                        ; sub_FFC65D60+D0↑j ...
                movem.l var_20(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC65D60


; =============== S U B R O U T I N E =======================================


sub_FFC65E4C:                           ; CODE XREF: sub_FFC64040+32↑p
                movea.l ($2038).w,a1
                movea.l $11C(a1),a1
                jmp     (a1)
; End of function sub_FFC65E4C

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

sub_FFC65E60:                           ; DATA XREF: ROM:FFC069F0↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12

                link    a6,#0
                movem.l d7/a2-a4,-(sp)
                movea.l arg_4(a6),a4
                move.w  arg_8(a6),d7
                blt.s   loc_FFC65E78
                cmpi.w  #7,d7
                ble.s   loc_FFC65E80

loc_FFC65E78:                           ; CODE XREF: sub_FFC65E60+10↑j
                move.w  #$FFCE,arg_A(a6)
                bra.s   loc_FFC65EDA
; ---------------------------------------------------------------------------

loc_FFC65E80:                           ; CODE XREF: sub_FFC65E60+16↑j
                jsr     sub_FFC6397C
                movea.l d0,a3
                move.l  a4,d0
                beq.s   loc_FFC65EA4
                ext.l   d7
                move.l  d7,d0
                add.l   d0,d0
                move.l  d0,d1
                add.l   d1,d1
                add.l   d1,d0
                lea     $228(a3),a1
                lea     (a1,d0.l),a0
                movea.l a4,a1
                move.l  (a0)+,(a1)+
                move.w  (a0)+,(a1)+

loc_FFC65EA4:                           ; CODE XREF: sub_FFC65E60+28↑j
                tst.l   arg_0(a6)
                beq.s   loc_FFC65ED6
                ext.l   d7
                movea.l (a3,d7.l*4),a4
                move.l  a4,-(sp)
                _LoadResource           ; come-from patches = #1
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7
                beq.s   loc_FFC65EC2
                move.w  d7,arg_A(a6)
                bra.s   loc_FFC65EDA
; ---------------------------------------------------------------------------

loc_FFC65EC2:                           ; CODE XREF: sub_FFC65E60+5A↑j
                movea.l (a4),a0
                movea.l arg_0(a6),a1
                movea.l a0,a2
                move.b  (a2),d1
                ext.w   d1
                addq.w  #1,d1
                ext.l   d1
                move.l  d1,d0
                _BlockMoveData

loc_FFC65ED6:                           ; CODE XREF: sub_FFC65E60+48↑j
                clr.w   arg_A(a6)

loc_FFC65EDA:                           ; CODE XREF: sub_FFC65E60+1E↑j
                                        ; sub_FFC65E60+60↑j
                movem.l var_10(a6),d7/a2-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC65E60


; =============== S U B R O U T I N E =======================================


sub_FFC65EE6:                           ; DATA XREF: ROM:FFC63914↑o
                movea.l ($2038).w,a1
                movea.l $120(a1),a1
                jmp     (a1)
; End of function sub_FFC65EE6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC65EF0:                           ; DATA XREF: ROM:FFC069F4↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l a3-a4,-(sp)
                jsr     sub_FFC6399A
                movea.l d0,a3
                movea.l a3,a0
                _HLock
                move.w  arg_0(a6),d0
                ext.l   d0
                lsl.l   #1,d0
                movea.l (a3),a0
                lea     $120(a0),a0
                lea     (a0,d0.l*4),a4
                move.l  (a4),d0
                movea.l d0,a0
                _EmptyHandle
                movea.l 4(a4),a0
                _EmptyHandle
                movea.l $40(a4),a0
                _EmptyHandle
                movea.l $44(a4),a0
                _EmptyHandle
                movea.l $80(a4),a0
                _EmptyHandle
                movea.l $84(a4),a0
                _EmptyHandle
                movea.l $C0(a4),a0
                _EmptyHandle
                movea.l $C4(a4),a0
                _EmptyHandle
                movea.l a3,a0
                _HUnlock
                movem.l var_8(a6),a3-a4
                unlk    a6
                rtd     #2
; End of function sub_FFC65EF0


; =============== S U B R O U T I N E =======================================


sub_FFC65F54:                           ; CODE XREF: sub_FFC65F60+7A↓p
                movea.l ($2038).w,a1
                movea.l $124(a1),a1
                jmp     (a1)
; End of function sub_FFC65F54

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC65F60:                           ; DATA XREF: ROM:FFC069F8↑o

var_14          = -$14
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12

                link    a6,#0
                movem.l d6-d7/a2-a4,-(sp)
                move.w  arg_8(a6),d7
                cmpi.w  #1,d7
                blt.s   loc_FFC65F78
                cmpi.w  #7,d7
                ble.s   loc_FFC65F82

loc_FFC65F78:                           ; CODE XREF: sub_FFC65F60+10↑j
                move.w  #$FFCE,arg_A(a6)
                bra.w   loc_FFC6603C
; ---------------------------------------------------------------------------

loc_FFC65F82:                           ; CODE XREF: sub_FFC65F60+16↑j
                tst.l   arg_4(a6)
                beq.s   loc_FFC65FDE
                jsr     sub_FFC6397C
                movea.l d0,a3
                movea.l arg_4(a6),a0
                ext.l   d7
                move.l  d7,d0
                add.l   d0,d0
                move.l  d0,d1
                add.l   d1,d1
                add.l   d1,d0
                lea     $228(a3),a2
                lea     (a2,d0.l),a1
                move.l  (a0)+,(a1)+
                move.w  (a0)+,(a1)+
                subq.l  #4,sp
                move.l  #$72676220,-(sp)
                move.w  d7,d0
                add.w   #$BFF8,d0
                move.w  d0,-(sp)
                _GetResource
                movea.l (sp)+,a4
                movea.l arg_4(a6),a0
                movea.l (a4),a1
                move.l  (a0)+,(a1)+
                move.w  (a0)+,(a1)+
                movea.l a4,a0
                _HNoPurge
                move.l  a4,-(sp)
                _ChangedResource
                move.l  a4,-(sp)
                _WriteResource
                movea.l a4,a0
                _HPurge
                move.w  d7,-(sp)
                jsr     sub_FFC65F54

loc_FFC65FDE:                           ; CODE XREF: sub_FFC65F60+26↑j
                tst.l   arg_0(a6)
                beq.s   loc_FFC66032
                movea.l arg_0(a6),a0
                moveq   #0,d0
                move.b  (a0),d0
                move.w  d0,d6
                addq.w  #1,d6
                moveq   #0,d0
                move.b  d6,d0
                cmpi.b  #$20,d0 ; ' '
                bls.s   loc_FFC65FFC
                moveq   #$20,d6 ; ' '

loc_FFC65FFC:                           ; CODE XREF: sub_FFC65F60+98↑j
                jsr     sub_FFC6397C
                movea.l d0,a3
                ext.l   d7
                movea.l (a3,d7.l*4),a4
                move.l  a4,-(sp)
                _LoadResource           ; come-from patches = #1
                movea.l arg_0(a6),a0
                movea.l (a4),a1
                moveq   #0,d1
                move.b  d6,d1
                move.l  d1,d0
                _BlockMoveData
                move.b  d6,d0
                subq.b  #1,d0
                movea.l (a4),a0
                move.b  d0,(a0)
                movea.l a4,a0
                _HNoPurge
                move.l  a4,-(sp)
                _ChangedResource
                move.l  a4,-(sp)
                _WriteResource
                movea.l a4,a0
                _HPurge

loc_FFC66032:                           ; CODE XREF: sub_FFC65F60+82↑j
                moveq   #0,d0
                move.w  d0,-(sp)
                _UpdateResFile
                clr.w   arg_A(a6)

loc_FFC6603C:                           ; CODE XREF: sub_FFC65F60+1E↑j
                movem.l var_14(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC65F60


; =============== S U B R O U T I N E =======================================


sub_FFC66048:                           ; DATA XREF: ROM:FFC63916↑o
                movea.l ($2038).w,a1
                movea.l $128(a1),a1
                jmp     (a1)
; End of function sub_FFC66048

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

sub_FFC66060:                           ; DATA XREF: ROM:FFC069FC↑o

arg_0           =  8
arg_6           =  $E

                link    a6,#0
                moveq   #0,d0
                move.w  arg_6(a6),d0
                tst.l   d0
                bne.s   loc_FFC66074
                move.l  arg_0(a6),d0
                bra.s   loc_FFC66076
; ---------------------------------------------------------------------------

loc_FFC66074:                           ; CODE XREF: sub_FFC66060+C↑j
                moveq   #0,d0

loc_FFC66076:                           ; CODE XREF: sub_FFC66060+12↑j
                unlk    a6
                rts
; End of function sub_FFC66060


; =============== S U B R O U T I N E =======================================


sub_FFC6607A:                           ; DATA XREF: sub_FFC660D0+12↓o
                movea.l ($2038).w,a1
                movea.l $12C(a1),a1
                jmp     (a1)
; End of function sub_FFC6607A

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

sub_FFC66090:                           ; DATA XREF: ROM:FFC06A00↑o

arg_0           =  8
arg_6           =  $E

                link    a6,#0
                move.w  arg_6(a6),d2
                moveq   #0,d0
                move.w  d2,d0
                moveq   #3,d1
                cmp.l   d0,d1
                beq.s   loc_FFC660AC
                moveq   #0,d0
                move.w  d2,d0
                moveq   #6,d1
                cmp.l   d0,d1
                bne.s   loc_FFC660B2

loc_FFC660AC:                           ; CODE XREF: sub_FFC66090+10↑j
                move.l  arg_0(a6),d0
                bra.s   loc_FFC660B4
; ---------------------------------------------------------------------------

loc_FFC660B2:                           ; CODE XREF: sub_FFC66090+1A↑j
                moveq   #0,d0

loc_FFC660B4:                           ; CODE XREF: sub_FFC66090+20↑j
                unlk    a6
                rts
; End of function sub_FFC66090


; =============== S U B R O U T I N E =======================================


sub_FFC660B8:                           ; DATA XREF: sub_FFC66110+12↓o
                movea.l ($2038).w,a1
                movea.l $130(a1),a1
                jmp     (a1)
; End of function sub_FFC660B8

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

sub_FFC660D0:                           ; DATA XREF: ROM:FFC06A04↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                subq.l  #2,sp
                move.l  arg_8(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                pea     sub_FFC6607A(pc)
                moveq   #0,d0
                move.w  d0,-(sp)
                jsr     sub_FFC65272
                move.w  (sp)+,arg_C(a6)
                unlk    a6
                rtd     #$C
; End of function sub_FFC660D0


; =============== S U B R O U T I N E =======================================


sub_FFC660F8:                           ; DATA XREF: ROM:FFC63938↑o
                movea.l ($2038).w,a1
                movea.l $134(a1),a1
                jmp     (a1)
; End of function sub_FFC660F8

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

sub_FFC66110:                           ; DATA XREF: ROM:FFC06A08↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#0
                subq.l  #2,sp
                move.l  arg_8(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                pea     sub_FFC660B8(pc)
                moveq   #0,d0
                move.w  d0,-(sp)
                jsr     sub_FFC65272
                move.w  (sp)+,arg_C(a6)
                unlk    a6
                rtd     #$C
; End of function sub_FFC66110


; =============== S U B R O U T I N E =======================================


sub_FFC66138:                           ; DATA XREF: ROM:FFC6393A↑o
                movea.l ($2038).w,a1
                movea.l $138(a1),a1
                jmp     (a1)
; End of function sub_FFC66138

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

sub_FFC66150:                           ; DATA XREF: ROM:FFC06A0C↑o

var_2C          = -$2C
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8

                link    a6,#-$14
                movem.l d3/d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l $76(a4),a3
                move.w  $3C(a3),d0
                ext.l   d0
                move.w  $38(a3),d1
                ext.l   d1
                move.l  d0,d6
                sub.l   d1,d6
                move.w  d6,d7
                muls.w  $36(a3),d7
                move.l  d7,d0
                _NewHandle
                move.l  a0,var_14(a6)
                lea     $52(a3),a0
                move.l  a0,var_10(a6)
                move.l  a0,var_C(a6)
                subq.l  #4,sp
                _NewRgn
                move.l  (sp)+,var_8(a6)
                movea.l (a5),a1
                move.l  (a1),d0
                move.l  d0,var_4(a6)
                movea.l var_14(a6),a0
                _HLock
                move.l  d7,d0
                moveq   #$52,d1 ; 'R'
                add.l   d1,d0
                cmp.l   $72(a4),d0
                bcc.s   loc_FFC661B0
                add.l   d7,var_C(a6)

loc_FFC661B0:                           ; CODE XREF: sub_FFC66150+5A↑j
                movea.l var_C(a6),a0
                movea.l var_14(a6),a2
                movea.l (a2),a1
                move.l  d7,d0
                _BlockMoveData
                move.l  var_14(a6),$44(a4)
                lea     $32(a3),a1
                movea.l a1,a0
                lea     $32(a4),a2
                movea.l a2,a1
                moveq   #$E,d0
                _BlockMoveData
                move.l  var_10(a6),$32(a4)
                movea.l a3,a0
                movea.l a4,a1
                moveq   #$32,d0 ; '2'
                _BlockMoveData
                move.l  $4E(a3),$48(a4)
                subq.l  #2,sp
                move.l  var_8(a6),-(sp)
                pea     $32(a4)
                _BitMapRgn
                movea.l var_8(a6),a0
                movea.l (a0),a0
                lea     $54(a4),a1
                addq.l  #2,a0
                move.l  (a0)+,(a1)+
                move.l  (a0)+,(a1)+
                move.l  var_8(a6),$72(a4)
                moveq   #0,d3
                moveq   #$FFFFFFFF,d0
                cmp.w   ($948).w,d0
                bne.s   loc_FFC66220
                movea.l var_4(a6),a0
                tst.l   $5C(a0)
                bne.s   loc_FFC66220
                moveq   #1,d3

loc_FFC66220:                           ; CODE XREF: sub_FFC66150+C2↑j
                                        ; sub_FFC66150+CC↑j
                ext.w   d3
                move.w  d3,$66(a4)
                movea.l var_4(a6),a0
                addq.l  #2,a0
                move.l  a0,$40(a4)
                clr.w   $20(a4)
                moveq   #0,d0
                move.l  d0,$7A(a4)
                move.w  $36(a4),$5C(a4)
                move.b  #1,$6E(a4)
                movem.l var_2C(a6),d3/d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC66150


; =============== S U B R O U T I N E =======================================


sub_FFC66250:                           ; CODE XREF: sub_FFC66460+AE↓p
                movea.l ($2038).w,a1
                movea.l $13C(a1),a1
                jmp     (a1)
; End of function sub_FFC66250

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC66260:                           ; DATA XREF: ROM:FFC06A10↑o

var_2E          = -$2E
var_C           = -$C
var_A           = -$A
var_6           = -6
var_4           = -4
arg_0           =  8
arg_6           =  $E

                link    a6,#-$E
                movem.l d3-d7/a2-a4,-(sp)
                move.w  arg_6(a6),d5
                moveq   #8,d6
                lsl.l   d5,d6
                move.l  d6,d1
                addq.l  #8,d1
                move.l  d1,d0
                _NewHandle
                move.l  a0,var_4(a6)
                movea.l arg_0(a6),a0
                movea.l (a0),a4
                movea.l var_4(a6),a0
                movea.l (a0),a3
                moveq   #1,d0
                lsl.l   d5,d0
                move.l  d0,d4
                subq.l  #1,d4
                move.w  6(a4),d5
                subq.l  #4,sp
                _GetCTSeed
                move.l  (sp)+,(a3)
                move.w  d4,6(a3)
                move.w  4(a4),4(a3)
                movea.l a4,a1
                addq.l  #8,a1
                movea.l a1,a0
                movea.l a3,a2
                addq.l  #8,a2
                movea.l a2,a1
                move.l  d6,d0
                _BlockMoveData
                cmp.w   d4,d5
                bge.w   loc_FFC66342
                lea     8(a3),a4
                moveq   #0,d0
                move.l  d0,var_A(a6)
                clr.w   var_6(a6)
                move.w  d4,var_C(a6)
                ext.l   d4
                lea     (a4,d4.l*8),a0
                lea     var_C(a6),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                addq.w  #1,d5
                cmp.w   d4,d5
                bge.s   loc_FFC66342
                ext.l   d4
                ext.l   d5
                move.l  d4,d0
                sub.l   d5,d0
                move.l  #$FFFF,d1
                divs.l  d0,d1
                move.w  d1,d3
                clr.w   d6
                moveq   #$FFFFFFFF,d0
                move.l  d0,var_A(a6)
                move.w  #$FFFF,var_6(a6)
                move.w  d5,var_C(a6)
                ext.l   d5
                lea     (a4,d5.l*8),a0
                lea     var_C(a6),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                ext.l   d4
                move.l  d4,d7
                subq.l  #1,d7
                bra.s   loc_FFC6633C
; ---------------------------------------------------------------------------

loc_FFC6631C:                           ; CODE XREF: sub_FFC66260+E0↓j
                add.w   d3,d6
                move.w  d6,var_A(a6)
                move.w  d6,var_A+2(a6)
                move.w  d6,var_6(a6)
                move.w  d7,var_C(a6)
                lea     (a4,d7.l*8),a0
                lea     var_C(a6),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                subq.l  #1,d7

loc_FFC6633C:                           ; CODE XREF: sub_FFC66260+BA↑j
                ext.l   d5
                cmp.l   d7,d5
                blt.s   loc_FFC6631C

loc_FFC66342:                           ; CODE XREF: sub_FFC66260+56↑j
                                        ; sub_FFC66260+7E↑j
                move.l  var_4(a6),d0
                movem.l var_2E(a6),d3-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFC66260


; =============== S U B R O U T I N E =======================================


sub_FFC66350:                           ; CODE XREF: sub_FFC66360+1E↓p
                movea.l ($2038).w,a1
                movea.l $140(a1),a1
                jmp     (a1)
; End of function sub_FFC66350

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC66360:                           ; DATA XREF: ROM:FFC06A14↑o

var_C           = -$C
arg_0           =  8
arg_2           =  $A
arg_6           =  $E

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_6(a6),a4
                movea.l $76(a4),a0
                movea.l $2A(a0),a3
                move.w  $20(a0),d7
                ext.l   d7
                move.l  d7,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFC66350
                move.l  d0,$7A(a4)
                tst.l   arg_2(a6)
                beq.s   loc_FFC66398
                moveq   #1,d0
                and.w   arg_0(a6),d0
                bne.s   loc_FFC66398
                clr.w   d7
                bra.s   loc_FFC6639C
; ---------------------------------------------------------------------------

loc_FFC66398:                           ; CODE XREF: sub_FFC66360+2A↑j
                                        ; sub_FFC66360+32↑j
                move.w  $60(a4),d7

loc_FFC6639C:                           ; CODE XREF: sub_FFC66360+36↑j
                move.w  d7,$6C(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC65C84
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #$A
; End of function sub_FFC66360


; =============== S U B R O U T I N E =======================================


sub_FFC663B2:                           ; CODE XREF: sub_FFC663C0+58↓p
                movea.l ($2038).w,a1
                movea.l $144(a1),a1
                jmp     (a1)
; End of function sub_FFC663B2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC663C0:                           ; DATA XREF: ROM:FFC06A18↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                move.w  arg_A(a6),d7
                movea.l arg_0(a6),a4
                move.w  d7,$68(a4)
                move.l  a3,$7E(a4)
                cmpi.w  #4,d7
                ble.s   loc_FFC663EE
                moveq   #0,d0
                move.w  $5E(a4),d0
                moveq   #3,d1
                cmp.l   d0,d1
                bne.s   loc_FFC66406

loc_FFC663EE:                           ; CODE XREF: sub_FFC663C0+20↑j
                cmpi.w  #4,d7
                bne.s   loc_FFC66430
                tst.w   $62(a4)
                bne.s   loc_FFC66430
                moveq   #0,d0
                move.w  $5E(a4),d0
                moveq   #1,d1
                and.w   d0,d1
                bne.s   loc_FFC66430

loc_FFC66406:                           ; CODE XREF: sub_FFC663C0+2C↑j
                movea.l $76(a4),a0
                move.w  $20(a0),$6A(a4)
                move.l  a4,-(sp)
                move.l  a3,-(sp)
                move.w  arg_8(a6),-(sp)
                jsr     sub_FFC663B2
                move.l  a4,-(sp)
                jsr     sub_FFC64A02
                movea.l $7A(a4),a0
                _DisposeHandle
                moveq   #0,d0
                move.l  d0,$7A(a4)
                bra.s   loc_FFC66442
; ---------------------------------------------------------------------------

loc_FFC66430:                           ; CODE XREF: sub_FFC663C0+32↑j
                                        ; sub_FFC663C0+38↑j ...
                move.w  #1,$6A(a4)
                moveq   #0,d0
                move.l  d0,$7A(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC64C4E

loc_FFC66442:                           ; CODE XREF: sub_FFC663C0+6E↑j
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC663C0


; =============== S U B R O U T I N E =======================================


sub_FFC6644E:                           ; CODE XREF: sub_FFC66460+106↓p
                                        ; sub_FFC66460+130↓p ...
                movea.l ($2038).w,a1
                movea.l $148(a1),a1
                jmp     (a1)
; End of function sub_FFC6644E

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

sub_FFC66460:                           ; DATA XREF: ROM:FFC06A1C↑o

var_12E         = -$12E
var_112         = -$112
var_10A         = -$10A
var_102         = -$102
var_CA          = -$CA
var_C2          = -$C2
var_BE          = -$BE
var_B6          = -$B6
var_A4          = -$A4
var_A2          = -$A2
var_A0          = -$A0
var_9E          = -$9E
var_9C          = -$9C
var_92          = -$92
var_90          = -$90
var_8C          = -$8C
arg_0           =  8
arg_4           =  $C
arg_6           =  $E
arg_8           =  $10
arg_C           =  $14

                link    a6,#-$116
                movem.l d5-d7/a2-a4,-(sp)
                movea.l arg_8(a6),a3
                move.w  arg_6(a6),d6
                move.w  arg_4(a6),d7
                movea.l arg_0(a6),a4
                tst.w   d6
                bne.s   loc_FFC664C2
                tst.w   d7
                bne.s   loc_FFC664C2
                pea     var_112(a6)
                move.w  #$40D,d0
                _PaletteDispatch
                pea     var_10A(a6)
                move.w  #$40E,d0
                _PaletteDispatch
                moveq   #$21,d0 ; '!'
                move.l  d0,-(sp)
                _ForeColor
                moveq   #$1E,d0
                move.l  d0,-(sp)
                _BackColor
                move.l  a3,-(sp)
                move.l  a4,-(sp)
                _PlotCIcon
                pea     var_112(a6)
                move.w  #$40F,d0
                _PaletteDispatch
                pea     var_10A(a6)
                move.w  #$410,d0
                _PaletteDispatch
                clr.w   arg_C(a6)
                bra.w   loc_FFC665BA
; ---------------------------------------------------------------------------

loc_FFC664C2:                           ; CODE XREF: sub_FFC66460+1A↑j
                                        ; sub_FFC66460+1E↑j
                movea.l a4,a0
                _HGetState
                move.b  d0,d5
                movea.l a4,a0
                _HLock
                move.w  #$80,var_92(a6)
                movea.l a4,a0
                _GetHandleSize
                move.l  d0,var_90(a6)
                lea     var_B6(a6),a0
                movea.l a3,a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  (a4),var_8C(a6)
                moveq   #3,d0
                and.w   d7,d0
                move.w  d0,var_A4(a6)
                move.w  #$F00,d0
                and.w   d7,d0
                lsr.w   #8,d0
                move.w  d0,var_A2(a6)
                move.w  #$4000,d0
                and.w   d7,d0
                move.w  d0,var_A0(a6)
                clr.w   var_9E(a6)
                pea     var_102(a6)
                jsr     sub_FFC66250
                tst.w   d6
                addq.w  #4,sp
                beq.s   loc_FFC66522
                pea     var_102(a6)
                move.w  d6,-(sp)
                jsr     sub_FFC63DB4

loc_FFC66522:                           ; CODE XREF: sub_FFC66460+B6↑j
                move.l  var_90(a6),-(sp)
                pea     var_CA(a6)
                pea     var_B6(a6)
                jsr     sub_FFC63C10
                movea.l var_C2(a6),a0
                tst.w   4(a0)
                bge.s   loc_FFC66596
                tst.w   var_9C(a6)
                beq.s   loc_FFC66580
                jsr     sub_FFC6397C
                movea.l d0,a2
                movea.l $260(a2),a3
                move.l  a3,d0
                beq.s   loc_FFC6656C
                movea.l (a3),a0
                movea.l $16(a0),a0
                movea.l (a0),a0
                move.w  $20(a0),-(sp)
                moveq   #0,d0
                move.w  d0,-(sp)
                move.l  a3,-(sp)
                pea     var_102(a6)
                jsr     sub_FFC6644E
                bra.s   loc_FFC665A8
; ---------------------------------------------------------------------------

loc_FFC6656C:                           ; CODE XREF: sub_FFC66460+EE↑j
                move.l  var_90(a6),-(sp)
                pea     sub_FFC6644E(pc)
                pea     var_102(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                _DeviceLoop
                bra.s   loc_FFC665A8
; ---------------------------------------------------------------------------

loc_FFC66580:                           ; CODE XREF: sub_FFC66460+E0↑j
                moveq   #8,d0
                move.w  d0,-(sp)
                moveq   #0,d0
                move.w  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_102(a6)
                jsr     sub_FFC6644E
                bra.s   loc_FFC665A8
; ---------------------------------------------------------------------------

loc_FFC66596:                           ; CODE XREF: sub_FFC66460+DA↑j
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_102(a6)
                jsr     sub_FFC6644E

loc_FFC665A8:                           ; CODE XREF: sub_FFC66460+10A↑j
                                        ; sub_FFC66460+11E↑j ...
                movea.l a4,a0
                move.b  d5,d0
                _HSetState
                move.l  var_90(a6),-(sp)
                _DisposeRgn
                movea.l var_BE(a6),a0
                _DisposeHandle

loc_FFC665BA:                           ; CODE XREF: sub_FFC66460+5E↑j
                movem.l var_12E(a6),d5-d7/a2-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFC66460


; =============== S U B R O U T I N E =======================================


sub_FFC665C6:                           ; DATA XREF: ROM:FFC6393C↑o
                movea.l ($2038).w,a1
                movea.l $14C(a1),a1
                jmp     (a1)
; End of function sub_FFC665C6

