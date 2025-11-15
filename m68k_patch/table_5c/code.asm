
; =============== S U B R O U T I N E =======================================


sub_FFC20090:                           ; DATA XREF: ROM:FFC073E0↑o
                btst    #7,($B22).w
                bne.s   loc_FFC2009C
                moveq   #0,d0
                rts
; ---------------------------------------------------------------------------

loc_FFC2009C:                           ; CODE XREF: sub_FFC20090+6↑j
                movem.l d1-d7/a0-a6,-(sp)
                move.b  d0,-(sp)
                moveq   #7,d5

loc_FFC200A4:                           ; CODE XREF: sub_FFC20090:loc_FFC200B4↓j
                btst    d5,(sp)
                beq.s   loc_FFC200B4
                btst    d5,($B2E).w
                bne.s   loc_FFC200B4
                bsr.s   sub_FFC200C4
                beq.s   loc_FFC200B4
                bclr    d5,(sp)

loc_FFC200B4:                           ; CODE XREF: sub_FFC20090+16↑j
                                        ; sub_FFC20090+1C↑j ...
                dbf     d5,loc_FFC200A4
                moveq   #0,d0
                move.b  (sp)+,d0
                movem.l (sp)+,d1-d7/a0-a6
                tst.w   d0
                rts
; End of function sub_FFC20090


; =============== S U B R O U T I N E =======================================


sub_FFC200C4:                           ; CODE XREF: sub_FFC20090+1E↑p

var_218         = -$218
var_20E         = -$20E
var_20A         = -$20A
var_208         = -$208

                move.l  d3,-(sp)
                link    a6,#-$212
                movea.l sp,a2
                swap    d3
                moveq   #0,d0
                move.b  d3,d0
                move.w  d0,-$A(a6)
                moveq   #0,d3
                moveq   #1,d2
                move.w  #$200,d4
                bsr.w   sub_FFC20246
                bne.w   loc_FFC2018A
                cmpi.w  #$4552,(sp)
                bne.w   loc_FFC20192
                move.w  $21A+var_218(sp),d4
                move.w  $21A+var_20A(sp),d0
                beq.w   loc_FFC20192
                lea     $21A+var_208(sp),a0
                move.l  $21A+var_20E(sp),d7

loc_FFC20102:                           ; CODE XREF: sub_FFC200C4+4C↓j
                move.w  -$A(a6),d1
                cmp.w   6(a0),d1
                beq.s   loc_FFC20116
                addq.l  #8,a0
                subq.w  #1,d0
                bne.s   loc_FFC20102
                bra.w   loc_FFC20192
; ---------------------------------------------------------------------------

loc_FFC20116:                           ; CODE XREF: sub_FFC200C4+46↑j
                bset    d5,($B2E).w
                move.l  (a0),d3
                move.l  d3,-4(a6)
                moveq   #0,d2
                move.w  4(a0),d2
                move.l  d2,-8(a6)
                move.l  d4,d0
                mulu.w  d2,d0
                _NewPtrSys
                bne.s   loc_FFC20192
                movea.l a0,a3
                movea.l a0,a2
                bsr.w   sub_FFC20246
                bne.s   loc_FFC2018E
                moveq   #1,d3
                move.l  d3,-$12(a6)
                moveq   #1,d2
                move.w  #$200,d4
                movea.l sp,a2
                bsr.w   sub_FFC20246
                bne.s   loc_FFC2018E
                cmpi.w  #1,-$A(a6)
                bne.s   loc_FFC2016E
                cmpi.w  #$5453,(a2)
                beq.s   loc_FFC2016E
                cmpi.w  #$504D,(a2)
                bne.s   loc_FFC2016E
                move.l  4(a2),d0
                move.l  d0,-$E(a6)
                bra.s   loc_FFC2019C
; ---------------------------------------------------------------------------

loc_FFC2016E:                           ; CODE XREF: sub_FFC200C4+92↑j
                                        ; sub_FFC200C4+98↑j ...
                movea.l a2,a0
                or.l    d6,d5
                jsr     (a3)
                andi.l  #$FFFFFF,d5
                movea.l ($2A6).w,a0
                move.l  a0,($118).w
                move.l  a0,($2AA).w
                move.l  (a0),($114).w

loc_FFC2018A:                           ; CODE XREF: sub_FFC200C4+1E↑j
                moveq   #0,d0
                bra.s   loc_FFC20194
; ---------------------------------------------------------------------------

