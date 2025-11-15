
; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC13090:                           ; CODE XREF: sub_FFC13070↑p
                link    a6,#0
                subq.l  #2,sp
                move.l  #'in64',-(sp)
                move.l  #'doub',-(sp)
                pea     sub_FFC130E0(pc)
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  d1,-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$A22,d0
                _Pack8                  ; Apple Event Manager
                subq.l  #2,sp
                move.l  #'mg64',-(sp)
                move.l  #'doub',-(sp)
                pea     sub_FFC130E0(pc)
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #0,d1
                move.b  d1,-(sp)
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$A22,d0
                _Pack8                  ; Apple Event Manager
                unlk    a6
                rts
; End of function sub_FFC13090


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC130E0:                           ; DATA XREF: sub_FFC13090+12↑o
                                        ; sub_FFC13090+36↑o

var_1A          = -$1A
var_16          = -$16
var_12          = -$12
var_10          = -$10
var_C           = -$C
var_8           = -8
arg_0           =  8
arg_10          =  $18
arg_14          =  $1C
arg_18          =  $20

                link    a6,#-$16
                move.l  a4,-(sp)
                movea.l arg_10(a6),a4
                moveq   #0,d0
                move.l  d0,var_16(a6)
                pea     var_16(a6)
                pea     var_12(a6)
                move.w  #$280E,-(sp)
                _Pack4                  ; SANE FP
                pea     var_12(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                cmpi.l  #'in64',arg_14(a6)
                bne.s   loc_FFC1313A
                move.l  a4,-(sp)
                jsr     sub_FFC13260
                move.w  d0,var_12(a6)
                move.l  d1,var_10(a6)
                move.l  a0,var_C(a6)
                pea     var_12(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                addq.w  #4,sp
                bra.s   loc_FFC1315C
; ---------------------------------------------------------------------------

loc_FFC1313A:                           ; CODE XREF: sub_FFC130E0+34↑j
                move.l  a4,-(sp)
                jsr     sub_FFC13190
                move.w  d0,var_12(a6)
                move.l  d1,var_10(a6)
                move.l  a0,var_C(a6)
                pea     var_12(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                addq.w  #4,sp

loc_FFC1315C:                           ; CODE XREF: sub_FFC130E0+58↑j
                subq.l  #2,sp
                move.l  #'doub',-(sp)
                pea     var_8(a6)
                moveq   #8,d0
                move.l  d0,-(sp)
                move.l  arg_0(a6),-(sp)
                move.w  #$825,d0
                _Pack8                  ; Apple Event Manager
                move.w  (sp)+,arg_18(a6)
                movea.l var_1A(a6),a4
                unlk    a6
                rtd     #$18
; End of function sub_FFC130E0

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

sub_FFC13190:                           ; CODE XREF: sub_FFC130E0+5C↑p
                                        ; sub_FFC13260+68↓p ...

var_30          = -$30
var_24          = -$24
var_20          = -$20
var_16          = -$16
var_12          = -$12
var_8           = -8
arg_0           =  8

                link    a6,#-$24
                movem.l d3/d7/a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.l  d0,var_16(a6)
                pea     var_16(a6)
                pea     var_12(a6)
                move.w  #$280E,-(sp)
                _Pack4                  ; SANE FP
                pea     var_12(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                clr.w   d7

loc_FFC131C0:                           ; CODE XREF: sub_FFC13190+A0↓j
                pea     var_8(a6)
                pea     var_12(a6)
                move.w  #$80E,-(sp)
                _Pack4                  ; SANE FP
                pea     unk_FFC13254(pc)
                pea     var_12(a6)
                move.w  #4,-(sp)
                _Pack4                  ; SANE FP
                pea     var_12(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                pea     var_8(a6)
                pea     var_12(a6)
                move.w  #$80E,-(sp)
                _Pack4                  ; SANE FP
                moveq   #0,d0
                move.w  (a4),d0
                move.l  d0,var_24(a6)
                pea     var_24(a6)
                pea     var_20(a6)
                move.w  #$280E,-(sp)
                _Pack4                  ; SANE FP
                pea     var_20(a6)
                pea     var_12(a6)
                clr.w   -(sp)
                _Pack4                  ; SANE FP
                pea     var_12(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                addq.w  #2,a4
                addq.w  #1,d7
                cmpi.w  #4,d7
                blt.s   loc_FFC131C0
                pea     var_8(a6)
                pea     var_12(a6)
                move.w  #$80E,-(sp)
                _Pack4                  ; SANE FP
                lea     var_12(a6),a0
                move.w  (a0)+,d0
                move.l  (a0)+,d1
                movea.l (a0),a0
                movem.l var_30(a6),d3/d7/a4
                unlk    a6
                rts
; End of function sub_FFC13190

; ---------------------------------------------------------------------------
unk_FFC13254:   dc.b $40 ; @            ; DATA XREF: sub_FFC13190+3E↑o
                dc.b  $F
                dc.b $80
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

sub_FFC13260:                           ; CODE XREF: sub_FFC130E0+38↑p

var_38          = -$38
var_28          = -$28
var_1E          = -$1E
var_1A          = -$1A
var_18          = -$18
var_14          = -$14
var_10          = -$10
var_8           = -8
arg_0           =  8

                link    a6,#-$28
                movem.l d3/d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                lea     var_10(a6),a4
                moveq   #0,d0
                move.l  d0,var_1E(a6)
                pea     var_1E(a6)
                pea     var_1A(a6)
                move.w  #$280E,-(sp)
                _Pack4                  ; SANE FP
                pea     var_1A(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                moveq   #0,d0
                move.w  (a3),d0
                move.w  #$8000,d1
                and.w   d0,d1
                moveq   #0,d0
                move.w  d1,d0
                tst.l   d0
                sne     d3
                neg.b   d3
                move.b  d3,d7
                beq.s   loc_FFC13328
                move.l  (a3),(a4)
                move.l  4(a3),4(a4)
                bls.s   loc_FFC132B6
                addq.l  #1,(a4)

loc_FFC132B6:                           ; CODE XREF: sub_FFC13260+52↑j
                moveq   #0,d0
                sub.l   (a4),d0
                move.l  d0,(a4)
                moveq   #0,d0
                sub.l   4(a4),d0
                move.l  d0,4(a4)
                move.l  a4,-(sp)
                jsr     sub_FFC13190
                move.w  d0,var_1A(a6)
                move.l  d1,var_18(a6)
                move.l  a0,var_14(a6)
                pea     var_1A(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                pea     var_8(a6)
                pea     var_1A(a6)
                move.w  #$80E,-(sp)
                _Pack4                  ; SANE FP
                lea     var_28(a6),a0
                lea     unk_FFC1336C(pc),a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.w  (a1)+,(a0)+
                eori.b  #$80,var_28(a6)
                pea     var_28(a6)
                pea     var_1A(a6)
                move.w  #4,-(sp)
                _Pack4                  ; SANE FP
                pea     var_1A(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                addq.w  #4,sp
                bra.s   loc_FFC1334A
; ---------------------------------------------------------------------------

loc_FFC13328:                           ; CODE XREF: sub_FFC13260+48↑j
                move.l  a3,-(sp)
                jsr     sub_FFC13190
                move.w  d0,var_1A(a6)
                move.l  d1,var_18(a6)
                move.l  a0,var_14(a6)
                pea     var_1A(a6)
                pea     var_8(a6)
                move.w  #$810,-(sp)
                _Pack4                  ; SANE FP
                addq.w  #4,sp

loc_FFC1334A:                           ; CODE XREF: sub_FFC13260+C6↑j
                pea     var_8(a6)
                pea     var_1A(a6)
                move.w  #$80E,-(sp)
                _Pack4                  ; SANE FP
                lea     var_1A(a6),a0
                move.w  (a0)+,d0
                move.l  (a0)+,d1
                movea.l (a0),a0
                movem.l var_38(a6),d3/d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC13260

; ---------------------------------------------------------------------------
unk_FFC1336C:   dc.b $3F ; ?            ; DATA XREF: sub_FFC13260+98↑o
                dc.b $FF
                dc.b $80
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
