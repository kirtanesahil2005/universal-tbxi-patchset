
; =============== S U B R O U T I N E =======================================


sub_FFCC9DF0:                           ; CODE XREF: sub_FFC3F380↑j
                move.l  (sp)+,d0
                move.w  #$503,-(sp)
                movea.l sp,a0
                move.l  d0,-(sp)
                _CommToolboxDispatch
                movea.l (sp)+,a0
                addq.w  #6,sp
                jmp     (a0)
; End of function sub_FFCC9DF0

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


sub_FFCC9E10:                           ; CODE XREF: sub_FFC3EFF0↑j
                move.l  (sp)+,d0
                move.w  #$50D,-(sp)
                movea.l sp,a0
                move.l  d0,-(sp)
                _CommToolboxDispatch
                movea.l (sp)+,a0
                addq.w  #6,sp
                jmp     (a0)
; End of function sub_FFCC9E10

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


sub_FFCC9E30:                           ; CODE XREF: sub_FFC3EFE0↑j
                move.l  (sp)+,d0
                move.w  #$514,-(sp)
                movea.l sp,a0
                move.l  d0,-(sp)
                _CommToolboxDispatch
                movea.l (sp)+,a0
                addq.w  #4,sp
                move.w  d0,(sp)
                jmp     (a0)
; End of function sub_FFCC9E30

; ---------------------------------------------------------------------------
