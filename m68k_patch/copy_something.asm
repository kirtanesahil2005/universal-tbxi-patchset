
; =============== S U B R O U T I N E =======================================


sub_FFCC9AF0:                           ; CODE XREF: sub_FFC33450↑j
                                        ; sub_FFC4C2A0↑j ...

arg_C           =  $10

                movem.l d0/a0-a1,-(sp)
                moveq   #$1C,d0
                bsr.s   sub_FFCC9B12
                move.w  #$18,d0
                bsr.s   sub_FFCC9B12
                move.w  #$14,d0
                bsr.s   sub_FFCC9B12
                movem.l (sp)+,d0/a0-a1
                move.l  (sp),arg_C(sp)
                adda.w  #$10,sp
                rts
; End of function sub_FFCC9AF0


; =============== S U B R O U T I N E =======================================


sub_FFCC9B12:                           ; CODE XREF: sub_FFCC9AF0+6↑p
                                        ; sub_FFCC9AF0+C↑p ...

arg_1C          =  $20

                movea.l (sp,d0.w),a0
                moveq   #0,d0
                move.b  (a0),d0
                addq.l  #1,d0
                movea.l arg_1C(sp),a1
                add.l   d0,arg_1C(sp)
                _BlockMove
                rts
; End of function sub_FFCC9B12

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


sub_FFCC9B30:                           ; CODE XREF: sub_FFC35C20↑j

arg_0           =  4
arg_2           =  6

                movem.l d0/a0-a3,-(sp)
                move.w  $14+arg_0(sp),d0
                movem.l $14+arg_2(sp),a0-a3
                clr.l   (a3)+
                move.b  d0,3(a3)
                pea     5(a3)
                pea     (a2)
                pea     (a1)
                pea     (a0)
                jsr     sub_FFCC9AF0
                movem.l (sp)+,d0/a0-a3
                move.l  (sp),$12(sp)
                adda.w  #$12,sp
                rts
; End of function sub_FFCC9B30

