
; =============== S U B R O U T I N E =======================================


sub_FFCC9EC0:                           ; CODE XREF: sub_FFC35570↑j
                                        ; sub_FFC537D0↑j ...

arg_0           =  4

                move.l  arg_0(sp),d0
                beq.s   locret_FFCC9EE2
                movea.l d0,a0
                movea.l d0,a1
                move.w  #$FF,d2

loc_FFCC9ECE:                           ; CODE XREF: sub_FFCC9EC0+14↓j
                move.b  (a0),d1
                move.b  d0,(a0)+
                move.b  d1,d0
                dbeq    d2,loc_FFCC9ECE
                move.l  a0,d1
                move.l  a1,d0
                sub.l   d0,d1
                subq.b  #1,d1
                move.b  d1,(a1)

locret_FFCC9EE2:                        ; CODE XREF: sub_FFCC9EC0+4↑j
                rts
; End of function sub_FFCC9EC0

; ---------------------------------------------------------------------------