loc_FFC2018E:                           ; CODE XREF: sub_FFC200C4+76↑j
                                        ; sub_FFC200C4+8A↑j ...
                movea.l a3,a0
                _DisposePtr

loc_FFC20192:                           ; CODE XREF: sub_FFC200C4+26↑j
                                        ; sub_FFC200C4+32↑j ...
                moveq   #$FFFFFFFF,d0

loc_FFC20194:                           ; CODE XREF: sub_FFC200C4+C8↑j
                unlk    a6
                move.l  (sp)+,d3
                tst.w   d0
                rts
; ---------------------------------------------------------------------------

loc_FFC2019C:                           ; CODE XREF: sub_FFC200C4+A8↑j
                                        ; sub_FFC200C4+13A↓j
                cmpi.l  #'Appl',$30(a2)
                bne.s   loc_FFC201E0
                cmpi.l  #'e_Dr',$34(a2)
                bne.s   loc_FFC201E0
                cmpi.l  #'iver',$38(a2)
                bne.s   loc_FFC201E0
                cmpi.l  #'Maci',$10(a2)
                bne.s   loc_FFC201E0
                move.l  -4(a6),d0
                cmp.l   8(a2),d0
                bne.s   loc_FFC201E0
                movea.l a3,a0
                move.l  $60(a2),d1
                bsr.w   sub_FFC20318
                cmp.l   $74(a2),d0
                beq.s   loc_FFC20200
                bra.s   loc_FFC2018E
; ---------------------------------------------------------------------------

loc_FFC201E0:                           ; CODE XREF: sub_FFC200C4+E0↑j
                                        ; sub_FFC200C4+EA↑j ...
                addq.l  #1,-$12(a6)
                move.l  -$12(a6),d3
                cmp.l   -$E(a6),d3
                bhi.s   loc_FFC20200
                moveq   #1,d2
                move.w  #$200,d4
                bsr.s   sub_FFC20246
                bne.s   loc_FFC201E0
                cmpi.w  #$504D,(a2)
                bne.s   loc_FFC201E0
                bra.s   loc_FFC2019C
; ---------------------------------------------------------------------------

loc_FFC20200:                           ; CODE XREF: sub_FFC200C4+118↑j
                                        ; sub_FFC200C4+128↑j
                moveq   #0,d0
                move.l  d0,-$12(a6)

loc_FFC20206:                           ; CODE XREF: sub_FFC200C4+15A↓j
                                        ; sub_FFC200C4+160↓j ...
                addq.l  #1,-$12(a6)
                move.l  -$12(a6),d3
                cmp.l   -$E(a6),d3
                bhi.w   loc_FFC2018E
                moveq   #1,d2
                move.w  #$200,d4
                bsr.s   sub_FFC20246
                bne.s   loc_FFC20206
                cmpi.w  #$504D,(a2)
                bne.s   loc_FFC20206
                cmpi.l  #$4170706C,$30(a2)
                bne.s   loc_FFC20206
                cmpi.l  #$655F4846,$34(a2)
                bne.s   loc_FFC20206
                cmpi.b  #$53,$38(a2) ; 'S'
                bne.s   loc_FFC20206
                bra.w   loc_FFC2016E
; End of function sub_FFC200C4


; =============== S U B R O U T I N E =======================================


sub_FFC20246:                           ; CODE XREF: sub_FFC200C4+1A↑p
                                        ; sub_FFC200C4+72↑p ...
                move.l  d6,-(sp)
                move.l  d7,-(sp)
                moveq   #0,d7
                swap    d2
                move.w  d4,d2

loc_FFC20250:                           ; CODE XREF: sub_FFC20246+BA↓j
                lea     ($9FA).w,a0
                move.b  #8,(a0)+
                swap    d3
                andi.b  #$1F,d3
                move.b  d3,(a0)+
                swap    d3
                move.w  d3,(a0)+
                move.l  d2,d4
                swap    d4
                move.b  d4,(a0)+
                clr.b   (a0)+
                mulu.w  d2,d4
                suba.w  #$14,sp
                move.l  sp,d6
                subq.l  #2,sp
                move.w  #1,-(sp)
                _SCSIDispatch
                move.w  (sp),d7
                bne.w   loc_FFC20304
                move.w  d5,-(sp)
                move.w  #2,-(sp)
                _SCSIDispatch
                move.w  (sp),d7
                bne.w   loc_FFC20304
                pea     ($9FA).w
                move.w  #6,-(sp)
                move.w  #3,-(sp)
                _SCSIDispatch
                move.w  (sp),d7
                bne.s   loc_FFC202BA
                movea.l d6,a0
                move.w  #1,(a0)+
                move.l  a2,(a0)+
                move.l  d4,(a0)+
                move.w  #7,(a0)
                move.l  d6,-(sp)
                move.w  #5,-(sp)
                _SCSIDispatch
                move.w  (sp),d7

