
; =============== S U B R O U T I N E =======================================


sub_FFCC9FC0:                           ; CODE XREF: sub_FFC03540↑j
                                        ; sub_FFC300B0↑j ...

arg_0           =  4
arg_4           =  8

                movea.l arg_0(sp),a0
                movem.l arg_4(sp),d0-d1
                cmpi.l  #$13,d1
                blt.s   loc_FFCCA00C
                moveq   #0,d2
                move.b  d0,d2
                lsl.w   #8,d0
                or.w    d0,d2
                move.l  d2,d0
                swap    d2
                or.l    d2,d0
                move.l  a0,d2
                lsr.b   #1,d2
                bcc.s   loc_FFCC9FEA
                move.b  d0,(a0)+
                subq.l  #1,d1

loc_FFCC9FEA:                           ; CODE XREF: sub_FFCC9FC0+24↑j
                lsr.b   #1,d2
                bcc.s   loc_FFCC9FF2
                move.w  d0,(a0)+
                subq.l  #2,d1

loc_FFCC9FF2:                           ; CODE XREF: sub_FFCC9FC0+2C↑j
                move.l  d1,d2
                lsr.l   #4,d2
                subq.l  #1,d2

loc_FFCC9FF8:                           ; CODE XREF: sub_FFCC9FC0+42↓j
                move.l  d0,(a0)+
                move.l  d0,(a0)+
                move.l  d0,(a0)+
                move.l  d0,(a0)+
                subq.l  #1,d2
                bcc.s   loc_FFCC9FF8
                andi.w  #$F,d1
                bra.s   loc_FFCCA00C
; ---------------------------------------------------------------------------

loc_FFCCA00A:                           ; CODE XREF: sub_FFCC9FC0:loc_FFCCA00C↓j
                move.b  d0,(a0)+

loc_FFCCA00C:                           ; CODE XREF: sub_FFCC9FC0+10↑j
                                        ; sub_FFCC9FC0+48↑j
                dbf     d1,loc_FFCCA00A
                move.l  arg_0(sp),d0
                rts
; End of function sub_FFCC9FC0

; ---------------------------------------------------------------------------
