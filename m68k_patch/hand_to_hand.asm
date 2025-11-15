
; =============== S U B R O U T I N E =======================================


sub_FFCC97B0:                           ; CODE XREF: sub_FFC5D450↑j

arg_0           =  4
arg_4           =  8

                movea.l arg_0(sp),a0
                movea.l (a0),a0
                _HandToHand
                movea.l arg_0(sp),a1
                move.l  a0,(a1)
                move.w  d0,arg_4(sp)
                move.l  (sp)+,(sp)
                rts
; End of function sub_FFCC97B0

; ---------------------------------------------------------------------------