loc_FFC202BA:                           ; CODE XREF: sub_FFC20246+5A↑j
                pea     ($9FA).w
                pea     ($9FC).w
                move.l  #$3C,-(sp) ; '<'
                move.w  #4,-(sp)
                _SCSIDispatch
                tst.w   d7
                beq.s   loc_FFC202D8
                cmpi.w  #5,d7
                beq.s   loc_FFC202E0

loc_FFC202D8:                           ; CODE XREF: sub_FFC20246+8A↑j
                move.w  (sp),d7
                cmpi.w  #$A,d7
                bne.s   loc_FFC20304

loc_FFC202E0:                           ; CODE XREF: sub_FFC20246+90↑j
                move.w  ($9FA).w,d7
                beq.s   loc_FFC20304
                cmpi.w  #2,d7
                beq.s   loc_FFC202F6
                cmpi.w  #8,d7
                bne.l   loc_FFC20304

loc_FFC202F6:                           ; CODE XREF: sub_FFC20246+A4↑j
                bset    #$1F,d7
                bne.s   loc_FFC20304
                lea     $16(sp),sp
                bra.w   loc_FFC20250
; ---------------------------------------------------------------------------

loc_FFC20304:                           ; CODE XREF: sub_FFC20246+38↑j
                                        ; sub_FFC20246+46↑j ...
                jsr     ([$6F4])
                lea     $16(sp),sp
                move.w  d7,d0
                move.l  (sp)+,d7
                move.l  (sp)+,d6
                tst.w   d0
                rts
; End of function sub_FFC20246


; =============== S U B R O U T I N E =======================================


sub_FFC20318:                           ; CODE XREF: sub_FFC200C4+110↑p
                moveq   #0,d0
                moveq   #0,d7
                bra.s   loc_FFC20324
; ---------------------------------------------------------------------------

loc_FFC2031E:                           ; CODE XREF: sub_FFC20318:loc_FFC20324↓j
                move.b  (a0)+,d7
                add.w   d7,d0
                rol.w   #1,d0

loc_FFC20324:                           ; CODE XREF: sub_FFC20318+4↑j
                dbf     d1,loc_FFC2031E
                tst.w   d0
                bne.s   locret_FFC2032E
                subq.w  #1,d0

locret_FFC2032E:                        ; CODE XREF: sub_FFC20318+12↑j
                rts
; End of function sub_FFC20318


; =============== S U B R O U T I N E =======================================


sub_FFC20330:                           ; CODE XREF: sub_FFC02966+48↑p
                                        ; sub_FFC02A58+70↑p
                move.l  ([$205C],$10),-(sp)
                rts
; End of function sub_FFC20330

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_FFC20340:                           ; DATA XREF: ROM:FFC0756C↑o
                moveq   #$C,d0
                _SysError

loc_FFC20344:                           ; CODE XREF: sub_FFC20340:loc_FFC20344↓j
                bra.s   loc_FFC20344
; End of function sub_FFC20340


; =============== S U B R O U T I N E =======================================


sub_FFC20346:                           ; DATA XREF: ROM:FFC073D4↑o
                                        ; ROM:FFC073D8↑o ...
                move.l  ([$205C],$19C),-(sp)
                rts
; End of function sub_FFC20346


; =============== S U B R O U T I N E =======================================


sub_FFC20350:                           ; DATA XREF: ROM:FFC075A4↑o
                bsr.s   sub_FFC20382
                move.w  d1,d0
                swap    d0
                clr.w   d0
                exg     d0,a0
                moveq   #$A,d0
                _HWPriv
                exg     d0,a0
                move.b  ($B2E).w,d0
                and.b   d1,d0
                cmp.b   d1,d0
                beq.s   loc_FFC2037A
                move.w  #$FF,d0
                swap    d0
                move.w  d1,d0
                exg     d0,a0
                moveq   #$A,d0
                _HWPriv
                exg     d0,a0

loc_FFC2037A:                           ; CODE XREF: sub_FFC20350+18↑j
                bsr.w   sub_FFC20408
                bsr.s   sub_FFC203A2
                rts
; End of function sub_FFC20350


; =============== S U B R O U T I N E =======================================


