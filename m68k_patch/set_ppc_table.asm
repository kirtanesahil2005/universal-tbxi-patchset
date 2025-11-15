
; =============== S U B R O U T I N E =======================================


set_ppc_table:                          ; CODE XREF: sub_FFC086A0+60↓p
                lea     ppc_table(pc),a0
                move.l  a0,($2050).w
                rts
; End of function set_ppc_table

; ---------------------------------------------------------------------------
