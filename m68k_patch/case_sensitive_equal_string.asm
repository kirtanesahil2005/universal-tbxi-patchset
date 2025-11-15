
; =============== S U B R O U T I N E =======================================


sub_FFCC95A0:                           ; CODE XREF: sub_FFC30840↑j
                                        ; sub_FFC4B260↑j ...

arg_0           =  4
arg_2           =  6
arg_4           =  8
arg_8           =  $C
arg_C           =  $10

                movea.l arg_8(sp),a0
                movea.l arg_4(sp),a1
                moveq   #0,d0
                move.b  (a0)+,d0
                swap    d0
                move.b  (a1)+,d0
                tst.b   arg_0(sp)
                beq.s   loc_FFCC95C4
                tst.b   arg_2(sp)
                beq.s   loc_FFCC95C0
                _CaseSensitiveEqualString
                bra.s   loc_FFCC95D0
; ---------------------------------------------------------------------------

loc_FFCC95C0:                           ; CODE XREF: sub_FFCC95A0+1A↑j
                _CmpString
                bra.s   loc_FFCC95D0
; ---------------------------------------------------------------------------

loc_FFCC95C4:                           ; CODE XREF: sub_FFCC95A0+14↑j
                tst.b   arg_2(sp)
                beq.s   loc_FFCC95CE
                _CaseAndMarkSensitiveEqualString
                bra.s   loc_FFCC95D0
; ---------------------------------------------------------------------------

loc_FFCC95CE:                           ; CODE XREF: sub_FFCC95A0+28↑j
                _MarkSensitiveEqualString

loc_FFCC95D0:                           ; CODE XREF: sub_FFCC95A0+1E↑j
                                        ; sub_FFCC95A0+22↑j ...
                eori.b  #1,d0
                move.b  d0,arg_C(sp)
                movea.l (sp)+,a0
                lea     $C(sp),sp
                jmp     (a0)
; End of function sub_FFCC95A0