sub_FFC20382:                           ; CODE XREF: sub_FFC20350↑p
                moveq   #0,d1
                lea     -2(sp),sp
                movea.l sp,a0
                move.l  #$10089,d0
                _ReadXPRam
                move.b  (sp)+,d1
                lsr.b   #2,d1
                lsl.b   #1,d1
                bsr.s   sub_FFC203E2
                beq.s   locret_FFC203A0
                bset    #0,d1

locret_FFC203A0:                        ; CODE XREF: sub_FFC20382+18↑j
                rts
; End of function sub_FFC20382


; =============== S U B R O U T I N E =======================================


sub_FFC203A2:                           ; CODE XREF: sub_FFC20350+2E↑p
                bsr.s   sub_FFC203E2
                btst    #0,d1
                beq.s   loc_FFC203B0
                bset    #6,d2
                bra.s   loc_FFC203B4
; ---------------------------------------------------------------------------

loc_FFC203B0:                           ; CODE XREF: sub_FFC203A2+6↑j
                bclr    #6,d2

loc_FFC203B4:                           ; CODE XREF: sub_FFC203A2+C↑j
                bsr.s   sub_FFC203F8
                lea     -2(sp),sp
                movea.l sp,a0
                move.l  #$10089,d0
                _ReadXPRam
                move.b  (sp)+,d0
                andi.b  #$FE,d1
                lsl.b   #1,d1
                andi.b  #3,d0
                or.b    d0,d1
                move.b  d1,-(sp)
                movea.l sp,a0
                move.l  #$10089,d0
                _WriteXPRam
                move.b  (sp)+,d1
                rts
; End of function sub_FFC203A2


; =============== S U B R O U T I N E =======================================


sub_FFC203E2:                           ; CODE XREF: sub_FFC20382+16↑p
                                        ; sub_FFC203A2↑p
                lea     -2(sp),sp
                movea.l sp,a0
                move.l  #$1008A,d0
                _ReadXPRam
                move.b  (sp)+,d2
                btst    #6,d2
                rts
; End of function sub_FFC203E2


; =============== S U B R O U T I N E =======================================


sub_FFC203F8:                           ; CODE XREF: sub_FFC203A2:loc_FFC203B4↑p
                move.b  d2,-(sp)
                movea.l sp,a0
                move.l  #$1008A,d0
                _WriteXPRam
                move.w  (sp)+,d2
                rts
; End of function sub_FFC203F8


; =============== S U B R O U T I N E =======================================


sub_FFC20408:                           ; CODE XREF: sub_FFC20350:loc_FFC2037A↑p
                bsr.s   sub_FFC2043C
                btst    #0,($B22).w
                beq.s   locret_FFC2043A
                subq.l  #2,sp
                movea.l sp,a0
                move.l  #$10003,d0
                _ReadXPRam
                move.b  (sp),d0
                andi.b  #$78,d0 ; 'x'
                cmpi.b  #$48,d0 ; 'H'
                beq.s   loc_FFC2042E
                addq.w  #2,sp
                bra.s   locret_FFC2043A
; ---------------------------------------------------------------------------

loc_FFC2042E:                           ; CODE XREF: sub_FFC20408+20↑j
                move.b  (sp)+,d0
                andi.w  #7,d0
                moveq   #0,d3
                bset    d0,d3
                and.b   d3,d1

locret_FFC2043A:                        ; CODE XREF: sub_FFC20408+8↑j
                                        ; sub_FFC20408+24↑j
                rts
; End of function sub_FFC20408


; =============== S U B R O U T I N E =======================================


sub_FFC2043C:                           ; CODE XREF: sub_FFC20408↑p
                clr.b   d1
                movea.l ($30A).w,a0

loc_FFC20442:                           ; CODE XREF: sub_FFC2043C+2C↓j
                move.b  -3(a0),d0
                andi.b  #$F,d0
                cmpi.b  #8,d0
                bne.s   loc_FFC20464
                move.w  8(a0),d0
                not.w   d0
                subi.w  #$20,d0 ; ' '
                blt.s   loc_FFC20464
                cmpi.b  #7,d0
                bgt.s   loc_FFC20464
                bset    d0,d1

loc_FFC20464:                           ; CODE XREF: sub_FFC2043C+12↑j
                                        ; sub_FFC2043C+1E↑j ...
                movea.l (a0),a0
                move.l  a0,d3
                bne.s   loc_FFC20442
                rts
; End of function sub_FFC2043C

; ---------------------------------------------------------------------------
                move.l  ([$205C],$1D4),-(sp)
                rts
; ---------------------------------------------------------------------------
