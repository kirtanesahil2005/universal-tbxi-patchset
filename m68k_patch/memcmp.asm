
; =============== S U B R O U T I N E =======================================


sub_FFCC9F20:                           ; CODE XREF: sub_FFC31FD0↑j
                                        ; sub_FFC52230↑j

arg_0           =  4
arg_8           =  $C

                movem.l arg_0(sp),a0-a1
                move.l  arg_8(sp),d1
                cmp.b   d0,d0
                bra.s   loc_FFCC9F32
; ---------------------------------------------------------------------------

loc_FFCC9F2E:                           ; CODE XREF: sub_FFCC9F20+1A↓j
                swap    d1

loc_FFCC9F30:                           ; CODE XREF: sub_FFCC9F20:loc_FFCC9F32↓j
                cmpm.b  (a1)+,(a0)+

loc_FFCC9F32:                           ; CODE XREF: sub_FFCC9F20+C↑j
                dbne    d1,loc_FFCC9F30
                bne.s   loc_FFCC9F42
                swap    d1
                dbf     d1,loc_FFCC9F2E
                moveq   #0,d0
                rts
; ---------------------------------------------------------------------------

loc_FFCC9F42:                           ; CODE XREF: sub_FFCC9F20+16↑j
                moveq   #0,d1
                move.b  -(a1),d1
                moveq   #0,d0
                move.b  -(a0),d0
                sub.l   d1,d0
                rts
; End of function sub_FFCC9F20

; ---------------------------------------------------------------------------
