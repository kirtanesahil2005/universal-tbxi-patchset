
; =============== S U B R O U T I N E =======================================


sub_FFCC9520:                           ; CODE XREF: sub_FFC01C60↑j
                                        ; sub_FFC17190↑j ...
                movea.l (sp)+,a1
                movea.l (sp)+,a0
                _GetHandleSize
                move.l  d0,(sp)
                bpl.s   loc_FFCC952C
                clr.l   (sp)

loc_FFCC952C:                           ; CODE XREF: sub_FFCC9520+8↑j
                jmp     (a1)
; End of function sub_FFCC9520

; ---------------------------------------------------------------------------
