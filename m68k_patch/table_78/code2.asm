
; =============== S U B R O U T I N E =======================================


sub_FFC679D0:                           ; DATA XREF: ROM:FFC07C88↑o
                movea.l ($2B6).w,a0
                move.l  #$7FFF7FFF,$158(a0)
                move.l  #$80008000,$15C(a0)
                rts
; End of function sub_FFC679D0

