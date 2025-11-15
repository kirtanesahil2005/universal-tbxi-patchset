
; =============== S U B R O U T I N E =======================================


sub_FFCC9530:                           ; CODE XREF: sub_FFC09BC0↑j
                                        ; sub_FFC35740↑j ...
                move.l  (sp)+,d2
                movea.l (sp)+,a1
                move.l  (sp)+,d1
                link    a6,#0
                moveq   #$B,d0

loc_FFCC953C:                           ; CODE XREF: sub_FFCC9530+E↓j
                clr.l   -(sp)
                dbf     d0,loc_FFCC953C
                movea.l sp,a0
                move.l  d1,$12(a0)
                _Open
                move.w  $18(a0),(a1)
                unlk    a6
                move.w  d0,(sp)
                movea.l d2,a1
                jmp     (a1)
; End of function sub_FFCC9530

; ---------------------------------------------------------------------------
