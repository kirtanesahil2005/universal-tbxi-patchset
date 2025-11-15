
; =============== S U B R O U T I N E =======================================


sub_FFCC9CB0:                           ; CODE XREF: sub_FFCC9CD0+4↓p
                                        ; sub_FFCC9D00+2↓p

arg_0           =  4

                moveq   #0,d1
                move.b  ($291).w,d0
                bmi.s   loc_FFCC9CC2
                andi.b  #$F,d0
                subq.b  #1,d0
                bne.s   loc_FFCC9CC2
                moveq   #1,d1

loc_FFCC9CC2:                           ; CODE XREF: sub_FFCC9CB0+6↑j
                                        ; sub_FFCC9CB0+E↑j
                move.b  d1,arg_0(sp)
                rts
; End of function sub_FFCC9CB0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFCC9D00:                           ; CODE XREF: sub_FFC30210↑j

arg_0           =  4

                clr.w   -(sp)
                jsr     sub_FFCC9CB0
                clr.w   d0
                tst.b   (sp)+
                bne.s   loc_FFCC9D3E
                move.b  ($291).w,d1
                bmi.s   loc_FFCC9D16
                moveq   #$FFFFFF9F,d0
                bra.s   loc_FFCC9D3E
; ---------------------------------------------------------------------------

loc_FFCC9D16:                           ; CODE XREF: sub_FFCC9D00+10↑j
                move.b  ($1FB).w,d0
                andi.b  #$F,d0
                subq.b  #1,d0
                ble.s   loc_FFCC9D26
                moveq   #$FFFFFF9E,d0
                bra.s   loc_FFCC9D3E
; ---------------------------------------------------------------------------

loc_FFCC9D26:                           ; CODE XREF: sub_FFCC9D00+20↑j
                suba.w  #$32,sp ; '2'
                movea.l sp,a0
                lea     unk_FFCC9C0E(pc),a1
                move.l  a1,$12(a0)
                clr.b   $1B(a0)
                _Open
                lea     $32(sp),sp

loc_FFCC9D3E:                           ; CODE XREF: sub_FFCC9D00+A↑j
                                        ; sub_FFCC9D00+14↑j ...
                move.w  d0,arg_0(sp)
                rts
; End of function sub_FFCC9D00

; ---------------------------------------------------------------------------
