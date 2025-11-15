
; =============== S U B R O U T I N E =======================================


sub_FFCC9DE0:                           ; CODE XREF: sub_FFC352B0↑j
                movea.l (sp)+,a1
                movea.l sp,a0
                moveq   #$D,d0
                _PPC
                addq.l  #8,sp
                move.w  d0,(sp)
                jmp     (a1)
; End of function sub_FFCC9DE0

; ---------------------------------------------------------------------------
