
; =============== S U B R O U T I N E =======================================


sub_FFC0A8C0:                           ; CODE XREF: sub_FFC627D0↓p
                movea.l ($DD8).w,a1
                move.l  $40(a1),d0
                adda.l  d0,a1
                moveq   #0,d0
                move.w  -2(a1),d0
                asl.l   #2,d0
                addi.l  #$10,d0
                _NewPtrSysClear
                adda.w  #$10,a0
                move.l  a0,([$2B6],$1AA)
                move.b  #4,-5(a0)
                move.w  -2(a1),d0
                move.w  d0,-2(a0)
                subq.w  #1,d0
                move.l  a1,d1

loc_FFC0A8F8:                           ; CODE XREF: sub_FFC0A8C0+3C↓j
                move.l  (a1)+,(a0)
                add.l   d1,(a0)+
                dbf     d0,loc_FFC0A8F8
                movea.l d1,a1
                move.w  -2(a1),d0
                subq.w  #1,d0
                cmpi.w  #$10,d0
                bmi.s   loc_FFC0A934
                movem.l d1/a0,-(sp)
                movea.l ([$2B6],$1AA),a0
                move.w  -2(a0),d1
                cmpi.w  #$10,d1
                ble.s   loc_FFC0A930
                tst.l   $40(a0)
                beq.s   loc_FFC0A930
                movea.l $40(a0),a0
                jsr     (a0)

loc_FFC0A930:                           ; CODE XREF: sub_FFC0A8C0+62↑j
                                        ; sub_FFC0A8C0+68↑j
                movem.l (sp)+,d1/a0

loc_FFC0A934:                           ; CODE XREF: sub_FFC0A8C0+4C↑j
                moveq   #1,d0
                movem.l d1/a0,-(sp)
                movea.l ([$2B6],$1AA),a0
                move.w  -2(a0),d1
                cmpi.w  #$A,d1
                ble.s   loc_FFC0A958
                tst.l   $28(a0)
                beq.s   loc_FFC0A958
                movea.l $28(a0),a0
                jsr     (a0)

loc_FFC0A958:                           ; CODE XREF: sub_FFC0A8C0+8A↑j
                                        ; sub_FFC0A8C0+90↑j
                movem.l (sp)+,d1/a0
                rts
; End of function sub_FFC0A8C0

; ---------------------------------------------------------------------------
