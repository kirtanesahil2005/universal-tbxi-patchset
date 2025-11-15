
; =============== S U B R O U T I N E =======================================


sub_FFCC9DD0:                           ; CODE XREF: sub_FFC627C0↑j
                movea.l (sp)+,a0
                moveq   #$FFFFFFFF,d0
                tst.b   (sp)+
                sne     d0
                move.w  d0,($B9E).w
                jmp     (a0)
; End of function sub_FFCC9DD0

; ---------------------------------------------------------------------------
