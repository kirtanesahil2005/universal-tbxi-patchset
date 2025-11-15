
; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCC9880:                           ; CODE XREF: sub_FFC17FB0↑j
                                        ; sub_FFC30540↑j ...

arg_0           =  8
arg_2           =  $A
arg_4           =  $C

                link    a6,#0
                subq.w  #4,sp
                move.l  #'STR#',-(sp)
                move.w  arg_2(a6),-(sp)
                _GetResource
                movea.l arg_4(a6),a1
                clr.b   (a1)
                move.l  (sp)+,d0
                beq.s   loc_FFCC98BE
                movea.l d0,a0
                movea.l (a0),a0
                move.w  (a0)+,d0
                move.w  arg_0(a6),d1
                beq.s   loc_FFCC98BE
                cmp.w   d0,d1
                bhi.s   loc_FFCC98BE
                moveq   #0,d0

loc_FFCC98AE:                           ; CODE XREF: sub_FFCC9880+36↓j
                subq.w  #1,d1
                beq.s   loc_FFCC98B8
                move.b  (a0)+,d0
                adda.l  d0,a0
                bra.s   loc_FFCC98AE
; ---------------------------------------------------------------------------

loc_FFCC98B8:                           ; CODE XREF: sub_FFCC9880+30↑j
                move.b  (a0),d0
                addq.w  #1,d0
                _BlockMoveData

loc_FFCC98BE:                           ; CODE XREF: sub_FFCC9880+1A↑j
                                        ; sub_FFCC9880+26↑j ...
                unlk    a6
                movea.l (sp)+,a0
                addq.l  #8,sp
                jmp     (a0)
; End of function sub_FFCC9880

; ---------------------------------------------------------------------------
