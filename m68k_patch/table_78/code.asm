; ---------------------------------------------------------------------------

loc_FFCAFE80:                           ; DATA XREF: ROM:ToolboxTraps↓o
                moveq   #0,d1
                move.w  d0,d1
                tst.w   d1
                blt.s   loc_FFCAFE8E
                cmpi.w  #$1A,d1
                bls.s   loc_FFCAFEA2

loc_FFCAFE8E:                           ; CODE XREF: ROM:FFCAFE86↑j
                moveq   #0,d1
                move.w  d0,d1
                lsr.w   #8,d1
                lsl.w   #1,d1
                moveq   #$FFFFFFCE,d0
                movea.l (sp)+,a0
                lea     (sp,d1.w),sp
                move.w  d0,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFCAFEA2:                           ; CODE XREF: ROM:FFCAFE8C↑j
                ext.w   d1              ; switch 26 cases
                asl.w   #1,d1
                move.w  jpt_FFCAFEAA(pc,d1.w),d0
                jmp     jpt_FFCAFEAA(pc,d0.w) ; switch jump
; ---------------------------------------------------------------------------
jpt_FFCAFEAA:   dc.w loc_FFCB079A-jpt_FFCAFEAA ; DATA XREF: ROM:FFCAFEA6↑r
                dc.w sub_FFCB092A-jpt_FFCAFEAA ; jump table for switch statement
                dc.w loc_FFCB0DDC-jpt_FFCAFEAA
                dc.w sub_FFCB0B80-jpt_FFCAFEAA
                dc.w loc_FFCB1000-jpt_FFCAFEAA
                dc.w loc_FFCB1142-jpt_FFCAFEAA
                dc.w loc_FFCB132E-jpt_FFCAFEAA
                dc.w sub_FFCB1202-jpt_FFCAFEAA
                dc.w loc_FFCB14A4-jpt_FFCAFEAA
                dc.w loc_FFCB1638-jpt_FFCAFEAA
                dc.w loc_FFCB171E-jpt_FFCAFEAA
                dc.w loc_FFCB1954-jpt_FFCAFEAA
                dc.w loc_FFCB1C44-jpt_FFCAFEAA
                dc.w sub_FFCB1D7C-jpt_FFCAFEAA
                dc.w sub_FFCB1F6C-jpt_FFCAFEAA
                dc.w loc_FFCB1FAE-jpt_FFCAFEAA
                dc.w sub_FFCB21DA-jpt_FFCAFEAA
                dc.w loc_FFCB22AA-jpt_FFCAFEAA
                dc.w loc_FFCB231E-jpt_FFCAFEAA
                dc.w loc_FFCB2378-jpt_FFCAFEAA
                dc.w loc_FFCAFFCE-jpt_FFCAFEAA
                dc.w loc_FFCB0274-jpt_FFCAFEAA
                dc.w loc_FFCB04A8-jpt_FFCAFEAA
                dc.w loc_FFCB23FA-jpt_FFCAFEAA
                dc.w loc_FFCB0758-jpt_FFCAFEAA
                dc.w loc_FFCB0EF4-jpt_FFCAFEAA
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCAFEF0:                           ; DATA XREF: ROM:FFC07B54↑o
                suba.w  #$A,sp
                pea     2(sp)
                move.w  #$3F,-(sp) ; '?'
                _OSDispatch
                tst.w   (sp)+
                bne.s   loc_FFCAFF58

loc_FFCAFF02:                           ; DATA XREF: ROM:FFC07B58↑o
                move.l  (sp),d0
                move.l  4(sp),d1
                bsr.w   sub_FFCB01C4
                bne.s   loc_FFCAFF62
                bsr.w   sub_FFCAFF68
                bne.s   loc_FFCAFF5C
                move.l  (sp)+,(a1)
                move.l  (sp)+,4(a1)
                clr.w   8(a1)
                movea.l $C(a1),a0
                move.l  a0,d0
                bne.s   loc_FFCAFF3C
                moveq   #$24,d0 ; '$'
                _NewPtrSysClear
                beq.s   loc_FFCAFF32
                move.w  #$FF94,d0
                bra.s   loc_FFCAFF5C
; ---------------------------------------------------------------------------

loc_FFCAFF32:                           ; CODE XREF: ROM:FFCAFF2A↑j
                move.w  #8,2(a0)
                move.l  a0,$C(a1)

loc_FFCAFF3C:                           ; CODE XREF: ROM:FFCAFF24↑j
                clr.w   (a0)
                lea     (a1),a0
                clr.w   -(sp)
                move.l  a0,-(sp)
                move.w  #$FFFF,-(sp)
                move.w  #$4C,-(sp) ; 'L'
                _OSDispatch
                addq.w  #2,sp
                moveq   #0,d0

loc_FFCAFF52:                           ; CODE XREF: ROM:FFCAFF60↓j
                move.w  d0,4(sp)
                rts
; ---------------------------------------------------------------------------

loc_FFCAFF58:                           ; CODE XREF: ROM:FFCAFF00↑j
                move.w  #$F63A,d0

loc_FFCAFF5C:                           ; CODE XREF: ROM:FFCAFF12↑j
                                        ; ROM:FFCAFF30↑j ...
                lea     8(sp),sp
                bra.s   loc_FFCAFF52
; ---------------------------------------------------------------------------

loc_FFCAFF62:                           ; CODE XREF: ROM:FFCAFF0C↑j
                move.w  #$F639,d0
                bra.s   loc_FFCAFF5C

; =============== S U B R O U T I N E =======================================


sub_FFCAFF68:                           ; CODE XREF: ROM:FFCAFF0E↑p
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                movea.l 2(a0),a0
                move.w  (a0),d0
                move.w  2(a0),d1
                cmp.w   d1,d0
                bcc.s   loc_FFCAFF98

loc_FFCAFF7E:                           ; CODE XREF: sub_FFCAFF68+5E↓j
                lea     4(a0),a1

loc_FFCAFF82:                           ; CODE XREF: sub_FFCAFF68+28↓j
                tst.l   (a1)
                bne.s   loc_FFCAFF8C
                tst.l   4(a1)
                beq.s   loc_FFCAFF92

loc_FFCAFF8C:                           ; CODE XREF: sub_FFCAFF68+1C↑j
                lea     $10(a1),a1
                bra.s   loc_FFCAFF82
; ---------------------------------------------------------------------------

loc_FFCAFF92:                           ; CODE XREF: sub_FFCAFF68+22↑j
                addq.w  #1,(a0)
                moveq   #0,d0
                rts
; ---------------------------------------------------------------------------

loc_FFCAFF98:                           ; CODE XREF: sub_FFCAFF68+14↑j
                movea.l a0,a1
                addq.w  #8,d1
                move.l  d1,d0
                lsl.l   #4,d0
                addq.l  #4,d0
                _NewPtrSysClear
                bne.s   loc_FFCAFFC8
                move.w  2(a1),d0
                lsl.l   #4,d0
                addq.l  #4,d0
                exg     a1,a0
                _BlockMove
                _DisposePtr
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                move.l  a1,2(a0)
                move.w  d1,2(a1)
                exg     a1,a0
                bra.s   loc_FFCAFF7E
; ---------------------------------------------------------------------------

loc_FFCAFFC8:                           ; CODE XREF: sub_FFCAFF68+3C↑j
                move.w  #$FF94,d0
                rts
; End of function sub_FFCAFF68

; ---------------------------------------------------------------------------

loc_FFCAFFCE:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                move.l  ([$2078],4),-(sp) ; jumptable FFCAFEAA case 20
                rts
; ---------------------------------------------------------------------------

loc_FFCAFFD8:                           ; CODE XREF: ROM:FFCB0432↓j
                move.l  ([$2078],8),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCAFFF0:                           ; DATA XREF: ROM:FFC07B5C↑o
                movea.l 8(sp),a0
                move.l  (a0),d0
                move.l  4(a0),d1
                bsr.w   sub_FFCB01C4
                beq.s   loc_FFCB0024

loc_FFCB0000:                           ; CODE XREF: ROM:FFCB0058↓j
                move.l  $C(a1),d0
                beq.s   loc_FFCB0024
                movea.l d0,a0
                move.w  (a0),d0
                move.w  2(a0),d1
                cmp.w   d1,d0
                bcc.s   loc_FFCB002A
                lea     4(a0),a1

loc_FFCB0016:                           ; CODE XREF: ROM:FFCB0018↓j
                tst.l   (a1)+
                bne.s   loc_FFCB0016
                move.l  4(sp),-(a1)
                addq.w  #1,(a0)
                moveq   #0,d0

locret_FFCB0022:                        ; CODE XREF: ROM:FFCB0028↓j
                rts
; ---------------------------------------------------------------------------

loc_FFCB0024:                           ; CODE XREF: ROM:FFCAFFFE↑j
                                        ; ROM:FFCB0004↑j
                move.w  #$F638,d0
                bra.s   locret_FFCB0022
; ---------------------------------------------------------------------------

loc_FFCB002A:                           ; CODE XREF: ROM:FFCB0010↑j
                addq.w  #8,d1
                move.l  d1,d0
                lsl.l   #2,d0
                addq.l  #4,d0
                _NewPtrSysClear
                bne.s   loc_FFCB005A
                move.l  a2,-(sp)
                movea.l a1,a2
                movea.l $C(a2),a1
                move.l  a0,$C(a2)
                move.w  2(a1),d0
                lsl.l   #2,d0
                addq.l  #4,d0
                exg     a1,a0
                _BlockMove
                _DisposePtr
                move.w  d1,2(a1)
                movea.l a2,a1
                movea.l (sp)+,a2
                bra.s   loc_FFCB0000
; ---------------------------------------------------------------------------

loc_FFCB005A:                           ; CODE XREF: ROM:FFCB0034↑j
                move.w  #$FF94,d0
                rts

; =============== S U B R O U T I N E =======================================


sub_FFCB0060:                           ; CODE XREF: sub_FFCB05E0+8C↓p
                move.l  ([$2078],$C),-(sp)
                rts
; End of function sub_FFCB0060

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB0070:                           ; DATA XREF: ROM:FFC07B60↑o
                movea.l 4(sp),a0
                movea.l (a0),a0
                move.l  $A(a0),d0
                move.l  $E(a0),d1
                bsr.w   sub_FFCB01C4
                beq.s   loc_FFCB00C2
                move.l  $C(a1),d0
                beq.s   loc_FFCB00C2
                movea.l d0,a0
                move.w  (a0),d0
                beq.s   loc_FFCB00AE
                move.l  a1,-(sp)
                move.w  2(a0),d0
                lea     4(a0),a1
                move.l  8(sp),d1

loc_FFCB009E:                           ; CODE XREF: ROM:FFCB00A6↓j
                tst.w   d0
                ble.s   loc_FFCB00C0
                subq.w  #1,d0
                cmp.l   (a1)+,d1
                bne.s   loc_FFCB009E
                clr.l   -(a1)
                subq.w  #1,(a0)
                movea.l (sp)+,a1

loc_FFCB00AE:                           ; CODE XREF: ROM:FFCB008E↑j
                move.w  (a0),d0
                movea.l 8(sp),a0
                move.w  d0,(a0)
                movea.l $C(sp),a0
                move.l  a1,(a0)
                moveq   #0,d0
                rts
; ---------------------------------------------------------------------------

loc_FFCB00C0:                           ; CODE XREF: ROM:FFCB00A0↑j
                addq.w  #4,sp

loc_FFCB00C2:                           ; CODE XREF: ROM:FFCB0082↑j
                                        ; ROM:FFCB0088↑j
                move.w  #$F638,d0
                rts

; =============== S U B R O U T I N E =======================================


sub_FFCB00C8:                           ; CODE XREF: sub_FFCB07B0+10E↓p
                move.l  ([$2078],$10),-(sp)
                rts
; End of function sub_FFCB00C8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB00E0:                           ; DATA XREF: ROM:FFC07B64↑o
                movea.l 4(sp),a0
                move.l  (a0),d0
                move.l  4(a0),d1
                bsr.w   sub_FFCB01C4
                beq.s   loc_FFCB011A
                move.l  8(sp),d2
                move.b  d2,8(a1)
                move.w  #$FFFF,d0
                tst.w   8(a1)
                beq.s   loc_FFCB0104
                moveq   #0,d0

loc_FFCB0104:                           ; CODE XREF: ROM:FFCB0100↑j
                movea.l 4(sp),a0
                clr.w   -(sp)
                move.l  a0,-(sp)
                move.b  d0,-(sp)
                move.w  #$4C,-(sp) ; 'L'
                _OSDispatch
                addq.w  #2,sp
                moveq   #0,d0

locret_FFCB0118:                        ; CODE XREF: ROM:FFCB011E↓j
                rts
; ---------------------------------------------------------------------------

loc_FFCB011A:                           ; CODE XREF: ROM:FFCB00EE↑j
                move.w  #$F638,d0
                bra.s   locret_FFCB0118

; =============== S U B R O U T I N E =======================================


sub_FFCB0120:                           ; CODE XREF: sub_FFCB1FC0+164↓p
                move.l  ([$2078],$14),-(sp)
                rts
; End of function sub_FFCB0120

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB0130:                           ; DATA XREF: ROM:FFC07B68↑o
                movea.l 4(sp),a0
                movea.l (a0),a0
                move.l  $A(a0),d0
                move.l  $E(a0),d1
                move.b  $13(a0),d2
                bsr.w   sub_FFCB01C4
                beq.s   locret_FFCB016A
                move.b  d2,9(a1)
                move.w  #$FFFF,d0
                tst.w   8(a1)
                beq.s   loc_FFCB0158
                moveq   #0,d0

loc_FFCB0158:                           ; CODE XREF: ROM:FFCB0154↑j
                lea     (a1),a0
                clr.w   -(sp)
                move.l  a0,-(sp)
                move.b  d0,-(sp)
                move.w  #$4C,-(sp) ; 'L'
                _OSDispatch
                addq.w  #2,sp
                moveq   #0,d0

locret_FFCB016A:                        ; CODE XREF: ROM:FFCB0146↑j
                rts

; =============== S U B R O U T I N E =======================================


sub_FFCB016C:                           ; CODE XREF: sub_FFCB0B90+1F2↓p
                                        ; sub_FFCB1FC0+8A↓p
                move.l  ([$2078],$18),-(sp)
                rts
; End of function sub_FFCB016C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB0180:                           ; DATA XREF: ROM:FFC07B6C↑o
                move.l  d3,-(sp)
                move.l  d0,d3
                or.l    d1,d3
                beq.s   loc_FFCB01BA
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                movea.l 2(a0),a0
                moveq   #0,d3
                move.w  (a0),d3
                beq.s   loc_FFCB01B8
                move.w  2(a0),d3
                beq.s   loc_FFCB01B8
                lea     4(a0),a1
                subq.w  #1,d3

loc_FFCB01A6:                           ; CODE XREF: ROM:FFCB01B4↓j
                cmp.l   (a1),d0
                bne.s   loc_FFCB01B0
                cmp.l   4(a1),d1
                beq.s   loc_FFCB01C0

loc_FFCB01B0:                           ; CODE XREF: ROM:FFCB01A8↑j
                lea     $10(a1),a1
                dbf     d3,loc_FFCB01A6

loc_FFCB01B8:                           ; CODE XREF: ROM:FFCB0198↑j
                                        ; ROM:FFCB019E↑j
                moveq   #0,d0

loc_FFCB01BA:                           ; CODE XREF: ROM:FFCB0186↑j
                                        ; ROM:FFCB01C2↓j
                move.l  (sp)+,d3
                tst.w   d0
                rts
; ---------------------------------------------------------------------------

loc_FFCB01C0:                           ; CODE XREF: ROM:FFCB01AE↑j
                moveq   #1,d0
                bra.s   loc_FFCB01BA

; =============== S U B R O U T I N E =======================================


sub_FFCB01C4:                           ; CODE XREF: ROM:FFCAFF08↑p
                                        ; ROM:FFCAFFFA↑p ...
                move.l  ([$2078],$1C),-(sp)
                rts
; End of function sub_FFCB01C4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB01D0:                           ; DATA XREF: ROM:FFC07B70↑o
                suba.w  #$A,sp
                pea     2(sp)
                move.w  #$3F,-(sp) ; '?'
                _OSDispatch
                move.w  (sp)+,d0
                bne.w   loc_FFCB026A
                moveq   #0,d2

loc_FFCB01E6:                           ; DATA XREF: ROM:FFC07B74↑o
                move.l  (sp),d0
                move.l  4(sp),d1
                bsr.w   sub_FFCB01C4
                beq.s   loc_FFCB0260
                move.l  $C(a1),d0
                beq.s   loc_FFCB0234
                movea.l d0,a0
                move.w  (a0),d0
                beq.s   loc_FFCB0234
                tst.w   d2
                beq.s   loc_FFCB0266
                move.l  a1,-(sp)
                moveq   #0,d0
                move.w  2(a0),d0
                subq.w  #1,d0
                lea     4(a0),a0

loc_FFCB0210:                           ; CODE XREF: ROM:loc_FFCB0228↓j
                move.l  (a0)+,d1
                beq.s   loc_FFCB0228
                clr.l   -4(a0)
                movem.l d0/a0,-(sp)
                move.l  d1,-(sp)
                jsr     sub_FFCB2AD0
                addq.w  #4,sp
                movem.l (sp)+,d0/a0

loc_FFCB0228:                           ; CODE XREF: ROM:FFCB0212↑j
                dbf     d0,loc_FFCB0210
                movea.l (sp)+,a1
                movea.l $C(a1),a0
                clr.w   (a0)

loc_FFCB0234:                           ; CODE XREF: ROM:FFCB01F6↑j
                                        ; ROM:FFCB01FC↑j
                clr.l   (a1)
                clr.l   4(a1)
                clr.l   8(a1)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                movea.l 2(a0),a0
                subq.w  #1,(a0)
                clr.w   -(sp)
                pea     2(sp)
                clr.w   -(sp)
                move.w  #$4C,-(sp) ; 'L'
                _OSDispatch
                addq.w  #2,sp
                moveq   #0,d0
                bra.s   loc_FFCB026A
; ---------------------------------------------------------------------------

loc_FFCB0260:                           ; CODE XREF: ROM:FFCB01F0↑j
                move.w  #$F638,d0
                bra.s   loc_FFCB026A
; ---------------------------------------------------------------------------

loc_FFCB0266:                           ; CODE XREF: ROM:FFCB0200↑j
                move.w  #$F631,d0

loc_FFCB026A:                           ; CODE XREF: ROM:FFCB01E0↑j
                                        ; ROM:FFCB025E↑j ...
                lea     8(sp),sp
                move.w  d0,4(sp)
                rts
; ---------------------------------------------------------------------------

loc_FFCB0274:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                move.l  ([$2078],$20),-(sp) ; jumptable FFCAFEAA case 21
                rts
; ---------------------------------------------------------------------------

loc_FFCB027E:                           ; CODE XREF: ROM:FFCB03EE↓j
                move.l  ([$2078],$24),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB0290:                           ; DATA XREF: ROM:FFC07B78↑o
                movea.l 8(sp),a1
                clr.w   -(sp)
                move.l  a1,-(sp)
                jsr     sub_FFCB036E
                move.w  (sp)+,d0
                bne.s   loc_FFCB02A8
                movea.l 4(sp),a0
                move.l  $C(a1),(a0)

loc_FFCB02A8:                           ; CODE XREF: ROM:FFCB029E↑j
                movea.l (sp)+,a0
                lea     8(sp),sp
                move.w  d0,(sp)
                jmp     (a0)

; =============== S U B R O U T I N E =======================================


sub_FFCB02B2:                           ; CODE XREF: sub_FFCB1820+9E↓p
                move.l  ([$2078],$28),-(sp)
                rts
; End of function sub_FFCB02B2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB02C0:                           ; DATA XREF: ROM:FFC07B7C↑o
                movea.l 8(sp),a1
                move.l  (a1),d0
                move.l  4(a1),d1
                bsr.w   sub_FFCB01C4
                beq.s   loc_FFCB02E2
                movea.l 4(sp),a0
                move.l  a1,(a0)
                moveq   #0,d0

loc_FFCB02D8:                           ; CODE XREF: ROM:FFCB02E6↓j
                movea.l (sp)+,a0
                lea     8(sp),sp
                move.w  d0,(sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFCB02E2:                           ; CODE XREF: ROM:FFCB02CE↑j
                move.w  #$F638,d0
                bra.s   loc_FFCB02D8

; =============== S U B R O U T I N E =======================================


sub_FFCB02E8:                           ; CODE XREF: sub_FFCB0B90+82↓p
                move.l  ([$2078],$2C),-(sp)
                rts
; End of function sub_FFCB02E8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB0300:                           ; DATA XREF: ROM:FFC07B80↑o
                movea.l 8(sp),a1
                move.l  (a1),d0
                move.l  4(a1),d1
                bsr.w   sub_FFCB01C4
                beq.s   loc_FFCB0324
                move.b  8(a1),d1

loc_FFCB0314:                           ; CODE XREF: ROM:FFCB0328↓j
                moveq   #0,d0
                movea.l (sp)+,a0
                movea.l (sp)+,a1
                move.b  d1,(a1)
                move.l  a0,(sp)
                move.w  d0,4(sp)
                rts
; ---------------------------------------------------------------------------

loc_FFCB0324:                           ; CODE XREF: ROM:FFCB030E↑j
                move.w  #$F638,d0
                bra.s   loc_FFCB0314

; =============== S U B R O U T I N E =======================================


sub_FFCB032A:                           ; CODE XREF: sub_FFCB1FC0+136↓p
                move.l  ([$2078],$30),-(sp)
                rts
; End of function sub_FFCB032A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB0340:                           ; DATA XREF: ROM:FFC07B84↑o
                movea.l 4(sp),a1
                move.l  (a1),d0
                move.l  4(a1),d1
                bsr.w   sub_FFCB01C4
                beq.s   loc_FFCB0362
                tst.w   8(a1)
                bne.s   loc_FFCB0368
                moveq   #0,d0

loc_FFCB0358:                           ; CODE XREF: ROM:FFCB0366↓j
                                        ; ROM:FFCB036C↓j
                movea.l (sp)+,a0
                move.l  a0,(sp)
                move.w  d0,4(sp)
                rts
; ---------------------------------------------------------------------------

loc_FFCB0362:                           ; CODE XREF: ROM:FFCB034E↑j
                move.w  #$F638,d0
                bra.s   loc_FFCB0358
; ---------------------------------------------------------------------------

loc_FFCB0368:                           ; CODE XREF: ROM:FFCB0354↑j
                move.w  #$F630,d0
                bra.s   loc_FFCB0358

; =============== S U B R O U T I N E =======================================


sub_FFCB036E:                           ; CODE XREF: ROM:FFCB0298↑p
                                        ; sub_FFCB0940+C8↓p ...
                move.l  ([$2078],$34),-(sp)
                rts
; End of function sub_FFCB036E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB0380:                           ; DATA XREF: ROM:FFC07B88↑o
                move.w  8(sp),d0
                beq.w   loc_FFCB0436
                movea.l 4(sp),a1
                cmpi.w  #1,d0
                beq.s   loc_FFCB0404
                cmpi.w  #2,d0
                beq.s   loc_FFCB03D0
                cmpi.w  #4,d0
                beq.s   loc_FFCB03BE
                cmpi.w  #5,d0
                beq.s   loc_FFCB03C8
                cmpi.w  #6,d0
                beq.w   loc_FFCB044A
                cmpi.w  #3,d0
                bne.w   loc_FFCB0444
                move.l  a1,-(sp)
                jsr     sub_FFCB34B2
                tst.l   (sp)+
                bra.s   loc_FFCB0436
; ---------------------------------------------------------------------------

loc_FFCB03BE:                           ; CODE XREF: ROM:FFCB039C↑j
                clr.l   -(sp)

loc_FFCB03C0:                           ; CODE XREF: ROM:FFCB03CE↓j
                jsr     sub_FFCB3600
                tst.l   (sp)+
                bra.s   loc_FFCB0436
; ---------------------------------------------------------------------------

loc_FFCB03C8:                           ; CODE XREF: ROM:FFCB03A2↑j
                move.l  #$FFFF,-(sp)
                bra.s   loc_FFCB03C0
; ---------------------------------------------------------------------------

loc_FFCB03D0:                           ; CODE XREF: ROM:FFCB0396↑j
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                st      $1B(a0)
                moveq   #1,d2
                subq.w  #2,sp
                pea     loc_FFCB03F2(pc)
                move.l  4(a1),d1
                move.l  d1,-(sp)
                move.l  (a1),d1
                move.l  d1,-(sp)
                jmp     loc_FFCB027E
; ---------------------------------------------------------------------------

loc_FFCB03F2:                           ; DATA XREF: ROM:FFCB03E0↑o
                addq.w  #2,sp
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                clr.b   $1B(a0)
                moveq   #0,d0
                bra.s   loc_FFCB0436
; ---------------------------------------------------------------------------

loc_FFCB0404:                           ; CODE XREF: ROM:FFCB0390↑j
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                move.l  (a1),d1
                move.l  d1,$1C(a0)
                move.l  4(a1),d1
                move.l  d1,$20(a0)
                jsr     sub_FFCB31C8
                movea.l 4(sp),a0
                movea.l (sp),a1
                subq.w  #2,sp
                move.l  (a0),(sp)
                move.l  4(a0),4(sp)
                move.l  a1,8(sp)
                jmp     loc_FFCAFFD8
; ---------------------------------------------------------------------------

loc_FFCB0436:                           ; CODE XREF: ROM:FFCB0384↑j
                                        ; ROM:FFCB03BC↑j ...
                movea.l (sp),a1
                lea     $A(sp),sp
                move.w  d0,(sp)
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b $70 ; p
                dc.b   0
                dc.b $60 ; `
                dc.b $F2
; ---------------------------------------------------------------------------

loc_FFCB0444:                           ; CODE XREF: ROM:FFCB03B0↑j
                move.w  #$FFCE,d0
                bra.s   loc_FFCB0436
; ---------------------------------------------------------------------------

loc_FFCB044A:                           ; CODE XREF: ROM:FFCB03A8↑j
                movem.l a2-a3,-(sp)
                clr.w   (a1)
                clr.l   2(a1)
                movea.l a1,a2
                subq.w  #2,-(sp)
                move.l  ($830).w,-(sp)
                pea     2(a2)
                moveq   #$17,d0
                _TextServicesDispatch
                move.w  (sp)+,d0
                beq.s   loc_FFCB0498
                cmpi.w  #2,d0
                ble.s   loc_FFCB0498
                cmpi.w  #3,d0
                bne.s   loc_FFCB0494
                movea.l 2(a2),a3
                cmpi.w  #7,$6C(a3)
                bne.s   loc_FFCB0494
                move.l  $98(a3),d0
                beq.s   loc_FFCB0494
                subq.w  #2,-(sp)
                move.l  d0,-(sp)
                moveq   #$15,d0
                _ComponentDispatch
                move.w  (sp)+,d0
                ble.s   loc_FFCB0498
                move.w  d0,(a2)

loc_FFCB0494:                           ; CODE XREF: ROM:FFCB0472↑j
                                        ; ROM:FFCB047E↑j ...
                moveq   #0,d0
                bra.s   loc_FFCB04A2
; ---------------------------------------------------------------------------

loc_FFCB0498:                           ; CODE XREF: ROM:FFCB0466↑j
                                        ; ROM:FFCB046C↑j ...
                clr.w   (a2)
                clr.l   2(a2)
                move.w  #$FFCE,d0

loc_FFCB04A2:                           ; CODE XREF: ROM:FFCB0496↑j
                movem.l (sp)+,a2-a3
                bra.s   loc_FFCB0436
; ---------------------------------------------------------------------------

loc_FFCB04A8:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                move.l  ([$2078],$38),-(sp) ; jumptable FFCAFEAA case 22
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB04C0:                           ; DATA XREF: ROM:FFC07B8C↑o
                movea.l 4(sp),a0
                move.l  #1,(a0)
                movea.l (sp)+,a0
                addq.w  #8,sp
                clr.w   (sp)
                jmp     (a0)
; ---------------------------------------------------------------------------

loc_FFCB04D2:                           ; DATA XREF: ROM:FFCB0566↓o
                move.l  ([$2078],$3C),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFCB04E0:                           ; DATA XREF: ROM:FFC07B90↑o
                movea.l ($2B6).w,a1
                move.l  $64(a1),d0
                movea.l d0,a1
                beq.s   loc_FFCB04F6
                move.w  (a1),d0
                cmpi.w  #$174,d0
                beq.w   locret_FFCB056E

loc_FFCB04F6:                           ; CODE XREF: ROM:FFCB04EA↑j
                move.l  #$174,d0
                _NewPtrSysClear
                bne.w   loc_FFCB057C
                move.l  a1,d0
                beq.s   loc_FFCB051E
                moveq   #0,d0
                move.w  (a1),d0
                exg     a0,a1
                _BlockMove
                _DisposePtr
                movea.l ($2B6).w,a0
                move.w  #$174,(a1)
                move.l  a1,$64(a0)
                bra.s   locret_FFCB056E
; ---------------------------------------------------------------------------

loc_FFCB051E:                           ; CODE XREF: ROM:FFCB0504↑j
                move.w  #$174,(a0)
                clr.b   $6A(a0)
                move.b  #1,$6B(a0)
                move.w  #$FFFF,6(a0)
                move.w  #$FFFF,8(a0)
                move.l  #$4B534354,$6C(a0)
                movea.l ($2B6).w,a1
                move.l  a0,$64(a1)
                movea.l a0,a1
                move.l  #$84,d0
                _NewPtrSysClear
                bne.s   loc_FFCB0570
                move.l  a0,2(a1)
                move.w  #8,d0
                move.w  d0,2(a0)
                move.l  #$74736D76,d0
                lea     loc_FFCB04D2(pc),a0
                _NewGestalt
                moveq   #0,d0

locret_FFCB056E:                        ; CODE XREF: ROM:FFCB04F2↑j
                                        ; ROM:FFCB051C↑j ...
                rts
; ---------------------------------------------------------------------------

loc_FFCB0570:                           ; CODE XREF: ROM:FFCB0552↑j
                movea.l a1,a0
                _DisposePtr
                movea.l ($2B6).w,a0
                clr.l   $64(a0)

loc_FFCB057C:                           ; CODE XREF: ROM:FFCB04FE↑j
                moveq   #$19,d0
                _SysError
                bra.s   locret_FFCB056E
; ---------------------------------------------------------------------------
                move.l  ([$2078],$40),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0590:                           ; DATA XREF: ROM:FFC07B94↑o

arg_0           =  8
arg_2           =  $A

                link    a6,#0
                clr.w   arg_2(a6)
                movea.l ($BA0).w,a0
                move.l  $76(a0),d0
                beq.s   loc_FFCB05C8
                movea.l d0,a0
                move.l  $96(a0),d0
                ble.s   loc_FFCB05C8
                movea.l d0,a1
                movea.l (a1),a1
                move.l  (a1)+,d0
                move.w  arg_0(a6),d1
                bra.s   loc_FFCB05BC
; ---------------------------------------------------------------------------

loc_FFCB05B6:                           ; CODE XREF: sub_FFCB0590:loc_FFCB05BC↓j
                movea.l (a1)+,a0
                cmp.w   (a0),d1
                beq.s   loc_FFCB05C2

loc_FFCB05BC:                           ; CODE XREF: sub_FFCB0590+24↑j
                dbf     d0,loc_FFCB05B6
                bra.s   loc_FFCB05C8
; ---------------------------------------------------------------------------

loc_FFCB05C2:                           ; CODE XREF: sub_FFCB0590+2A↑j
                move.w  #$100,arg_2(a6)

loc_FFCB05C8:                           ; CODE XREF: sub_FFCB0590+10↑j
                                        ; sub_FFCB0590+18↑j ...
                unlk    a6
                movea.l (sp)+,a0
                addq.w  #2,sp
                jmp     (a0)
; End of function sub_FFCB0590


; =============== S U B R O U T I N E =======================================


sub_FFCB05D0:                           ; CODE XREF: sub_FFCB1C50+A0↓p
                move.l  ([$2078],$44),-(sp)
                rts
; End of function sub_FFCB05D0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB05E0:                           ; DATA XREF: ROM:FFC07B98↑o

var_24          = -$24
var_C           = -$C
var_8           = -8
var_4           = -4
arg_2           =  $A
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_13          =  $1B

                link    a6,#-$C
                movem.l d4-d7/a3-a4,-(sp)
                move.b  arg_13(a6),d7
                movea.l arg_4(a6),a3
                move.w  arg_2(a6),d6
                moveq   #$64,d5 ; 'd'
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                cmpi.w  #1,d6
                beq.s   loc_FFCB060C
                move.w  #$F62A,d0
                bra.w   loc_FFCB0710
; ---------------------------------------------------------------------------

loc_FFCB060C:                           ; CODE XREF: sub_FFCB05E0+22↑j
                cmpi.l  #$74737663,(a3)
                beq.s   loc_FFCB0624
                cmpi.l  #$746D5445,(a3)
                beq.s   loc_FFCB0624
                move.w  #$F62A,d0
                bra.w   loc_FFCB0710
; ---------------------------------------------------------------------------

loc_FFCB0624:                           ; CODE XREF: sub_FFCB05E0+32↑j
                                        ; sub_FFCB05E0+3A↑j
                move.l  d5,d0
                _NewHandleClear
                move.l  a0,var_C(a6)
                bne.s   loc_FFCB0634
                moveq   #$FFFFFF94,d0
                bra.w   loc_FFCB0710
; ---------------------------------------------------------------------------

loc_FFCB0634:                           ; CODE XREF: sub_FFCB05E0+4C↑j
                tst.b   d7
                beq.s   loc_FFCB0648
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                addq.w  #2,sp
                bra.s   loc_FFCB0664
; ---------------------------------------------------------------------------

loc_FFCB0648:                           ; CODE XREF: sub_FFCB05E0+56↑j
                move.w  $54(a4),d0
                ext.l   d0
                moveq   #$10,d1
                lsl.l   d1,d0
                move.l  d0,var_8(a6)
                move.w  $54(a4),d0
                ext.l   d0
                moveq   #$10,d1
                lsl.l   d1,d0
                move.l  d0,var_4(a6)

loc_FFCB0664:                           ; CODE XREF: sub_FFCB05E0+66↑j
                pea     var_8(a6)
                move.l  var_C(a6),-(sp)
                jsr     sub_FFCB0060
                move.w  d0,d5
                addq.w  #8,sp
                beq.s   loc_FFCB068A
                movea.l var_C(a6),a0
                _DisposeHandle
                movea.l arg_8(a6),a0
                moveq   #0,d0
                move.l  d0,(a0)
                move.w  d5,d0
                bra.w   loc_FFCB0710
; ---------------------------------------------------------------------------

loc_FFCB068A:                           ; CODE XREF: sub_FFCB05E0+94↑j
                move.w  6(a4),d4
                movea.l var_C(a6),a0
                movea.l (a0),a4
                move.l  var_8(a6),$A(a4)
                move.l  var_4(a6),$E(a4)
                move.l  #$54444F43,(a4)
                clr.w   4(a4)
                moveq   #0,d0
                move.l  d0,6(a4)
                clr.w   $12(a4)
                move.l  arg_C(a6),$14(a4)
                move.w  d6,$5E(a4)
                tst.b   d7
                beq.s   loc_FFCB06C8
                move.w  d4,$18(a4)
                bra.s   loc_FFCB06CE
; ---------------------------------------------------------------------------

loc_FFCB06C8:                           ; CODE XREF: sub_FFCB05E0+E0↑j
                move.w  #$FFFF,$18(a4)

loc_FFCB06CE:                           ; CODE XREF: sub_FFCB05E0+E6↑j
                clr.w   d7
                bra.s   loc_FFCB06DE
; ---------------------------------------------------------------------------

loc_FFCB06D2:                           ; CODE XREF: sub_FFCB05E0+100↓j
                ext.l   d7
                move.l  (a3,d7.l*4),$60(a4,d7.l*4)
                move.w  d7,d0
                addq.w  #1,d7

loc_FFCB06DE:                           ; CODE XREF: sub_FFCB05E0+F0↑j
                cmp.w   d7,d6
                bgt.s   loc_FFCB06D2
                movea.l arg_8(a6),a0
                move.l  var_C(a6),(a0)
                ext.l   d4
                move.l  d4,-(sp)
                jsr     sub_FFCB3120
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB070C
                moveq   #0,d0
                move.l  d0,-(sp)
                movea.l arg_8(a6),a0
                move.l  (a0),-(sp)
                jsr     sub_FFCB2F6C
                move.w  d0,d5
                addq.w  #8,sp
                bra.s   loc_FFCB070E
; ---------------------------------------------------------------------------

loc_FFCB070C:                           ; CODE XREF: sub_FFCB05E0+116↑j
                clr.w   d5

loc_FFCB070E:                           ; CODE XREF: sub_FFCB05E0+12A↑j
                move.w  d5,d0

loc_FFCB0710:                           ; CODE XREF: sub_FFCB05E0+28↑j
                                        ; sub_FFCB05E0+40↑j ...
                movem.l var_24(a6),d4-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB05E0


; =============== S U B R O U T I N E =======================================


sub_FFCB071A:                           ; CODE XREF: sub_FFCB0730+1A↓p
                                        ; sub_FFCB0770+1C↓p
                movea.l ($2078).w,a1
                movea.l $48(a1),a1
                jmp     (a1)
; End of function sub_FFCB071A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0730:                           ; DATA XREF: ROM:FFC07B9C↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12

                link    a6,#0
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.w  arg_8(a6),d1
                ext.l   d1
                move.l  d1,-(sp)
                jsr     sub_FFCB071A
                move.w  d0,arg_A(a6)
                unlk    a6
                rtd     #$A
; End of function sub_FFCB0730

; ---------------------------------------------------------------------------

loc_FFCB0758:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 24
                movea.l $4C(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0770:                           ; DATA XREF: ROM:FFC07BA0↑o

arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_E           =  $16

                link    a6,#0
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_8(a6),-(sp)
                move.w  arg_C(a6),d1
                ext.l   d1
                move.l  d1,-(sp)
                jsr     sub_FFCB071A
                move.w  d0,arg_E(a6)
                unlk    a6
                rtd     #$E
; End of function sub_FFCB0770

; ---------------------------------------------------------------------------

loc_FFCB079A:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 0
                movea.l $50(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB07B0:                           ; DATA XREF: ROM:FFC07BA4↑o

var_22          = -$22
var_E           = -$E
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-$E
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l ($2B6).w,a0
                move.l  $64(a0),var_8(a6)
                move.l  a3,-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d6
                addq.w  #4,sp
                beq.s   loc_FFCB07DA
                move.w  d6,arg_4(a6)
                bra.w   loc_FFCB091E
; ---------------------------------------------------------------------------

loc_FFCB07DA:                           ; CODE XREF: sub_FFCB07B0+20↑j
                subq.l  #2,sp
                move.l  a3,-(sp)
                jsr     sub_FFCB0B80
                move.w  (sp)+,d6
                movea.l var_8(a6),a0
                cmpa.l  $A(a0),a3
                bne.s   loc_FFCB0810
                moveq   #$64,d0 ; 'd'
                _NewHandleSysClear
                movea.l a0,a4
                move.l  a4,d0
                beq.s   loc_FFCB0808
                movea.l (a3),a0
                movea.l (a4),a1
                moveq   #$64,d0 ; 'd'
                _BlockMove
                movea.l (a4),a0
                move.l  #$53444F43,(a0)

loc_FFCB0808:                           ; CODE XREF: sub_FFCB07B0+46↑j
                movea.l var_8(a6),a0
                move.l  a4,$A(a0)

loc_FFCB0810:                           ; CODE XREF: sub_FFCB07B0+3C↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #1,d1
                move.l  d1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2BD6
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #2,d1
                move.l  d1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2BD6
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #$19,d1
                move.l  d1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2BD6
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #3,d1
                move.l  d1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2BD6
                movea.l a3,a0
                _HLock
                movea.l (a3),a2
                movea.l 6(a2),a4
                clr.w   d7
                lea     $30(sp),sp
                bra.s   loc_FFCB08AA
; ---------------------------------------------------------------------------

loc_FFCB085A:                           ; CODE XREF: sub_FFCB07B0+FE↓j
                move.l  a4,d0
                beq.s   loc_FFCB08B0
                tst.l   $12(a4)
                beq.s   loc_FFCB0898
                movea.l $12(a4),a0
                movea.l (a0),a0
                cmpi.w  #$BF8C,(a0)
                beq.s   loc_FFCB0898
                tst.b   $11(a4)
                beq.s   loc_FFCB088C
                movea.l $12(a4),a0
                movea.l (a0),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3964
                clr.b   $11(a4)
                addq.w  #4,sp

loc_FFCB088C:                           ; CODE XREF: sub_FFCB07B0+C4↑j
                movea.l $12(a4),a0
                _DisposeHandle
                moveq   #0,d0
                move.l  d0,$12(a4)

loc_FFCB0898:                           ; CODE XREF: sub_FFCB07B0+B2↑j
                                        ; sub_FFCB07B0+BE↑j
                subq.l  #2,sp
                move.l  8(a4),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                movea.l (a4),a4
                addq.w  #2,sp
                move.w  d7,d0
                addq.w  #1,d7

loc_FFCB08AA:                           ; CODE XREF: sub_FFCB07B0+A8↑j
                cmp.w   4(a2),d7
                blt.s   loc_FFCB085A

loc_FFCB08B0:                           ; CODE XREF: sub_FFCB07B0+AC↑j
                movea.l a3,a0
                _HUnlock
                pea     var_4(a6)
                pea     var_E(a6)
                move.l  a3,-(sp)
                jsr     sub_FFCB00C8
                move.w  d0,d6
                movea.l a3,a0
                _DisposeHandle
                tst.w   d6
                lea     $C(sp),sp
                bne.s   loc_FFCB091A
                tst.w   var_E(a6)
                bne.s   loc_FFCB091A
                movea.l var_4(a6),a0
                tst.b   $A(a0)
                bne.s   loc_FFCB091A
                movea.l a0,a1
                move.b  8(a0),$B(a1)
                subq.l  #2,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #1,d1
                move.b  d1,-(sp)
                jsr     sub_FFCB21DA
                move.w  (sp)+,d6
                bne.s   loc_FFCB0906
                movea.l var_4(a6),a0
                move.b  #1,$A(a0)
                bra.s   loc_FFCB091A
; ---------------------------------------------------------------------------

loc_FFCB0906:                           ; CODE XREF: sub_FFCB07B0+148↑j
                movea.l var_4(a6),a0
                clr.b   $A(a0)
                movea.l var_4(a6),a0
                movea.l a0,a1
                move.b  $B(a0),8(a1)

loc_FFCB091A:                           ; CODE XREF: sub_FFCB07B0+11E↑j
                                        ; sub_FFCB07B0+124↑j ...
                move.w  d6,arg_4(a6)

loc_FFCB091E:                           ; CODE XREF: sub_FFCB07B0+26↑j
                movem.l var_22(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB07B0


; =============== S U B R O U T I N E =======================================


sub_FFCB092A:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; sub_FFCB2A90+16↓p
                                        ; DATA XREF: ...
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 1
                movea.l $54(a1),a1
                jmp     (a1)
; End of function sub_FFCB092A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0940:                           ; DATA XREF: ROM:FFC07BA8↑o

var_2C          = -$2C
var_C           = -$C
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-$10
                movem.l d4-d7/a2-a4,-(sp)
                movea.l ($2B6).w,a0
                move.l  $64(a0),var_4(a6)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d6
                addq.w  #4,sp
                beq.s   loc_FFCB0968
                move.w  d6,arg_4(a6)
                bra.w   loc_FFCB0B74
; ---------------------------------------------------------------------------

loc_FFCB0968:                           ; CODE XREF: sub_FFCB0940+1E↑j
                movea.l var_4(a6),a0
                move.w  6(a0),d5
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                tst.b   $12(a0)
                bne.s   loc_FFCB09D4
                movea.l arg_0(a6),a0
                _HLock
                movea.l arg_0(a6),a0
                movea.l (a0),a2
                clr.w   d7

loc_FFCB098A:                           ; CODE XREF: sub_FFCB0940+82↓j
                ext.l   d7
                move.l  d7,d0
                asl.l   #4,d0
                lea     $1E(a2,d0.l),a3
                tst.l   4(a3)
                beq.s   loc_FFCB09BA
                tst.b   $D(a3)
                beq.s   loc_FFCB09BA
                subq.l  #4,sp
                move.l  4(a3),-(sp)
                move.l  #5,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d6
                bne.s   loc_FFCB09BA
                clr.b   $D(a3)

loc_FFCB09BA:                           ; CODE XREF: sub_FFCB0940+58↑j
                                        ; sub_FFCB0940+5E↑j ...
                move.w  d7,d0
                addq.w  #1,d7
                cmpi.w  #4,d7
                blt.s   loc_FFCB098A
                movea.l arg_0(a6),a0
                _HUnlock
                move.w  #$F635,arg_4(a6)
                bra.w   loc_FFCB0B74
; ---------------------------------------------------------------------------

loc_FFCB09D4:                           ; CODE XREF: sub_FFCB0940+3A↑j
                movea.l arg_0(a6),a0
                movea.l (a0),a2
                lea     $A(a2),a0
                movea.l var_4(a6),a1
                lea     $1C(a1),a1
                moveq   #1,d0

loc_FFCB09E8:                           ; CODE XREF: sub_FFCB0940+AA↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFCB09E8
                bne.s   loc_FFCB09F4
                moveq   #1,d4
                bra.s   loc_FFCB09F6
; ---------------------------------------------------------------------------

loc_FFCB09F4:                           ; CODE XREF: sub_FFCB0940+AE↑j
                clr.b   d4

loc_FFCB09F6:                           ; CODE XREF: sub_FFCB0940+B2↑j
                subq.l  #2,sp
                pea     var_C(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                subq.l  #2,sp
                pea     var_C(a6)
                jsr     sub_FFCB036E
                move.w  (sp)+,d4
                pea     $A(a2)
                ext.l   d5
                move.l  d5,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                lea     $A(sp),sp
                beq.s   loc_FFCB0A40
                moveq   #0,d0
                move.l  d0,-(sp)
                ext.l   d5
                move.l  d5,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB2A86
                movea.l var_4(a6),a0
                subq.b  #1,$18(a0)
                lea     $C(sp),sp
                bra.s   loc_FFCB0A6C
; ---------------------------------------------------------------------------

loc_FFCB0A40:                           ; CODE XREF: sub_FFCB0940+E0↑j
                cmpi.w  #$F630,d4
                bne.s   loc_FFCB0A6C
                moveq   #0,d0
                move.l  d0,-(sp)
                ext.l   d5
                move.l  d5,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB2488
                movea.l var_4(a6),a0
                move.l  arg_0(a6),$A(a0)
                movea.l var_4(a6),a0
                move.w  d5,$E(a0)
                lea     $C(sp),sp

loc_FFCB0A6C:                           ; CODE XREF: sub_FFCB0940+FE↑j
                                        ; sub_FFCB0940+104↑j
                clr.w   d6
                movea.l arg_0(a6),a0
                _HLock
                movea.l arg_0(a6),a0
                movea.l (a0),a2
                movea.l 6(a2),a4
                clr.w   d7
                bra.s   loc_FFCB0ADA
; ---------------------------------------------------------------------------

loc_FFCB0A82:                           ; CODE XREF: sub_FFCB0940+19E↓j
                move.l  a4,d0
                beq.s   loc_FFCB0AD6
                subq.l  #4,sp
                move.l  8(a4),-(sp)
                move.l  #5,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d5
                beq.s   loc_FFCB0A9E
                move.w  d5,d6
                bra.s   loc_FFCB0AE0
; ---------------------------------------------------------------------------

loc_FFCB0A9E:                           ; CODE XREF: sub_FFCB0940+158↑j
                movea.l var_4(a6),a0
                subq.b  #1,$18(a0)
                tst.l   $12(a4)
                beq.s   loc_FFCB0AD4
                tst.b   $11(a4)
                beq.s   loc_FFCB0AD4
                movea.l $12(a4),a0
                movea.l (a0),a0
                cmpi.w  #$BF8C,(a0)
                beq.s   loc_FFCB0AD4
                movea.l $12(a4),a0
                movea.l (a0),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3964
                clr.b   $11(a4)
                addq.w  #4,sp

loc_FFCB0AD4:                           ; CODE XREF: sub_FFCB0940+16A↑j
                                        ; sub_FFCB0940+170↑j ...
                movea.l (a4),a4

loc_FFCB0AD6:                           ; CODE XREF: sub_FFCB0940+144↑j
                move.w  d7,d0
                addq.w  #1,d7

loc_FFCB0ADA:                           ; CODE XREF: sub_FFCB0940+140↑j
                cmp.w   4(a2),d7
                blt.s   loc_FFCB0A82

loc_FFCB0AE0:                           ; CODE XREF: sub_FFCB0940+15C↑j
                tst.w   d6
                bne.w   loc_FFCB0B6A
                clr.b   $12(a2)
                movea.l var_4(a6),a0
                movea.l $14(a0),a4
                cmpa.l  arg_0(a6),a4
                bne.s   loc_FFCB0AFE
                moveq   #0,d0
                move.l  d0,$14(a0)

loc_FFCB0AFE:                           ; CODE XREF: sub_FFCB0940+1B6↑j
                movea.l var_4(a6),a0
                movea.l $10(a0),a4
                move.l  a4,d0
                beq.s   loc_FFCB0B6A
                cmpa.l  arg_0(a6),a4
                beq.s   loc_FFCB0B58
                movea.l (a4),a0
                lea     $A(a0),a0
                movea.l var_4(a6),a1
                lea     $1C(a1),a1
                moveq   #1,d0

loc_FFCB0B20:                           ; CODE XREF: sub_FFCB0940+1E2↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFCB0B20
                bne.s   loc_FFCB0B58
                moveq   #0,d0
                move.l  d0,-(sp)
                movea.l var_4(a6),a0
                move.w  6(a0),d1
                ext.l   d1
                move.l  d1,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2488
                move.w  d0,d6
                lea     $C(sp),sp
                bne.s   loc_FFCB0B58
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB38DA
                movea.l (a4),a0
                move.w  #$FFFF,$18(a0)
                addq.w  #4,sp

loc_FFCB0B58:                           ; CODE XREF: sub_FFCB0940+1CE↑j
                                        ; sub_FFCB0940+1E6↑j ...
                movea.l var_4(a6),a0
                moveq   #0,d0
                move.l  d0,$10(a0)
                movea.l var_4(a6),a0
                clr.b   $18(a0)

loc_FFCB0B6A:                           ; CODE XREF: sub_FFCB0940+1A2↑j
                                        ; sub_FFCB0940+1C8↑j
                movea.l arg_0(a6),a0
                _HUnlock
                move.w  d6,arg_4(a6)

loc_FFCB0B74:                           ; CODE XREF: sub_FFCB0940+24↑j
                                        ; sub_FFCB0940+90↑j
                movem.l var_2C(a6),d4-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB0940


; =============== S U B R O U T I N E =======================================


sub_FFCB0B80:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; sub_FFCB07B0+2E↑p ...
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 3
                movea.l $58(a1),a1
                jmp     (a1)
; End of function sub_FFCB0B80

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0B90:                           ; DATA XREF: ROM:FFC07BAC↑o

var_36          = -$36
var_16          = -$16
var_10          = -$10
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-$16
                movem.l d3-d7/a2-a4,-(sp)
                clr.b   d6
                clr.b   d7
                clr.b   var_16(a6)
                clr.b   d3
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d5
                addq.w  #4,sp
                beq.s   loc_FFCB0BC0
                move.w  d5,arg_4(a6)
                bra.w   loc_FFCB0DD0
; ---------------------------------------------------------------------------

loc_FFCB0BC0:                           ; CODE XREF: sub_FFCB0B90+26↑j
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                tst.b   $12(a0)
                beq.s   loc_FFCB0BD4
                clr.w   arg_4(a6)
                bra.w   loc_FFCB0DD0
; ---------------------------------------------------------------------------

loc_FFCB0BD4:                           ; CODE XREF: sub_FFCB0B90+3A↑j
                movea.l $10(a3),a4
                move.l  $14(a3),var_8(a6)
                move.w  6(a3),d4
                movea.l arg_0(a6),a0
                movea.l (a0),a0
                lea     $A(a0),a0
                lea     $1C(a3),a1
                moveq   #1,d0

loc_FFCB0BF2:                           ; CODE XREF: sub_FFCB0B90+64↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFCB0BF2
                bne.s   loc_FFCB0BFC
                moveq   #1,d7

loc_FFCB0BFC:                           ; CODE XREF: sub_FFCB0B90+68↑j
                subq.l  #2,sp
                pea     var_10(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                subq.l  #2,sp
                pea     var_10(a6)
                pea     var_4(a6)
                jsr     sub_FFCB02E8
                subq.l  #2,sp
                pea     var_10(a6)
                jsr     sub_FFCB036E
                move.w  (sp)+,d5
                cmpi.w  #$F630,d5
                addq.w  #4,sp
                bne.s   loc_FFCB0C58
                tst.b   d7
                beq.s   loc_FFCB0C58
                move.l  a4,d0
                bne.s   loc_FFCB0C4A
                movea.l var_4(a6),a0
                tst.b   $A(a0)
                bne.s   loc_FFCB0C44
                clr.w   arg_4(a6)
                bra.w   loc_FFCB0DD0
; ---------------------------------------------------------------------------

loc_FFCB0C44:                           ; CODE XREF: sub_FFCB0B90+AA↑j
                move.b  #1,var_16(a6)

loc_FFCB0C4A:                           ; CODE XREF: sub_FFCB0B90+A0↑j
                tst.l   var_8(a6)
                beq.s   loc_FFCB0C58
                cmpa.l  var_8(a6),a4
                bne.s   loc_FFCB0C58
                moveq   #1,d3

loc_FFCB0C58:                           ; CODE XREF: sub_FFCB0B90+98↑j
                                        ; sub_FFCB0B90+9C↑j ...
                move.l  a4,d0
                beq.s   loc_FFCB0CCA
                tst.b   d3
                beq.s   loc_FFCB0C74
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d4
                move.l  d4,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2488
                lea     $C(sp),sp
                bra.s   loc_FFCB0CC4
; ---------------------------------------------------------------------------

loc_FFCB0C74:                           ; CODE XREF: sub_FFCB0B90+CE↑j
                movea.l (a4),a0
                lea     $A(a0),a0
                lea     $1C(a3),a1
                moveq   #1,d0

loc_FFCB0C80:                           ; CODE XREF: sub_FFCB0B90+F2↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFCB0C80
                bne.s   loc_FFCB0C8C
                moveq   #1,d6
                bra.s   loc_FFCB0C8E
; ---------------------------------------------------------------------------

loc_FFCB0C8C:                           ; CODE XREF: sub_FFCB0B90+F6↑j
                clr.b   d6

loc_FFCB0C8E:                           ; CODE XREF: sub_FFCB0B90+FA↑j
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB0B80
                tst.b   d6
                addq.w  #2,sp
                beq.s   loc_FFCB0CA6
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB38DA
                addq.w  #4,sp

loc_FFCB0CA6:                           ; CODE XREF: sub_FFCB0B90+10A↑j
                tst.l   var_8(a6)
                beq.s   loc_FFCB0CC4
                cmpa.l  var_8(a6),a4
                beq.s   loc_FFCB0CC4
                subq.l  #2,sp
                move.l  var_8(a6),-(sp)
                jsr     sub_FFCB0B80
                moveq   #0,d0
                move.l  d0,$14(a3)
                addq.w  #2,sp

loc_FFCB0CC4:                           ; CODE XREF: sub_FFCB0B90+E2↑j
                                        ; sub_FFCB0B90+11A↑j ...
                moveq   #0,d0
                move.l  d0,$10(a3)

loc_FFCB0CCA:                           ; CODE XREF: sub_FFCB0B90+CA↑j
                movea.l arg_0(a6),a0
                _HLock
                movea.l arg_0(a6),a0
                movea.l (a0),a2
                moveq   #$FFFFFFFF,d0
                cmp.w   $18(a2),d0
                beq.s   loc_FFCB0CF2
                cmp.w   $18(a2),d4
                beq.s   loc_FFCB0CF2
                move.w  $18(a2),d4
                move.w  d4,-(sp)
                move.l  #$80020004,-(sp)
                _ScriptUtil

loc_FFCB0CF2:                           ; CODE XREF: sub_FFCB0B90+14C↑j
                                        ; sub_FFCB0B90+152↑j
                clr.w   d5
                tst.b   d3
                bne.s   loc_FFCB0D44
                movea.l 6(a2),a4
                clr.w   d6
                bra.s   loc_FFCB0D3E
; ---------------------------------------------------------------------------

loc_FFCB0D00:                           ; CODE XREF: sub_FFCB0B90+1B2↓j
                move.l  a4,d0
                beq.s   loc_FFCB0D3A
                subq.l  #4,sp
                move.l  8(a4),-(sp)
                move.l  #4,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                beq.s   loc_FFCB0D1C
                move.w  d7,d5
                bra.s   loc_FFCB0D44
; ---------------------------------------------------------------------------

loc_FFCB0D1C:                           ; CODE XREF: sub_FFCB0B90+186↑j
                addq.b  #1,$18(a3)
                tst.l   $12(a4)
                beq.s   loc_FFCB0D38
                move.l  $12(a4),-(sp)
                moveq   #0,d0
                move.w  d0,-(sp)
                _InsertMenu
                _DrawMenuBar
                move.b  #1,$11(a4)

loc_FFCB0D38:                           ; CODE XREF: sub_FFCB0B90+194↑j
                movea.l (a4),a4

loc_FFCB0D3A:                           ; CODE XREF: sub_FFCB0B90+172↑j
                move.w  d6,d0
                addq.w  #1,d6

loc_FFCB0D3E:                           ; CODE XREF: sub_FFCB0B90+16E↑j
                cmp.w   4(a2),d6
                blt.s   loc_FFCB0D00

loc_FFCB0D44:                           ; CODE XREF: sub_FFCB0B90+166↑j
                                        ; sub_FFCB0B90+18A↑j
                tst.b   var_16(a6)
                bne.s   loc_FFCB0D64
                movea.l var_4(a6),a0
                tst.b   $A(a0)
                beq.s   loc_FFCB0D64
                clr.b   $A(a0)
                movea.l var_4(a6),a0
                movea.l a0,a1
                move.b  $B(a0),8(a1)

loc_FFCB0D64:                           ; CODE XREF: sub_FFCB0B90+1B8↑j
                                        ; sub_FFCB0B90+1C2↑j
                tst.w   d5
                bne.s   loc_FFCB0DC6
                move.b  #1,$12(a2)
                move.l  arg_0(a6),$10(a3)
                tst.b   d3
                bne.s   loc_FFCB0D7E
                move.l  arg_0(a6),$14(a3)

loc_FFCB0D7E:                           ; CODE XREF: sub_FFCB0B90+1E6↑j
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB016C
                pea     $A(a2)
                ext.l   d4
                move.l  d4,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                lea     $C(sp),sp
                beq.s   loc_FFCB0DAE
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB3084
                move.w  d0,d5
                addq.w  #4,sp
                bne.s   loc_FFCB0DC6
                addq.b  #1,$18(a3)
                bra.s   loc_FFCB0DC6
; ---------------------------------------------------------------------------

loc_FFCB0DAE:                           ; CODE XREF: sub_FFCB0B90+208↑j
                tst.l   $A(a3)
                beq.s   loc_FFCB0DC6
                move.w  6(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  $A(a3),-(sp)
                jsr     sub_FFCB275E
                addq.w  #8,sp

loc_FFCB0DC6:                           ; CODE XREF: sub_FFCB0B90+1D6↑j
                                        ; sub_FFCB0B90+216↑j ...
                movea.l arg_0(a6),a0
                _HUnlock
                move.w  d5,arg_4(a6)

loc_FFCB0DD0:                           ; CODE XREF: sub_FFCB0B90+2C↑j
                                        ; sub_FFCB0B90+40↑j ...
                movem.l var_36(a6),d3-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB0B90

; ---------------------------------------------------------------------------

loc_FFCB0DDC:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 2
                movea.l $5C(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0DF0:                           ; DATA XREF: ROM:FFC07BB0↑o

var_14          = -$14
arg_0           =  8
arg_6           =  $E
arg_8           =  $10

                link    a6,#-4
                movem.l d7/a2-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                moveq   #0,d7
                movea.l arg_8(a6),a0
                movea.l (a0),a2
                moveq   #0,d0
                move.b  $12(a2),d0
                tst.l   d0
                bne.s   loc_FFCB0E16
                moveq   #0,d0
                bra.s   loc_FFCB0E7C
; ---------------------------------------------------------------------------

loc_FFCB0E16:                           ; CODE XREF: sub_FFCB0DF0+20↑j
                move.w  arg_6(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                asl.l   #4,d0
                lea     $1E(a2,d0.l),a4
                tst.l   4(a4)
                addq.w  #4,sp
                beq.s   loc_FFCB0E7A
                tst.b   $D(a4)
                bne.s   loc_FFCB0E3A
                moveq   #0,d0
                bra.s   loc_FFCB0E7C
; ---------------------------------------------------------------------------

loc_FFCB0E3A:                           ; CODE XREF: sub_FFCB0DF0+44↑j
                ori.b   #4,$5E(a3)
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$60006,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                andi.b  #$FB,$5E(a3)
                tst.l   d7
                addq.w  #4,sp
                beq.s   loc_FFCB0E7A
                moveq   #1,d0
                bra.s   loc_FFCB0E7C
; ---------------------------------------------------------------------------

loc_FFCB0E7A:                           ; CODE XREF: sub_FFCB0DF0+3E↑j
                                        ; sub_FFCB0DF0+84↑j
                moveq   #0,d0

loc_FFCB0E7C:                           ; CODE XREF: sub_FFCB0DF0+24↑j
                                        ; sub_FFCB0DF0+48↑j ...
                movem.l var_14(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB0DF0


; =============== S U B R O U T I N E =======================================


sub_FFCB0E86:                           ; CODE XREF: sub_FFCB0E90+46↓p
                                        ; sub_FFCB0F00+70↓p
                movea.l ($2078).w,a1
                movea.l $60(a1),a1
                jmp     (a1)
; End of function sub_FFCB0E86


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0E90:                           ; DATA XREF: ROM:FFC07BB4↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                move.w  6(a4),d7
                movea.l $10(a4),a3
                pea     $1C(a4)
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFCB0EE4
                move.l  a3,-(sp)
                jsr     sub_FFCB2518
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFCB0ECC
                clr.b   arg_4(a6)
                bra.s   loc_FFCB0EE8
; ---------------------------------------------------------------------------

loc_FFCB0ECC:                           ; CODE XREF: sub_FFCB0E90+34↑j
                move.l  a3,-(sp)
                ext.l   d7
                move.l  d7,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB0E86
                move.b  d0,arg_4(a6)
                lea     $C(sp),sp
                bra.s   loc_FFCB0EE8
; ---------------------------------------------------------------------------

loc_FFCB0EE4:                           ; CODE XREF: sub_FFCB0E90+28↑j
                clr.b   arg_4(a6)

loc_FFCB0EE8:                           ; CODE XREF: sub_FFCB0E90+3A↑j
                                        ; sub_FFCB0E90+52↑j
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB0E90

; ---------------------------------------------------------------------------

loc_FFCB0EF4:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 25
                movea.l $64(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB0F00:                           ; DATA XREF: ROM:FFC07BB8↑o

var_28          = -$28
var_10          = -$10
var_C           = -$C
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#-$10
                movem.l d4-d7/a3-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                move.w  6(a3),d5
                moveq   #1,d6
                moveq   #0,d7
                andi.b  #$EF,$5E(a3)
                move.l  $14(a3),var_10(a6)
                move.l  var_10(a6),-(sp)
                jsr     sub_FFCB2518
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFCB0F3A
                clr.b   arg_4(a6)
                bra.w   loc_FFCB0FF4
; ---------------------------------------------------------------------------

loc_FFCB0F3A:                           ; CODE XREF: sub_FFCB0F00+30↑j
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                move.w  (sp)+,d4
                beq.s   loc_FFCB0F52
                clr.b   arg_4(a6)
                bra.w   loc_FFCB0FF4
; ---------------------------------------------------------------------------

loc_FFCB0F52:                           ; CODE XREF: sub_FFCB0F00+48↑j
                pea     var_8(a6)
                ext.l   d5
                move.l  d5,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFCB0F84
                move.l  var_10(a6),-(sp)
                ext.l   d5
                move.l  d5,-(sp)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB0E86
                move.b  d0,d4
                lea     $C(sp),sp
                beq.s   loc_FFCB0F84
                move.b  #1,arg_4(a6)
                bra.s   loc_FFCB0FF4
; ---------------------------------------------------------------------------

loc_FFCB0F84:                           ; CODE XREF: sub_FFCB0F00+62↑j
                                        ; sub_FFCB0F00+7A↑j
                movea.l var_10(a6),a0
                movea.l (a0),a0
                move.l  a0,var_C(a6)
                tst.w   4(a0)
                bne.s   loc_FFCB0F9A
                clr.b   arg_4(a6)
                bra.s   loc_FFCB0FF4
; ---------------------------------------------------------------------------

loc_FFCB0F9A:                           ; CODE XREF: sub_FFCB0F00+92↑j
                movea.l var_10(a6),a0
                _HLock
                movea.l var_10(a6),a0
                movea.l (a0),a0
                move.l  a0,var_C(a6)
                movea.l 6(a0),a4
                bra.s   loc_FFCB0FDA
; ---------------------------------------------------------------------------

loc_FFCB0FB0:                           ; CODE XREF: sub_FFCB0F00+DC↓j
                ori.b   #4,$5E(a3)
                subq.l  #4,sp
                move.l  8(a4),-(sp)
                move.w  d6,-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$60006,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                andi.b  #$FB,$5E(a3)
                tst.l   d7
                bne.s   loc_FFCB0FDE
                movea.l (a4),a4

loc_FFCB0FDA:                           ; CODE XREF: sub_FFCB0F00+AE↑j
                move.l  a4,d0
                bne.s   loc_FFCB0FB0

loc_FFCB0FDE:                           ; CODE XREF: sub_FFCB0F00+D6↑j
                movea.l var_10(a6),a0
                _HUnlock
                tst.l   d7
                beq.s   loc_FFCB0FF0
                move.b  #1,arg_4(a6)
                bra.s   loc_FFCB0FF4
; ---------------------------------------------------------------------------

loc_FFCB0FF0:                           ; CODE XREF: sub_FFCB0F00+E6↑j
                clr.b   arg_4(a6)

loc_FFCB0FF4:                           ; CODE XREF: sub_FFCB0F00+36↑j
                                        ; sub_FFCB0F00+4E↑j ...
                movem.l var_28(a6),d4-d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB0F00

; ---------------------------------------------------------------------------

loc_FFCB1000:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 4
                movea.l $68(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1010:                           ; DATA XREF: ROM:FFC07BBC↑o

var_24          = -$24
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l d4-d7/a2-a4,-(sp)
                move.l  arg_0(a6),d7
                moveq   #0,d6
                movea.l ($2B6).w,a0
                movea.l $64(a0),a0
                move.l  a0,var_8(a6)
                movea.l $10(a0),a2
                move.l  a2,-(sp)
                jsr     sub_FFCB2518
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFCB1042
                clr.b   arg_4(a6)
                bra.w   loc_FFCB1136
; ---------------------------------------------------------------------------

loc_FFCB1042:                           ; CODE XREF: sub_FFCB1010+28↑j
                movea.l (a2),a3
                moveq   #0,d0
                move.b  $12(a3),d0
                tst.l   d0
                bne.s   loc_FFCB1056
                clr.b   arg_4(a6)
                bra.w   loc_FFCB1136
; ---------------------------------------------------------------------------

loc_FFCB1056:                           ; CODE XREF: sub_FFCB1010+3C↑j
                moveq   #$10,d0
                move.l  d7,d5
                asr.l   d0,d5
                move.w  d7,d0
                ext.l   d0
                move.w  #$FFFF,d4
                and.w   d0,d4
                pea     $A(a3)
                movea.l var_8(a6),a0
                move.w  6(a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFCB10DA
                movea.l var_8(a6),a0
                move.w  6(a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                asl.l   #4,d0
                lea     $1E(a3,d0.l),a4
                tst.l   4(a4)
                addq.w  #4,sp
                beq.s   loc_FFCB10DA
                cmpi.w  #$BF8C,d5
                bne.s   loc_FFCB10DA
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  8(a4),-(sp)
                move.w  d4,-(sp)
                move.l  #$60008,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d6
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                tst.l   d6
                addq.w  #4,sp
                beq.s   loc_FFCB10DA
                move.b  #1,arg_4(a6)
                bra.s   loc_FFCB1136
; ---------------------------------------------------------------------------

loc_FFCB10DA:                           ; CODE XREF: sub_FFCB1010+6E↑j
                                        ; sub_FFCB1010+8C↑j ...
                movea.l a2,a0
                _HLock
                movea.l (a2),a3
                movea.l 6(a3),a4
                clr.w   d7
                bra.s   loc_FFCB111C
; ---------------------------------------------------------------------------

loc_FFCB10E8:                           ; CODE XREF: sub_FFCB1010+110↓j
                move.l  a4,d0
                beq.s   loc_FFCB1118
                tst.l   $12(a4)
                beq.s   loc_FFCB1118
                movea.l $12(a4),a0
                movea.l (a0),a0
                cmp.w   (a0),d5
                bne.s   loc_FFCB1116
                subq.l  #4,sp
                move.l  8(a4),-(sp)
                move.l  $12(a4),-(sp)
                move.w  d4,-(sp)
                move.l  #$60008,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d6
                bne.s   loc_FFCB1122

loc_FFCB1116:                           ; CODE XREF: sub_FFCB1010+EA↑j
                movea.l (a4),a4

loc_FFCB1118:                           ; CODE XREF: sub_FFCB1010+DA↑j
                                        ; sub_FFCB1010+E0↑j
                move.w  d7,d0
                addq.w  #1,d7

loc_FFCB111C:                           ; CODE XREF: sub_FFCB1010+D6↑j
                cmp.w   4(a3),d7
                blt.s   loc_FFCB10E8

loc_FFCB1122:                           ; CODE XREF: sub_FFCB1010+104↑j
                movea.l a2,a0
                _HUnlock
                tst.l   d6
                beq.s   loc_FFCB1132
                move.b  #1,arg_4(a6)
                bra.s   loc_FFCB1136
; ---------------------------------------------------------------------------

loc_FFCB1132:                           ; CODE XREF: sub_FFCB1010+118↑j
                clr.b   arg_4(a6)

loc_FFCB1136:                           ; CODE XREF: sub_FFCB1010+2E↑j
                                        ; sub_FFCB1010+42↑j ...
                movem.l var_24(a6),d4-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB1010

; ---------------------------------------------------------------------------

loc_FFCB1142:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 5
                movea.l $6C(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1150:                           ; DATA XREF: ROM:FFC07BC0↑o

var_18          = -$18
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d7
                movea.l ($2B6).w,a0
                movea.l $64(a0),a2
                move.l  a4,-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d6
                addq.w  #4,sp
                beq.s   loc_FFCB1178
                move.w  d6,arg_4(a6)
                bra.s   loc_FFCB11F6
; ---------------------------------------------------------------------------

loc_FFCB1178:                           ; CODE XREF: sub_FFCB1150+20↑j
                movea.l (a4),a3
                tst.b   $12(a3)
                bne.s   loc_FFCB1188
                move.w  #$F635,arg_4(a6)
                bra.s   loc_FFCB11F6
; ---------------------------------------------------------------------------

loc_FFCB1188:                           ; CODE XREF: sub_FFCB1150+2E↑j
                pea     $A(a3)
                move.w  6(a2),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFCB11F2
                move.w  6(a2),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                asl.l   #4,d0
                lea     $1E(a3,d0.l),a4
                tst.l   4(a4)
                addq.w  #4,sp
                beq.s   loc_FFCB11EC
                tst.b   $D(a4)
                bne.s   loc_FFCB11C6
                move.w  #$F62E,arg_4(a6)
                bra.s   loc_FFCB11F6
; ---------------------------------------------------------------------------

loc_FFCB11C6:                           ; CODE XREF: sub_FFCB1150+6C↑j
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #9,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                addq.w  #4,sp
                bra.s   loc_FFCB11F2
; ---------------------------------------------------------------------------

loc_FFCB11EC:                           ; CODE XREF: sub_FFCB1150+66↑j
                move.l  #$FFFFF634,d7

loc_FFCB11F2:                           ; CODE XREF: sub_FFCB1150+4C↑j
                                        ; sub_FFCB1150+9A↑j
                move.w  d7,arg_4(a6)

loc_FFCB11F6:                           ; CODE XREF: sub_FFCB1150+26↑j
                                        ; sub_FFCB1150+36↑j ...
                movem.l var_18(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB1150


; =============== S U B R O U T I N E =======================================


sub_FFCB1202:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; sub_FFCB1960+1D0↓p ...
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 7
                movea.l $70(a1),a1
                jmp     (a1)
; End of function sub_FFCB1202

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1210:                           ; DATA XREF: ROM:FFC07BC4↑o

var_1C          = -$1C
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l d6-d7/a2-a4,-(sp)
                moveq   #0,d6
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                movea.l $10(a4),a2
                move.l  a2,-(sp)
                jsr     sub_FFCB2518
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFCB123A
                clr.b   arg_4(a6)
                bra.w   loc_FFCB1322
; ---------------------------------------------------------------------------

loc_FFCB123A:                           ; CODE XREF: sub_FFCB1210+20↑j
                movea.l (a2),a3
                moveq   #0,d0
                move.b  $12(a3),d0
                tst.l   d0
                bne.s   loc_FFCB124E
                clr.b   arg_4(a6)
                bra.w   loc_FFCB1322
; ---------------------------------------------------------------------------

loc_FFCB124E:                           ; CODE XREF: sub_FFCB1210+34↑j
                pea     $A(a3)
                move.w  6(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFCB12D8
                move.w  6(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                asl.l   #4,d0
                lea     $1E(a3,d0.l),a0
                move.l  a0,var_8(a6)
                tst.l   4(a0)
                addq.w  #4,sp
                beq.s   loc_FFCB12D8
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                andi.b  #$FE,$5E(a4)
                subq.l  #4,sp
                movea.l var_8(a6),a0
                move.l  4(a0),-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$4000A,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d6
                beq.s   loc_FFCB12B8
                ori.b   #1,$5E(a4)
                move.b  $5E(a4),d0
                bra.s   loc_FFCB12C2
; ---------------------------------------------------------------------------

loc_FFCB12B8:                           ; CODE XREF: sub_FFCB1210+9A↑j
                andi.b  #$FE,$5E(a4)
                move.b  $5E(a4),d0

loc_FFCB12C2:                           ; CODE XREF: sub_FFCB1210+A6↑j
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                tst.l   d6
                addq.w  #4,sp
                beq.s   loc_FFCB12D8
                move.b  #1,arg_4(a6)
                bra.s   loc_FFCB1322
; ---------------------------------------------------------------------------

loc_FFCB12D8:                           ; CODE XREF: sub_FFCB1210+52↑j
                                        ; sub_FFCB1210+70↑j ...
                movea.l a2,a0
                _HLock
                movea.l (a2),a3
                movea.l 6(a3),a4
                clr.w   d7
                bra.s   loc_FFCB1308
; ---------------------------------------------------------------------------

loc_FFCB12E6:                           ; CODE XREF: sub_FFCB1210+FC↓j
                move.l  a4,d0
                beq.s   loc_FFCB130E
                subq.l  #4,sp
                move.l  8(a4),-(sp)
                move.l  arg_0(a6),-(sp)
                move.l  #$4000A,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d6
                bne.s   loc_FFCB130E
                movea.l (a4),a4
                move.w  d7,d0
                addq.w  #1,d7

loc_FFCB1308:                           ; CODE XREF: sub_FFCB1210+D4↑j
                cmp.w   4(a3),d7
                blt.s   loc_FFCB12E6

loc_FFCB130E:                           ; CODE XREF: sub_FFCB1210+D8↑j
                                        ; sub_FFCB1210+F0↑j
                movea.l a2,a0
                _HUnlock
                tst.l   d6
                beq.s   loc_FFCB131E
                move.b  #1,arg_4(a6)
                bra.s   loc_FFCB1322
; ---------------------------------------------------------------------------

loc_FFCB131E:                           ; CODE XREF: sub_FFCB1210+104↑j
                clr.b   arg_4(a6)

loc_FFCB1322:                           ; CODE XREF: sub_FFCB1210+26↑j
                                        ; sub_FFCB1210+3A↑j ...
                movem.l var_1C(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB1210

; ---------------------------------------------------------------------------

loc_FFCB132E:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 6
                movea.l $74(a1),a1
                jmp     (a1)
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

; Attributes: bp-based frame

sub_FFCB1340:                           ; DATA XREF: ROM:FFC07BC8↑o

var_48          = -$48
var_2C          = -$2C
var_28          = -$28
var_24          = -$24
var_20          = -$20
var_1C          = -$1C
var_18          = -$18
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_E           =  $16

                link    a6,#-$2C
                movem.l d4-d7/a2-a4,-(sp)
                movea.l arg_4(a6),a3
                move.l  #$100,d0
                _NewHandle
                move.l  a0,var_4(a6)
                bne.s   loc_FFCB1364
                move.w  #$FF94,arg_E(a6)
                bra.w   loc_FFCB1498
; ---------------------------------------------------------------------------

loc_FFCB1364:                           ; CODE XREF: sub_FFCB1340+18↑j
                tst.w   arg_C(a6)
                bne.s   loc_FFCB1374
                move.w  #$FFCE,arg_E(a6)
                bra.w   loc_FFCB1498
; ---------------------------------------------------------------------------

loc_FFCB1374:                           ; CODE XREF: sub_FFCB1340+28↑j
                tst.l   (a3)
                bne.s   loc_FFCB138E
                move.l  #$106,d0
                _NewHandle
                move.l  a0,(a3)
                bne.s   loc_FFCB138E
                move.w  #$FF94,arg_E(a6)
                bra.w   loc_FFCB1498
; ---------------------------------------------------------------------------

loc_FFCB138E:                           ; CODE XREF: sub_FFCB1340+36↑j
                                        ; sub_FFCB1340+42↑j
                movea.l (a3),a0
                movea.l (a0),a0
                clr.w   (a0)
                clr.w   d4
                bra.w   loc_FFCB1480
; ---------------------------------------------------------------------------

loc_FFCB139A:                           ; CODE XREF: sub_FFCB1340+144↓j
                ext.l   d4
                movea.l arg_8(a6),a0
                move.l  (a0,d4.l*4),var_2C(a6)
                moveq   #0,d0
                move.l  d0,var_1C(a6)
                move.l  d0,var_20(a6)
                move.l  d0,var_24(a6)
                move.l  d0,var_28(a6)
                subq.l  #4,sp
                pea     var_2C(a6)
                moveq   #3,d0
                _ComponentDispatch
                move.l  (sp)+,d5
                ble.w   loc_FFCB147C
                subq.l  #4,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_2C(a6)
                moveq   #4,d0
                _ComponentDispatch
                movea.l (sp)+,a4
                move.l  a4,d0
                bne.s   loc_FFCB13E6
                move.w  #$F632,arg_E(a6)
                bra.w   loc_FFCB1498
; ---------------------------------------------------------------------------

loc_FFCB13E6:                           ; CODE XREF: sub_FFCB1340+9A↑j
                clr.w   d6
                bra.w   loc_FFCB1476
; ---------------------------------------------------------------------------

loc_FFCB13EC:                           ; CODE XREF: sub_FFCB1340+138↓j
                tst.l   d5
                beq.w   loc_FFCB147C
                subq.l  #2,sp
                move.l  a4,-(sp)
                pea     var_18(a6)
                move.l  var_4(a6),-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFCB1464
                ext.l   d6
                move.l  d6,-(sp)
                move.l  (a3),-(sp)
                jsr     sub_FFCB25C8
                move.w  d0,d7
                addq.w  #8,sp
                beq.s   loc_FFCB1422
                move.w  d7,arg_E(a6)
                bra.s   loc_FFCB1498
; ---------------------------------------------------------------------------

loc_FFCB1422:                           ; CODE XREF: sub_FFCB1340+DA↑j
                ext.l   d6
                movea.l (a3),a0
                movea.l (a0),a0
                move.l  d6,d0
                muls.l  #$104,d0
                move.l  a4,2(a0,d0.l)
                movea.l var_4(a6),a1
                movea.l (a1),a0
                ext.l   d6
                movea.l (a3),a2
                movea.l (a2),a2
                move.l  d6,d0
                muls.l  #$104,d0
                lea     6(a2,d0.l),a2
                movea.l a2,a1
                move.l  #$100,d0
                _BlockMove
                movea.l (a3),a0
                movea.l (a0),a0
                addq.w  #1,(a0)
                move.w  d6,d0
                addq.w  #1,d6

loc_FFCB1464:                           ; CODE XREF: sub_FFCB1340+CA↑j
                move.l  d5,d0
                subq.l  #1,d5
                subq.l  #4,sp
                move.l  a4,-(sp)
                pea     var_2C(a6)
                moveq   #4,d0
                _ComponentDispatch
                movea.l (sp)+,a4

loc_FFCB1476:                           ; CODE XREF: sub_FFCB1340+A8↑j
                move.l  a4,d0
                bne.w   loc_FFCB13EC

loc_FFCB147C:                           ; CODE XREF: sub_FFCB1340+84↑j
                                        ; sub_FFCB1340+AE↑j
                move.w  d4,d0
                addq.w  #1,d4

loc_FFCB1480:                           ; CODE XREF: sub_FFCB1340+56↑j
                cmp.w   arg_C(a6),d4
                blt.w   loc_FFCB139A
                subq.l  #4,sp
                moveq   #6,d0
                _ComponentDispatch
                movea.l arg_0(a6),a0
                move.l  (sp)+,(a0)
                clr.w   arg_E(a6)

loc_FFCB1498:                           ; CODE XREF: sub_FFCB1340+20↑j
                                        ; sub_FFCB1340+30↑j ...
                movem.l var_48(a6),d4-d7/a2-a4
                unlk    a6
                rtd     #$E
; End of function sub_FFCB1340

; ---------------------------------------------------------------------------

loc_FFCB14A4:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 8
                movea.l $78(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB14B0:                           ; DATA XREF: ROM:FFC07BCC↑o

var_34          = -$34
var_1C          = -$1C
var_18          = -$18
var_14          = -$14
var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14

                link    a6,#-$1C
                movem.l d4-d7/a3-a4,-(sp)
                moveq   #0,d5
                clr.b   d6
                moveq   #0,d0
                movea.l d0,a3
                move.l  d0,var_18(a6)
                movea.l arg_0(a6),a0
                move.l  d0,(a0)
                move.l  arg_8(a6),-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d4
                addq.w  #4,sp
                beq.s   loc_FFCB14E0
                move.w  d4,arg_C(a6)
                bra.w   loc_FFCB162C
; ---------------------------------------------------------------------------

loc_FFCB14E0:                           ; CODE XREF: sub_FFCB14B0+26↑j
                movea.l arg_8(a6),a0
                movea.l (a0),a0
                move.l  a0,var_1C(a6)
                movea.l 6(a0),a4
                clr.w   d7
                bra.s   loc_FFCB150E
; ---------------------------------------------------------------------------

loc_FFCB14F2:                           ; CODE XREF: sub_FFCB14B0+66↓j
                move.l  a4,d0
                beq.s   loc_FFCB150A
                move.l  4(a4),d0
                cmp.l   arg_4(a6),d0
                bne.s   loc_FFCB1508
                moveq   #1,d6
                movea.l 8(a4),a3
                bra.s   loc_FFCB1518
; ---------------------------------------------------------------------------

loc_FFCB1508:                           ; CODE XREF: sub_FFCB14B0+4E↑j
                movea.l (a4),a4

loc_FFCB150A:                           ; CODE XREF: sub_FFCB14B0+44↑j
                move.w  d7,d0
                addq.w  #1,d7

loc_FFCB150E:                           ; CODE XREF: sub_FFCB14B0+40↑j
                movea.l var_1C(a6),a0
                cmp.w   4(a0),d7
                blt.s   loc_FFCB14F2

loc_FFCB1518:                           ; CODE XREF: sub_FFCB14B0+56↑j
                tst.b   d6
                bne.w   loc_FFCB15F8
                subq.l  #2,sp
                move.l  arg_4(a6),-(sp)
                pea     var_14(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d4
                beq.s   loc_FFCB1540
                move.w  d4,arg_C(a6)
                bra.w   loc_FFCB162C
; ---------------------------------------------------------------------------

loc_FFCB1540:                           ; CODE XREF: sub_FFCB14B0+86↑j
                subq.l  #4,sp
                move.l  arg_4(a6),-(sp)
                moveq   #7,d0
                _ComponentDispatch
                movea.l (sp)+,a3
                move.l  a3,d0
                bne.s   loc_FFCB155A
                move.w  #$F633,arg_C(a6)
                bra.w   loc_FFCB162C
; ---------------------------------------------------------------------------

loc_FFCB155A:                           ; CODE XREF: sub_FFCB14B0+9E↑j
                moveq   #$16,d0
                _NewPtr
                movea.l a0,a4
                move.l  a4,d0
                bne.s   loc_FFCB1578
                subq.l  #2,sp
                move.l  a3,-(sp)
                moveq   #8,d0
                _ComponentDispatch
                move.w  #$FF94,arg_C(a6)
                addq.w  #2,sp
                bra.w   loc_FFCB162C
; ---------------------------------------------------------------------------

loc_FFCB1578:                           ; CODE XREF: sub_FFCB14B0+B2↑j
                move.l  arg_4(a6),4(a4)
                move.l  a3,8(a4)
                move.l  #$7F00,d0
                and.l   var_8(a6),d0
                lsr.l   #8,d0
                move.w  d0,$C(a4)
                move.w  #$FF,d0
                and.w   var_8+2(a6),d0
                move.w  d0,$E(a4)
                moveq   #$F,d0
                and.l   var_8(a6),d0
                beq.s   loc_FFCB15AA
                moveq   #1,d0
                bra.s   loc_FFCB15AC
; ---------------------------------------------------------------------------

loc_FFCB15AA:                           ; CODE XREF: sub_FFCB14B0+F4↑j
                moveq   #0,d0

loc_FFCB15AC:                           ; CODE XREF: sub_FFCB14B0+F8↑j
                move.b  d0,$10(a4)
                clr.b   $11(a4)
                moveq   #0,d0
                move.l  d0,$12(a4)
                subq.l  #4,sp
                move.l  a3,-(sp)
                pea     var_18(a6)
                move.l  #$40007,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d5
                bne.s   loc_FFCB15EA
                move.l  var_18(a6),$12(a4)
                beq.s   loc_FFCB15EA
                move.l  var_18(a6),-(sp)
                moveq   #0,d0
                move.w  d0,-(sp)
                _InsertMenu
                _DrawMenuBar
                move.b  #1,$11(a4)

loc_FFCB15EA:                           ; CODE XREF: sub_FFCB14B0+11E↑j
                                        ; sub_FFCB14B0+126↑j
                move.l  a4,-(sp)
                movea.l arg_8(a6),a0
                move.l  (a0),-(sp)
                jsr     sub_FFCB256C
                addq.w  #8,sp

loc_FFCB15F8:                           ; CODE XREF: sub_FFCB14B0+6A↑j
                movea.l arg_0(a6),a0
                move.l  a3,(a0)
                subq.l  #4,sp
                move.l  a3,-(sp)
                move.l  #2,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d5
                subq.l  #4,sp
                move.l  a3,-(sp)
                move.l  #4,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d5
                tst.b   d6
                beq.s   loc_FFCB1628
                move.l  #$FFFFF62D,d5

loc_FFCB1628:                           ; CODE XREF: sub_FFCB14B0+170↑j
                move.w  d5,arg_C(a6)

loc_FFCB162C:                           ; CODE XREF: sub_FFCB14B0+2C↑j
                                        ; sub_FFCB14B0+8C↑j ...
                movem.l var_34(a6),d4-d7/a3-a4
                unlk    a6
                rtd     #$C
; End of function sub_FFCB14B0

; ---------------------------------------------------------------------------

loc_FFCB1638:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 9
                movea.l $7C(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1650:                           ; DATA XREF: ROM:FFC07BD0↑o

var_14          = -$14
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-4
                movem.l d7/a2-a4,-(sp)
                moveq   #0,d7
                moveq   #0,d0
                movea.l d0,a4
                movea.l d0,a2
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d7
                addq.w  #4,sp
                beq.s   loc_FFCB1676
                move.w  d7,arg_8(a6)
                bra.w   loc_FFCB1712
; ---------------------------------------------------------------------------

loc_FFCB1676:                           ; CODE XREF: sub_FFCB1650+1C↑j
                movea.l arg_4(a6),a0
                _HLock
                movea.l arg_4(a6),a0
                movea.l (a0),a3
                tst.w   4(a3)
                beq.s   loc_FFCB1706
                movea.l 6(a3),a4
                bra.s   loc_FFCB1702
; ---------------------------------------------------------------------------

loc_FFCB168E:                           ; CODE XREF: sub_FFCB1650+B4↓j
                move.l  8(a4),d0
                cmp.l   arg_0(a6),d0
                bne.s   loc_FFCB16FE
                cmpa.l  6(a3),a4
                bne.s   loc_FFCB16A4
                move.l  (a4),6(a3)
                bra.s   loc_FFCB16A6
; ---------------------------------------------------------------------------

loc_FFCB16A4:                           ; CODE XREF: sub_FFCB1650+4C↑j
                move.l  (a4),(a2)

loc_FFCB16A6:                           ; CODE XREF: sub_FFCB1650+52↑j
                tst.l   $12(a4)
                beq.s   loc_FFCB16E0
                movea.l $12(a4),a0
                movea.l (a0),a0
                cmpi.w  #$BF8C,(a0)
                beq.s   loc_FFCB16E0
                tst.b   $11(a4)
                beq.s   loc_FFCB16D4
                movea.l $12(a4),a0
                movea.l (a0),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3964
                clr.b   $11(a4)
                addq.w  #4,sp

loc_FFCB16D4:                           ; CODE XREF: sub_FFCB1650+6C↑j
                movea.l $12(a4),a0
                _DisposeHandle
                moveq   #0,d0
                move.l  d0,$12(a4)

loc_FFCB16E0:                           ; CODE XREF: sub_FFCB1650+5A↑j
                                        ; sub_FFCB1650+66↑j
                subq.w  #1,4(a3)
                movea.l a4,a0
                _DisposePtr
                movea.l arg_4(a6),a0
                _HUnlock
                subq.l  #2,sp
                move.l  arg_0(a6),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                move.w  (sp)+,arg_8(a6)
                bra.s   loc_FFCB1712
; ---------------------------------------------------------------------------

loc_FFCB16FE:                           ; CODE XREF: sub_FFCB1650+46↑j
                movea.l a4,a2
                movea.l (a4),a4

loc_FFCB1702:                           ; CODE XREF: sub_FFCB1650+3C↑j
                move.l  a4,d0
                bne.s   loc_FFCB168E

loc_FFCB1706:                           ; CODE XREF: sub_FFCB1650+36↑j
                movea.l arg_4(a6),a0
                _HUnlock
                move.w  #$F634,arg_8(a6)

loc_FFCB1712:                           ; CODE XREF: sub_FFCB1650+22↑j
                                        ; sub_FFCB1650+AC↑j
                movem.l var_14(a6),d7/a2-a4
                unlk    a6
                rtd     #8
; End of function sub_FFCB1650

; ---------------------------------------------------------------------------

loc_FFCB171E:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 10
                movea.l $80(a1),a1
                jmp     (a1)
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

; Attributes: bp-based frame

sub_FFCB1730:                           ; DATA XREF: ROM:FFC07BD4↑o

var_20          = -$20
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-$C
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                cmpa.l  $4C(a3),a2
                bne.s   loc_FFCB1758
                movea.l arg_8(a6),a0
                move.l  $50(a3),(a0)
                moveq   #0,d0
                bra.w   loc_FFCB1800
; ---------------------------------------------------------------------------

loc_FFCB1758:                           ; CODE XREF: sub_FFCB1730+18↑j
                movea.l arg_4(a6),a0
                move.w  2(a0),d6
                clr.w   d7
                bra.w   loc_FFCB17F6
; ---------------------------------------------------------------------------

loc_FFCB1766:                           ; CODE XREF: sub_FFCB1730+C8↓j
                ext.l   d7
                movea.l arg_4(a6),a0
                move.l  4(a0,d7.l*4),var_C(a6)
                beq.s   loc_FFCB17F2
                movea.l var_C(a6),a0
                move.l  (a0),var_8(a6)
                move.w  6(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                movea.l var_8(a6),a0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a0
                move.l  a0,var_4(a6)
                cmpa.l  4(a0),a2
                addq.w  #4,sp
                bne.s   loc_FFCB17BA
                movea.l var_8(a6),a0
                movea.l arg_8(a6),a1
                move.l  $14(a0),(a1)
                move.l  a2,$4C(a3)
                movea.l arg_8(a6),a0
                move.l  (a0),$50(a3)
                moveq   #0,d0
                bra.s   loc_FFCB1800
; ---------------------------------------------------------------------------

loc_FFCB17BA:                           ; CODE XREF: sub_FFCB1730+6C↑j
                movea.l var_8(a6),a0
                tst.w   4(a0)
                beq.s   loc_FFCB17F2
                movea.l 6(a0),a4
                bra.s   loc_FFCB17EE
; ---------------------------------------------------------------------------

loc_FFCB17CA:                           ; CODE XREF: sub_FFCB1730+C0↓j
                cmpa.l  8(a4),a2
                bne.s   loc_FFCB17EC
                movea.l var_8(a6),a0
                movea.l arg_8(a6),a1
                move.l  $14(a0),(a1)
                move.l  a2,$4C(a3)
                movea.l arg_8(a6),a0
                move.l  (a0),$50(a3)
                moveq   #0,d0
                bra.s   loc_FFCB1800
; ---------------------------------------------------------------------------

loc_FFCB17EC:                           ; CODE XREF: sub_FFCB1730+9E↑j
                movea.l (a4),a4

loc_FFCB17EE:                           ; CODE XREF: sub_FFCB1730+98↑j
                move.l  a4,d0
                bne.s   loc_FFCB17CA

loc_FFCB17F2:                           ; CODE XREF: sub_FFCB1730+42↑j
                                        ; sub_FFCB1730+92↑j
                move.w  d7,d0
                addq.w  #1,d7

loc_FFCB17F6:                           ; CODE XREF: sub_FFCB1730+32↑j
                cmp.w   d7,d6
                bgt.w   loc_FFCB1766
                move.w  #$F63B,d0

loc_FFCB1800:                           ; CODE XREF: sub_FFCB1730+24↑j
                                        ; sub_FFCB1730+88↑j ...
                movem.l var_20(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB1730


; =============== S U B R O U T I N E =======================================


sub_FFCB180A:                           ; CODE XREF: sub_FFCB1820+B8↓p
                movea.l ($2078).w,a1
                movea.l $84(a1),a1
                jmp     (a1)
; End of function sub_FFCB180A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1820:                           ; DATA XREF: ROM:FFC07BD8↑o

var_40          = -$40
var_2C          = -$2C
var_24          = -$24
var_20          = -$20
var_1C          = -$1C
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_C           =  $14
arg_E           =  $16
arg_12          =  $1A
arg_16          =  $1E
arg_1A          =  $22

                link    a6,#-$2C
                movem.l d3/d6-d7/a3-a4,-(sp)
                movea.l arg_16(a6),a4
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                moveq   #0,d0
                move.l  d0,var_24(a6)
                clr.b   d6
                subq.l  #2,sp
                pea     var_2C(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                move.w  (sp)+,d7
                beq.s   loc_FFCB1856
                move.w  #$F629,arg_1A(a6)
                bra.w   loc_FFCB1948
; ---------------------------------------------------------------------------

loc_FFCB1856:                           ; CODE XREF: sub_FFCB1820+2A↑j
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.l  #$73727669,-(sp)
                move.l  #$636D7069,-(sp)
                pea     var_C(a6)
                pea     var_24(a6)
                moveq   #4,d0
                move.l  d0,-(sp)
                pea     var_8(a6)
                move.w  #$E11,d0
                _Pack8                  ; Apple Event Manager
                move.w  (sp)+,d7
                bne.s   loc_FFCB18B0
                subq.l  #2,sp
                move.l  var_24(a6),-(sp)
                pea     var_20(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFCB18B0
                cmpi.l  #$696E706D,var_1C(a6)
                seq     d3
                neg.b   d3
                beq.s   loc_FFCB18AC
                moveq   #0,d0
                bra.s   loc_FFCB18AE
; ---------------------------------------------------------------------------

loc_FFCB18AC:                           ; CODE XREF: sub_FFCB1820+86↑j
                moveq   #1,d0

loc_FFCB18AE:                           ; CODE XREF: sub_FFCB1820+8A↑j
                move.b  d0,d6

loc_FFCB18B0:                           ; CODE XREF: sub_FFCB1820+5E↑j
                                        ; sub_FFCB1820+78↑j
                tst.b   d6
                bne.s   loc_FFCB18C6
                subq.l  #2,sp
                pea     var_2C(a6)
                pea     var_4(a6)
                jsr     sub_FFCB02B2
                tst.w   (sp)+
                bne.s   loc_FFCB192C

loc_FFCB18C6:                           ; CODE XREF: sub_FFCB1820+92↑j
                tst.l   var_24(a6)
                beq.s   loc_FFCB1904
                pea     var_8(a6)
                move.l  var_4(a6),-(sp)
                move.l  var_24(a6),-(sp)
                jsr     sub_FFCB180A
                move.w  d0,d7
                lea     $C(sp),sp
                bne.s   loc_FFCB1904
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.l  #$72656663,-(sp)
                move.l  #$6C6F6E67,-(sp)
                pea     var_8(a6)
                moveq   #4,d0
                move.l  d0,-(sp)
                move.w  #$A0F,d0
                _Pack8                  ; Apple Event Manager
                move.w  (sp)+,d7

loc_FFCB1904:                           ; CODE XREF: sub_FFCB1820+AA↑j
                                        ; sub_FFCB1820+C2↑j
                subq.l  #2,sp
                move.l  a4,-(sp)
                move.l  arg_12(a6),-(sp)
                move.l  arg_E(a6),-(sp)
                move.w  arg_C(a6),-(sp)
                move.l  arg_8(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  arg_0(a6),-(sp)
                move.w  #$D17,d0
                _Pack8                  ; Apple Event Manager
                move.w  (sp)+,arg_1A(a6)
                bra.s   loc_FFCB1948
; ---------------------------------------------------------------------------

loc_FFCB192C:                           ; CODE XREF: sub_FFCB1820+A4↑j
                move.l  arg_12(a6),-(sp)
                move.l  a4,-(sp)
                move.w  $54(a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                movea.l $56(a3),a0
                jsr     (a0)
                move.w  d0,arg_1A(a6)
                lea     $C(sp),sp

loc_FFCB1948:                           ; CODE XREF: sub_FFCB1820+32↑j
                                        ; sub_FFCB1820+10A↑j
                movem.l var_40(a6),d3/d6-d7/a3-a4
                unlk    a6
                rtd     #$1A
; End of function sub_FFCB1820

; ---------------------------------------------------------------------------

loc_FFCB1954:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 11
                movea.l $88(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1960:                           ; DATA XREF: ROM:FFC07C64↑o

var_30          = -$30
var_18          = -$18
var_16          = -$16
var_1           = -1
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-$18
                movem.l d4-d7/a3-a4,-(sp)
                clr.w   d7
                clr.w   var_18(a6)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                moveq   #0,d0
                movea.l d0,a3
                clr.b   var_1(a6)
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB24DA
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB1996
                move.w  #$FFCE,arg_8(a6)
                bra.w   loc_FFCB1C38
; ---------------------------------------------------------------------------

loc_FFCB1996:                           ; CODE XREF: sub_FFCB1960+2A↑j
                subq.l  #2,sp
                move.l  arg_4(a6),-(sp)
                pea     var_16(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                beq.s   loc_FFCB19B8
                move.w  d7,arg_8(a6)
                bra.w   loc_FFCB1C38
; ---------------------------------------------------------------------------

loc_FFCB19B8:                           ; CODE XREF: sub_FFCB1960+4E↑j
                movea.l arg_0(a6),a0
                move.w  (a0),d4
                ext.l   d4
                move.l  d4,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB19D6
                move.w  #$F62B,arg_8(a6)
                bra.w   loc_FFCB1C38
; ---------------------------------------------------------------------------

loc_FFCB19D6:                           ; CODE XREF: sub_FFCB1960+6A↑j
                move.w  6(a4),d6
                movea.l $10(a4),a3
                cmpi.w  #1,d6
                beq.s   loc_FFCB19F8
                cmpi.w  #2,d6
                beq.s   loc_FFCB19F8
                cmpi.w  #3,d6
                beq.s   loc_FFCB19F8
                cmpi.w  #$19,d6
                bne.w   loc_FFCB1AEA

loc_FFCB19F8:                           ; CODE XREF: sub_FFCB1960+82↑j
                                        ; sub_FFCB1960+88↑j ...
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d5
                ext.l   d5
                move.l  $2C(a4,d5.l*8),d0
                cmp.l   arg_4(a6),d0
                addq.w  #4,sp
                bne.s   loc_FFCB1A8E
                cmp.w   d6,d4
                bne.s   loc_FFCB1A8E
                cmpi.w  #1,d6
                bne.s   loc_FFCB1A86
                tst.b   $1A(a4)
                beq.s   loc_FFCB1A86
                subq.l  #2,sp
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                clr.b   $1A(a4)
                subq.l  #2,sp
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$FC18,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                move.l  #$8208000E,-(sp)
                _ScriptUtil
                move.l  a3,d0
                addq.w  #4,sp
                beq.s   loc_FFCB1A76
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB299C
                move.w  d0,d7
                cmpi.w  #$F62E,d7
                addq.w  #8,sp
                bne.s   loc_FFCB1A76
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2E8E
                move.w  d0,d7
                lea     $10(sp),sp

loc_FFCB1A76:                           ; CODE XREF: sub_FFCB1960+EA↑j
                                        ; sub_FFCB1960+FE↑j
                move.l  arg_0(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFCB37E6
                move.w  d0,d7
                addq.w  #8,sp

loc_FFCB1A86:                           ; CODE XREF: sub_FFCB1960+B8↑j
                                        ; sub_FFCB1960+BE↑j
                move.w  d7,arg_8(a6)
                bra.w   loc_FFCB1C38
; ---------------------------------------------------------------------------

loc_FFCB1A8E:                           ; CODE XREF: sub_FFCB1960+AE↑j
                                        ; sub_FFCB1960+B2↑j
                cmp.w   d4,d6
                bne.s   loc_FFCB1AEA
                ext.l   d5
                tst.l   $2C(a4,d5.l*8)
                beq.s   loc_FFCB1AA6
                ext.l   d5
                move.l  $2C(a4,d5.l*8),d0
                cmp.l   arg_4(a6),d0
                beq.s   loc_FFCB1AEA

loc_FFCB1AA6:                           ; CODE XREF: sub_FFCB1960+138↑j
                cmpi.w  #1,d6
                bne.s   loc_FFCB1ADA
                tst.b   $1A(a4)
                beq.s   loc_FFCB1ADA
                subq.l  #2,sp
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                clr.b   $1A(a4)
                subq.l  #2,sp
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$FC18,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                move.l  #$8208000E,-(sp)
                _ScriptUtil
                addq.w  #4,sp

loc_FFCB1ADA:                           ; CODE XREF: sub_FFCB1960+14A↑j
                                        ; sub_FFCB1960+150↑j
                ext.l   d5
                move.l  arg_4(a6),$2C(a4,d5.l*8)
                ext.l   d5
                moveq   #0,d0
                move.l  d0,$30(a4,d5.l*8)

loc_FFCB1AEA:                           ; CODE XREF: sub_FFCB1960+94↑j
                                        ; sub_FFCB1960+130↑j ...
                cmp.w   d6,d4
                beq.s   loc_FFCB1B24
                ext.l   d4
                move.l  d4,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d5
                cmpi.w  #1,d4
                addq.w  #4,sp
                bne.s   loc_FFCB1B24
                move.b  $1A(a4),var_1(a6)
                beq.s   loc_FFCB1B24
                subq.l  #2,sp
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$FC18,-(sp)
                moveq   #0,d1
                move.l  d1,-(sp)
                move.l  #$8208000E,-(sp)
                _ScriptUtil
                clr.b   $1A(a4)
                addq.w  #2,sp

loc_FFCB1B24:                           ; CODE XREF: sub_FFCB1960+18C↑j
                                        ; sub_FFCB1960+19E↑j ...
                cmp.w   d6,d4
                bne.s   loc_FFCB1B7A
                move.l  a3,d0
                beq.s   loc_FFCB1B64
                subq.l  #2,sp
                move.l  a3,-(sp)
                jsr     sub_FFCB1202
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2BD6
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  arg_4(a6),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2E8E
                move.w  d0,d7
                lea     $1E(sp),sp
                beq.s   loc_FFCB1B64
                move.w  d7,arg_8(a6)
                bra.w   loc_FFCB1C38
; ---------------------------------------------------------------------------

loc_FFCB1B64:                           ; CODE XREF: sub_FFCB1960+1CA↑j
                                        ; sub_FFCB1960+1FA↑j
                ext.l   d5
                move.l  arg_4(a6),$2C(a4,d5.l*8)
                move.b  #1,var_18(a6)
                clr.b   var_18+1(a6)
                bra.w   loc_FFCB1C04
; ---------------------------------------------------------------------------

loc_FFCB1B7A:                           ; CODE XREF: sub_FFCB1960+1C6↑j
                move.l  a3,d0
                beq.s   loc_FFCB1BA8
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3120
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB1BA8
                subq.l  #2,sp
                move.l  a3,-(sp)
                jsr     sub_FFCB1202
                move.w  (sp)+,d7
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2A86
                lea     $C(sp),sp

loc_FFCB1BA8:                           ; CODE XREF: sub_FFCB1960+21C↑j
                                        ; sub_FFCB1960+22A↑j
                move.b  #1,var_18+1(a6)
                ext.l   d4
                move.l  d4,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d5
                ext.l   d5
                move.l  $2C(a4,d5.l*8),d0
                cmp.l   arg_4(a6),d0
                addq.w  #4,sp
                bne.s   loc_FFCB1BCC
                clr.b   var_18(a6)
                bra.s   loc_FFCB1BF8
; ---------------------------------------------------------------------------

loc_FFCB1BCC:                           ; CODE XREF: sub_FFCB1960+264↑j
                move.b  #1,var_18(a6)
                move.l  a3,d0
                beq.s   loc_FFCB1BE8
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d4
                move.l  d4,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2BD6
                lea     $C(sp),sp

loc_FFCB1BE8:                           ; CODE XREF: sub_FFCB1960+274↑j
                ext.l   d5
                move.l  arg_4(a6),$2C(a4,d5.l*8)
                ext.l   d5
                moveq   #0,d0
                move.l  d0,$30(a4,d5.l*8)

loc_FFCB1BF8:                           ; CODE XREF: sub_FFCB1960+26A↑j
                tst.b   var_1(a6)
                beq.s   loc_FFCB1C04
                move.b  #1,var_18(a6)

loc_FFCB1C04:                           ; CODE XREF: sub_FFCB1960+216↑j
                                        ; sub_FFCB1960+29C↑j
                tst.b   var_18(a6)
                beq.s   loc_FFCB1C22
                move.l  arg_0(a6),-(sp)
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFCB37E6
                move.w  d0,d7
                addq.w  #8,sp
                beq.s   loc_FFCB1C22
                move.w  d7,arg_8(a6)
                bra.s   loc_FFCB1C38
; ---------------------------------------------------------------------------

loc_FFCB1C22:                           ; CODE XREF: sub_FFCB1960+2A8↑j
                                        ; sub_FFCB1960+2BA↑j
                tst.b   var_18+1(a6)
                beq.s   loc_FFCB1C34
                subq.l  #2,sp
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB1F6C
                move.w  (sp)+,d7

loc_FFCB1C34:                           ; CODE XREF: sub_FFCB1960+2C6↑j
                move.w  d7,arg_8(a6)

loc_FFCB1C38:                           ; CODE XREF: sub_FFCB1960+32↑j
                                        ; sub_FFCB1960+54↑j ...
                movem.l var_30(a6),d4-d7/a3-a4
                unlk    a6
                rtd     #8
; End of function sub_FFCB1960

; ---------------------------------------------------------------------------

loc_FFCB1C44:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 12
                movea.l $114(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1C50:                           ; DATA XREF: ROM:FFC07C68↑o

var_2C          = -$2C
var_1C          = -$1C
var_16          = -$16
var_14          = -$14
var_10          = -$10
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-$1C
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l arg_4(a6),a4
                movea.l ($2B6).w,a0
                move.l  $64(a0),var_8(a6)
                move.l  a3,-(sp)
                jsr     sub_FFCB24DA
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB1C80
                move.w  #$FFCE,arg_8(a6)
                bra.w   loc_FFCB1D70
; ---------------------------------------------------------------------------

loc_FFCB1C80:                           ; CODE XREF: sub_FFCB1C50+24↑j
                move.w  (a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB1C9A
                move.w  #$F62B,arg_8(a6)
                bra.w   loc_FFCB1D70
; ---------------------------------------------------------------------------

loc_FFCB1C9A:                           ; CODE XREF: sub_FFCB1C50+3E↑j
                move.l  a3,-(sp)
                pea     var_1C(a6)
                jsr     sub_FFCB334A
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFCB1CE4
                move.l  #$7FFF,var_C(a6)
                subq.l  #4,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_1C(a6)
                moveq   #4,d0
                _ComponentDispatch
                move.l  (sp)+,(a4)
                beq.s   loc_FFCB1D1E
                move.w  (a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d6
                ext.l   d6
                movea.l var_8(a6),a0
                move.l  (a4),$2C(a0,d6.l*8)
                clr.w   arg_8(a6)
                addq.w  #4,sp
                bra.w   loc_FFCB1D70
; ---------------------------------------------------------------------------

loc_FFCB1CE4:                           ; CODE XREF: sub_FFCB1C50+58↑j
                cmpi.w  #$F62C,d7
                bne.s   loc_FFCB1D1E
                subq.l  #2,sp
                move.w  var_16(a6),-(sp)
                jsr     sub_FFCB05D0
                tst.b   (sp)+
                beq.s   loc_FFCB1D1E
                move.l  a4,var_4(a6)
                movea.l a4,a0
                move.w  var_1C+2(a6),(a0)
                movea.l var_4(a6),a0
                move.w  var_16(a6),2(a0)
                movea.l var_8(a6),a0
                move.b  #1,$1A(a0)
                move.w  #$F62C,arg_8(a6)
                bra.s   loc_FFCB1D70
; ---------------------------------------------------------------------------

loc_FFCB1D1E:                           ; CODE XREF: sub_FFCB1C50+72↑j
                                        ; sub_FFCB1C50+98↑j ...
                move.l  #$74737663,var_1C(a6)
                move.l  #$696E706D,-$18(a6)
                moveq   #0,d0
                move.l  d0,var_14(a6)
                move.l  a3,-(sp)
                jsr     sub_FFCB337E
                move.l  d0,var_10(a6)
                move.l  #$7FFF,var_C(a6)
                subq.l  #4,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_1C(a6)
                moveq   #4,d0
                _ComponentDispatch
                move.l  (sp)+,(a4)
                addq.w  #4,sp
                bne.s   loc_FFCB1D62
                move.w  #$F63B,arg_8(a6)
                bra.s   loc_FFCB1D70
; ---------------------------------------------------------------------------

loc_FFCB1D62:                           ; CODE XREF: sub_FFCB1C50+108↑j
                move.l  a3,-(sp)
                move.l  (a4),-(sp)
                jsr     sub_FFCB37E6
                move.w  d0,arg_8(a6)
                addq.w  #8,sp

loc_FFCB1D70:                           ; CODE XREF: sub_FFCB1C50+2C↑j
                                        ; sub_FFCB1C50+46↑j ...
                movem.l var_2C(a6),d6-d7/a3-a4
                unlk    a6
                rtd     #8
; End of function sub_FFCB1C50


; =============== S U B R O U T I N E =======================================


sub_FFCB1D7C:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; sub_FFCB2EA0+9C↓p
                                        ; DATA XREF: ...
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 13
                movea.l $118(a1),a1
                jmp     (a1)
; End of function sub_FFCB1D7C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1D90:                           ; DATA XREF: ROM:FFC07C6C↑o

var_20          = -$20
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#-8
                movem.l d4-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                clr.w   d6
                move.l  a3,-(sp)
                jsr     sub_FFCB24DA
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB1DBC
                move.w  #$FFCE,arg_4(a6)
                bra.w   loc_FFCB1F60
; ---------------------------------------------------------------------------

loc_FFCB1DBC:                           ; CODE XREF: sub_FFCB1D90+20↑j
                move.w  (a3),d7
                move.w  6(a4),d5
                move.w  8(a4),d4
                cmp.w   d5,d7
                bne.s   loc_FFCB1DD8
                cmp.w   2(a3),d4
                bne.s   loc_FFCB1DD8
                clr.w   arg_4(a6)
                bra.w   loc_FFCB1F60
; ---------------------------------------------------------------------------

loc_FFCB1DD8:                           ; CODE XREF: sub_FFCB1D90+38↑j
                                        ; sub_FFCB1D90+3E↑j
                move.l  a3,-(sp)
                jsr     sub_FFCB309A
                tst.b   d0
                addq.w  #4,sp
                beq.w   loc_FFCB1F5A
                tst.l   $10(a4)
                beq.s   loc_FFCB1DF6
                ext.l   d5
                move.l  d5,-(sp)
                jsr     sub_FFCB3888
                addq.w  #4,sp

loc_FFCB1DF6:                           ; CODE XREF: sub_FFCB1D90+5A↑j
                move.w  d7,6(a4)
                move.w  2(a3),8(a4)
                cmpi.w  #1,d7
                bne.s   loc_FFCB1E22
                subq.l  #4,sp
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$FC18,-(sp)
                move.l  #$8404000C,-(sp)
                _ScriptUtil
                tst.l   (sp)+
                beq.s   loc_FFCB1E22
                move.b  #1,$1A(a4)

loc_FFCB1E22:                           ; CODE XREF: sub_FFCB1D90+74↑j
                                        ; sub_FFCB1D90+8A↑j
                tst.b   $19(a4)
                bne.s   loc_FFCB1E42
                movea.l ($2B6).w,a0
                tst.w   $128(a0)
                beq.s   loc_FFCB1E3A
                move.b  #1,$19(a4)
                bra.s   loc_FFCB1E42
; ---------------------------------------------------------------------------

loc_FFCB1E3A:                           ; CODE XREF: sub_FFCB1D90+A0↑j
                clr.w   arg_4(a6)
                bra.w   loc_FFCB1F60
; ---------------------------------------------------------------------------

loc_FFCB1E42:                           ; CODE XREF: sub_FFCB1D90+96↑j
                                        ; sub_FFCB1D90+A8↑j
                tst.l   $10(a4)
                beq.s   loc_FFCB1EB2
                movea.l $10(a4),a0
                movea.l (a0),a3
                move.w  d7,$18(a3)
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d5
                move.l  d5,-(sp)
                move.l  $10(a4),-(sp)
                jsr     sub_FFCB2A86
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB3120
                tst.b   d0
                lea     $10(sp),sp
                beq.s   loc_FFCB1EB2
                moveq   #1,d0
                move.l  d0,-(sp)
                move.l  $10(a4),-(sp)
                jsr     sub_FFCB2F6C
                move.w  d0,d6
                addq.w  #8,sp
                beq.s   loc_FFCB1EB2
                cmpi.w  #$F63B,d6
                beq.s   loc_FFCB1EAA
                move.w  d5,6(a4)
                move.w  d4,8(a4)
                movea.l $10(a4),a0
                movea.l (a0),a3
                move.w  d5,$18(a3)
                ext.l   d5
                move.l  d5,-(sp)
                move.l  $10(a4),-(sp)
                jsr     sub_FFCB299C
                addq.w  #8,sp

loc_FFCB1EAA:                           ; CODE XREF: sub_FFCB1D90+F8↑j
                move.w  d6,arg_4(a6)
                bra.w   loc_FFCB1F60
; ---------------------------------------------------------------------------

loc_FFCB1EB2:                           ; CODE XREF: sub_FFCB1D90+B6↑j
                                        ; sub_FFCB1D90+E0↑j ...
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB1ED0
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp
                bra.s   loc_FFCB1F40
; ---------------------------------------------------------------------------

loc_FFCB1ED0:                           ; CODE XREF: sub_FFCB1D90+12E↑j
                cmpi.w  #1,d7
                bne.s   loc_FFCB1F06
                subq.l  #4,sp
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$FC18,-(sp)
                move.l  #$8404000C,-(sp)
                _ScriptUtil
                tst.l   (sp)+
                beq.s   loc_FFCB1F06
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                move.b  #1,$1A(a4)
                move.w  d6,arg_4(a6)
                addq.w  #2,sp
                bra.s   loc_FFCB1F60
; ---------------------------------------------------------------------------

loc_FFCB1F06:                           ; CODE XREF: sub_FFCB1D90+144↑j
                                        ; sub_FFCB1D90+15A↑j
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                subq.l  #2,sp
                pea     var_8(a6)
                jsr     sub_FFCB036E
                tst.w   (sp)+
                addq.w  #2,sp
                bne.s   loc_FFCB1F32
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp
                bra.s   loc_FFCB1F40
; ---------------------------------------------------------------------------

loc_FFCB1F32:                           ; CODE XREF: sub_FFCB1D90+190↑j
                subq.l  #2,sp
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp

loc_FFCB1F40:                           ; CODE XREF: sub_FFCB1D90+13E↑j
                                        ; sub_FFCB1D90+1A0↑j
                tst.l   $A(a4)
                beq.s   loc_FFCB1F54
                ext.l   d7
                move.l  d7,-(sp)
                move.l  $A(a4),-(sp)
                jsr     sub_FFCB275E
                addq.w  #8,sp

loc_FFCB1F54:                           ; CODE XREF: sub_FFCB1D90+1B4↑j
                move.w  d6,arg_4(a6)
                bra.s   loc_FFCB1F60
; ---------------------------------------------------------------------------

loc_FFCB1F5A:                           ; CODE XREF: sub_FFCB1D90+52↑j
                move.w  #$F63C,arg_4(a6)

loc_FFCB1F60:                           ; CODE XREF: sub_FFCB1D90+28↑j
                                        ; sub_FFCB1D90+44↑j ...
                movem.l var_20(a6),d4-d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB1D90


; =============== S U B R O U T I N E =======================================


sub_FFCB1F6C:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; sub_FFCB1960+2CE↑p
                                        ; DATA XREF: ...
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 14
                movea.l $11C(a1),a1
                jmp     (a1)
; End of function sub_FFCB1F6C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB1F80:                           ; DATA XREF: ROM:FFC07C70↑o

var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a3-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                move.w  6(a4),(a3)
                move.w  8(a4),2(a3)
                clr.w   arg_4(a6)
                movem.l var_8(a6),a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB1F80

; ---------------------------------------------------------------------------

loc_FFCB1FAE:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 15
                movea.l $120(a1),a1
                jmp     (a1)
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

; Attributes: bp-based frame

sub_FFCB1FC0:                           ; DATA XREF: ROM:FFC07C74↑o

var_2E          = -$2E
var_E           = -$E
var_A           = -$A
var_1           = -1
arg_0           =  8
arg_2           =  $A
arg_6           =  $E

                link    a6,#-$E
                movem.l d3-d7/a2-a4,-(sp)
                move.b  arg_0(a6),d5
                movea.l arg_2(a6),a2
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                clr.w   d7
                clr.b   d3
                clr.b   d4
                move.w  6(a3),d6
                movea.l $10(a3),a4
                move.l  a4,d0
                beq.s   loc_FFCB2000
                movea.l (a4),a0
                lea     $A(a0),a0
                lea     $1C(a3),a1
                moveq   #1,d0

loc_FFCB1FF6:                           ; CODE XREF: sub_FFCB1FC0+38↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFCB1FF6
                bne.s   loc_FFCB2000
                moveq   #1,d3

loc_FFCB2000:                           ; CODE XREF: sub_FFCB1FC0+28↑j
                                        ; sub_FFCB1FC0+3C↑j
                move.l  a2,d0
                beq.w   loc_FFCB20E0
                cmpa.l  #$FFFFFFFF,a2
                bne.s   loc_FFCB2018
                move.w  #$FFCE,arg_6(a6)
                bra.w   loc_FFCB21CE
; ---------------------------------------------------------------------------

loc_FFCB2018:                           ; CODE XREF: sub_FFCB1FC0+4C↑j
                move.l  a2,-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d7
                addq.w  #4,sp
                beq.s   loc_FFCB202C
                move.w  d7,arg_6(a6)
                bra.w   loc_FFCB21CE
; ---------------------------------------------------------------------------

loc_FFCB202C:                           ; CODE XREF: sub_FFCB1FC0+62↑j
                movea.l (a2),a0
                move.l  a0,var_E(a6)
                cmp.b   $13(a0),d5
                bne.s   loc_FFCB2040
                clr.w   arg_6(a6)
                bra.w   loc_FFCB21CE
; ---------------------------------------------------------------------------

loc_FFCB2040:                           ; CODE XREF: sub_FFCB1FC0+76↑j
                movea.l var_E(a6),a0
                move.b  d5,$13(a0)
                move.l  a2,-(sp)
                jsr     sub_FFCB016C
                tst.b   d5
                addq.w  #4,sp
                beq.s   loc_FFCB2078
                cmpa.l  $14(a3),a2
                bne.s   loc_FFCB205E
                moveq   #1,d4
                bra.s   loc_FFCB2060
; ---------------------------------------------------------------------------

loc_FFCB205E:                           ; CODE XREF: sub_FFCB1FC0+98↑j
                clr.b   d4

loc_FFCB2060:                           ; CODE XREF: sub_FFCB1FC0+9C↑j
                moveq   #0,d0
                move.b  d4,d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a2,-(sp)
                jsr     sub_FFCB2488
                lea     $C(sp),sp
                bra.w   loc_FFCB21AC
; ---------------------------------------------------------------------------

loc_FFCB2078:                           ; CODE XREF: sub_FFCB1FC0+92↑j
                move.l  a4,d0
                beq.w   loc_FFCB21AC
                cmpa.l  $14(a3),a2
                bne.w   loc_FFCB21AC
                tst.b   d3
                beq.s   loc_FFCB20BA
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB1202
                moveq   #0,d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2488
                move.w  d0,d7
                lea     $E(sp),sp
                bne.s   loc_FFCB20BA
                moveq   #1,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB38DA
                movea.l (a4),a0
                move.w  #$FFFF,$18(a0)
                addq.w  #4,sp

loc_FFCB20BA:                           ; CODE XREF: sub_FFCB1FC0+C8↑j
                                        ; sub_FFCB1FC0+E6↑j
                movea.l var_E(a6),a0
                pea     $A(a0)
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                addq.w  #8,sp
                beq.s   loc_FFCB20D8
                move.l  a2,-(sp)
                jsr     sub_FFCB3084
                addq.w  #4,sp

loc_FFCB20D8:                           ; CODE XREF: sub_FFCB1FC0+10E↑j
                move.l  a2,$10(a3)
                bra.w   loc_FFCB21AC
; ---------------------------------------------------------------------------

loc_FFCB20E0:                           ; CODE XREF: sub_FFCB1FC0+42↑j
                subq.l  #2,sp
                pea     var_A(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                subq.l  #2,sp
                pea     var_A(a6)
                pea     var_1(a6)
                jsr     sub_FFCB032A
                move.w  (sp)+,d7
                cmpi.w  #$F638,d7
                addq.w  #2,sp
                bne.s   loc_FFCB210C
                move.w  d7,arg_6(a6)
                bra.w   loc_FFCB21CE
; ---------------------------------------------------------------------------

loc_FFCB210C:                           ; CODE XREF: sub_FFCB1FC0+142↑j
                cmp.b   var_1(a6),d5
                bne.s   loc_FFCB211A
                clr.w   arg_6(a6)
                bra.w   loc_FFCB21CE
; ---------------------------------------------------------------------------

loc_FFCB211A:                           ; CODE XREF: sub_FFCB1FC0+150↑j
                moveq   #0,d0
                move.b  d5,d0
                move.l  d0,-(sp)
                pea     var_A(a6)
                jsr     sub_FFCB0120
                move.l  a4,d0
                addq.w  #8,sp
                beq.s   loc_FFCB21AC
                tst.b   d5
                beq.s   loc_FFCB214E
                moveq   #1,d4
                tst.b   d3
                bne.s   loc_FFCB21AC
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2488
                move.w  d0,d7
                lea     $C(sp),sp
                bra.s   loc_FFCB21AC
; ---------------------------------------------------------------------------

loc_FFCB214E:                           ; CODE XREF: sub_FFCB1FC0+170↑j
                tst.b   d3
                beq.s   loc_FFCB21AC
                movea.l $14(a3),a0
                movea.l (a0),a0
                move.l  a0,var_E(a6)
                tst.b   $13(a0)
                bne.s   loc_FFCB21AC
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB1202
                moveq   #0,d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2488
                move.w  d0,d7
                moveq   #1,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB38DA
                movea.l var_E(a6),a0
                pea     $A(a0)
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3232
                tst.b   d0
                lea     $1A(sp),sp
                beq.s   loc_FFCB21A6
                move.l  $14(a3),-(sp)
                jsr     sub_FFCB3084
                move.w  d0,d7
                addq.w  #4,sp

loc_FFCB21A6:                           ; CODE XREF: sub_FFCB1FC0+1D8↑j
                move.l  $14(a3),$10(a3)

loc_FFCB21AC:                           ; CODE XREF: sub_FFCB1FC0+B4↑j
                                        ; sub_FFCB1FC0+BA↑j ...
                tst.b   d4
                beq.s   loc_FFCB21BE
                subq.l  #2,sp
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp

loc_FFCB21BE:                           ; CODE XREF: sub_FFCB1FC0+1EE↑j
                cmpi.w  #$F635,d7
                bne.s   loc_FFCB21CA
                clr.w   arg_6(a6)
                bra.s   loc_FFCB21CE
; ---------------------------------------------------------------------------

loc_FFCB21CA:                           ; CODE XREF: sub_FFCB1FC0+202↑j
                move.w  d7,arg_6(a6)

loc_FFCB21CE:                           ; CODE XREF: sub_FFCB1FC0+54↑j
                                        ; sub_FFCB1FC0+68↑j ...
                movem.l var_2E(a6),d3-d7/a2-a4
                unlk    a6
                rtd     #6
; End of function sub_FFCB1FC0


; =============== S U B R O U T I N E =======================================


sub_FFCB21DA:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; sub_FFCB07B0+142↑p
                                        ; DATA XREF: ...
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 16
                movea.l $124(a1),a1
                jmp     (a1)
; End of function sub_FFCB21DA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB21F0:                           ; DATA XREF: ROM:FFC07C78↑o

var_18          = -$18
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_4           =  $C
arg_8           =  $10
arg_A           =  $12
arg_E           =  $16
arg_10          =  $18
arg_12          =  $1A
arg_16          =  $1E
arg_1A          =  $22
arg_1E          =  $26

                link    a6,#-$C
                movem.l d7/a3-a4,-(sp)
                movea.l arg_4(a6),a3
                moveq   #0,d0
                movea.l d0,a4
                subq.l  #2,sp
                pea     var_C(a6)
                move.w  #$48,-(sp) ; 'H'
                _OSDispatch
                move.w  (sp)+,d7
                bne.w   loc_FFCB2294
                subq.l  #4,sp
                move.l  ($2A6).w,(sp)
                jsr     sub_FFCB39FA
                move.l  d0,var_4(a6)
                subq.l  #4,sp
                move.l  var_C(a6),-(sp)
                moveq   #5,d0
                _A829
                move.l  (sp)+,var_8(a6)
                subq.l  #4,sp
                move.l  arg_1A(a6),-(sp)
                move.l  arg_16(a6),-(sp)
                move.l  arg_12(a6),-(sp)
                move.b  arg_10(a6),-(sp)
                move.w  arg_E(a6),-(sp)
                move.l  arg_A(a6),-(sp)
                move.b  arg_8(a6),-(sp)
                move.l  a3,-(sp)
                _NewWindow
                movea.l (sp)+,a4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFCB227A
                cmpa.l  #2,a3
                bne.s   loc_FFCB226E
                move.w  #6,$6C(a4)
                moveq   #0,d0
                move.l  d0,$98(a4)
                bra.s   loc_FFCB2282
; ---------------------------------------------------------------------------

loc_FFCB226E:                           ; CODE XREF: sub_FFCB21F0+6E↑j
                move.w  #7,$6C(a4)
                move.l  a3,$98(a4)
                bra.s   loc_FFCB2282
; ---------------------------------------------------------------------------

loc_FFCB227A:                           ; CODE XREF: sub_FFCB21F0+66↑j
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7

loc_FFCB2282:                           ; CODE XREF: sub_FFCB21F0+7C↑j
                                        ; sub_FFCB21F0+88↑j
                move.l  var_8(a6),-(sp)
                moveq   #4,d0
                _A829
                move.l  var_4(a6),-(sp)
                jsr     sub_FFCB39FA
                addq.w  #4,sp

loc_FFCB2294:                           ; CODE XREF: sub_FFCB21F0+1E↑j
                movea.l arg_0(a6),a0
                move.l  a4,(a0)
                move.w  d7,arg_1E(a6)
                movem.l var_18(a6),d7/a3-a4
                unlk    a6
                rtd     #$1E
; End of function sub_FFCB21F0

; ---------------------------------------------------------------------------

loc_FFCB22AA:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 17
                movea.l $128(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB22C0:                           ; DATA XREF: ROM:FFC07C7C↑o

var_10          = -$10
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                move.l  a4,d0
                beq.s   loc_FFCB230C
                moveq   #7,d0
                cmp.w   $6C(a4),d0
                beq.s   loc_FFCB22E0
                moveq   #6,d0
                cmp.w   $6C(a4),d0
                bne.s   loc_FFCB230C

loc_FFCB22E0:                           ; CODE XREF: sub_FFCB22C0+16↑j
                subq.l  #2,sp
                pea     var_4(a6)
                move.w  #$48,-(sp) ; 'H'
                _OSDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFCB2306
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                moveq   #5,d0
                _A829
                movea.l (sp)+,a3
                move.l  a4,-(sp)
                _CloseWindow
                move.l  a3,-(sp)
                moveq   #4,d0
                _A829

loc_FFCB2306:                           ; CODE XREF: sub_FFCB22C0+2E↑j
                move.w  d7,arg_4(a6)
                bra.s   loc_FFCB2312
; ---------------------------------------------------------------------------

loc_FFCB230C:                           ; CODE XREF: sub_FFCB22C0+E↑j
                                        ; sub_FFCB22C0+1E↑j
                move.w  #$FFCE,arg_4(a6)

loc_FFCB2312:                           ; CODE XREF: sub_FFCB22C0+4A↑j
                movem.l var_10(a6),d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB22C0

; ---------------------------------------------------------------------------

loc_FFCB231E:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 18
                movea.l $12C(a1),a1
                jmp     (a1)
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

; Attributes: bp-based frame

sub_FFCB2330:                           ; DATA XREF: ROM:FFC07C80↑o

var_10          = -$10
var_4           = -4
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                moveq   #0,d0
                move.l  d0,(a4)
                subq.l  #2,sp
                pea     var_4(a6)
                move.w  #$48,-(sp) ; 'H'
                _OSDispatch
                move.w  (sp)+,d7
                bne.s   loc_FFCB2368
                subq.l  #4,sp
                move.l  var_4(a6),-(sp)
                moveq   #5,d0
                _A829
                movea.l (sp)+,a3
                subq.l  #4,sp
                _FrontWindow
                move.l  (sp)+,(a4)
                move.l  a3,-(sp)
                moveq   #4,d0
                _A829

loc_FFCB2368:                           ; CODE XREF: sub_FFCB2330+1E↑j
                move.w  d7,arg_4(a6)
                movem.l var_10(a6),d7/a3-a4
                unlk    a6
                rtd     #4
; End of function sub_FFCB2330

; ---------------------------------------------------------------------------

loc_FFCB2378:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 19
                movea.l $130(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2390:                           ; DATA XREF: ROM:FFC07C84↑o

var_1C          = -$1C
var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_8           =  $10

                link    a6,#-8
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a3
                movea.w #$A1C,a4
                moveq   #0,d0
                move.l  d0,(a3)
                tst.l   (a4)
                bne.s   loc_FFCB23AE
                clr.w   arg_8(a6)
                bra.s   loc_FFCB23EE
; ---------------------------------------------------------------------------

loc_FFCB23AE:                           ; CODE XREF: sub_FFCB2390+16↑j
                clr.w   d7
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$48,-(sp) ; 'H'
                _OSDispatch
                move.w  (sp)+,d6
                bne.s   loc_FFCB23EA
                subq.l  #4,sp
                move.l  var_8(a6),-(sp)
                moveq   #5,d0
                _A829
                movea.l (sp)+,a2
                movea.l (a4),a0
                _HGetState
                move.b  d0,d6
                subq.l  #2,sp
                move.l  arg_4(a6),-(sp)
                move.l  a3,-(sp)
                _FindWindow
                move.w  (sp)+,d7
                movea.l (a4),a0
                move.b  d6,d0
                _HSetState
                move.l  a2,-(sp)
                moveq   #4,d0
                _A829

loc_FFCB23EA:                           ; CODE XREF: sub_FFCB2390+2E↑j
                move.w  d7,arg_8(a6)

loc_FFCB23EE:                           ; CODE XREF: sub_FFCB2390+1C↑j
                movem.l var_1C(a6),d6-d7/a2-a4
                unlk    a6
                rtd     #8
; End of function sub_FFCB2390

; ---------------------------------------------------------------------------

loc_FFCB23FA:                           ; CODE XREF: ROM:FFCAFEAA↑j
                                        ; DATA XREF: ROM:jpt_FFCAFEAA↑o
                movea.l ($2078).w,a1    ; jumptable FFCAFEAA case 23
                movea.l $134(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2410:                           ; DATA XREF: ROM:FFC07BDC↑o

var_14          = -$14
arg_0           =  8
arg_6           =  $E
arg_B           =  $13

                link    a6,#0
                movem.l d6-d7/a2-a4,-(sp)
                move.w  arg_6(a6),d6
                movea.l arg_0(a6),a2
                clr.w   d7
                movea.l (a2),a3
                tst.b   $12(a3)
                bne.s   loc_FFCB2430
                move.w  #$F635,d0
                bra.s   loc_FFCB247E
; ---------------------------------------------------------------------------

loc_FFCB2430:                           ; CODE XREF: sub_FFCB2410+18↑j
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFCB2476
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3258
                asl.l   #4,d0
                lea     $1E(a3,d0.l),a4
                tst.l   4(a4)
                addq.w  #4,sp
                beq.s   loc_FFCB2476
                tst.b   $D(a4)
                beq.s   loc_FFCB2476
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #5,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                move.w  d0,d7
                bne.s   loc_FFCB2476
                movea.l (a2),a3
                clr.b   $D(a4)

loc_FFCB2476:                           ; CODE XREF: sub_FFCB2410+2C↑j
                                        ; sub_FFCB2410+42↑j ...
                move.b  arg_B(a6),$12(a3)
                move.w  d7,d0

loc_FFCB247E:                           ; CODE XREF: sub_FFCB2410+1E↑j
                movem.l var_14(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB2410


; =============== S U B R O U T I N E =======================================


sub_FFCB2488:                           ; CODE XREF: sub_FFCB0940+112↑p
                                        ; sub_FFCB0940+1FA↑p ...
                movea.l ($2078).w,a1
                movea.l $8C(a1),a1
                jmp     (a1)
; End of function sub_FFCB2488

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB24A0:                           ; DATA XREF: ROM:FFC07BE0↑o

var_C           = -$C
arg_0           =  8

                link    a6,#0
                movem.l d3/d7/a4,-(sp)
                movea.l arg_0(a6),a4
                subq.l  #4,sp
                move.w  (a4),-(sp)
                moveq   #$1C,d0
                move.w  d0,-(sp)
                move.l  #$8404000C,-(sp)
                _ScriptUtil
                move.l  (sp)+,d0
                move.w  d0,d7
                cmp.w   2(a4),d7
                sne     d3
                neg.b   d3
                beq.s   loc_FFCB24CE
                moveq   #1,d0
                bra.s   loc_FFCB24D0
; ---------------------------------------------------------------------------

loc_FFCB24CE:                           ; CODE XREF: sub_FFCB24A0+28↑j
                moveq   #0,d0

loc_FFCB24D0:                           ; CODE XREF: sub_FFCB24A0+2C↑j
                movem.l var_C(a6),d3/d7/a4
                unlk    a6
                rts
; End of function sub_FFCB24A0


; =============== S U B R O U T I N E =======================================


sub_FFCB24DA:                           ; CODE XREF: sub_FFCB1960+22↑p
                                        ; sub_FFCB1C50+1C↑p ...
                movea.l ($2078).w,a1
                movea.l $90(a1),a1
                jmp     (a1)
; End of function sub_FFCB24DA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB24F0:                           ; DATA XREF: ROM:FFC07BE4↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                move.l  a4,d0
                beq.s   loc_FFCB2508
                movea.l (a4),a0
                cmpi.l  #$54444F43,(a0)
                beq.s   loc_FFCB250E

loc_FFCB2508:                           ; CODE XREF: sub_FFCB24F0+C↑j
                move.w  #$F637,d0
                bra.s   loc_FFCB2510
; ---------------------------------------------------------------------------

loc_FFCB250E:                           ; CODE XREF: sub_FFCB24F0+16↑j
                moveq   #0,d0

loc_FFCB2510:                           ; CODE XREF: sub_FFCB24F0+1C↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFCB24F0


; =============== S U B R O U T I N E =======================================


sub_FFCB2518:                           ; CODE XREF: sub_FFCB07B0+18↑p
                                        ; sub_FFCB0940+16↑p ...
                movea.l ($2078).w,a1
                movea.l $94(a1),a1
                jmp     (a1)
; End of function sub_FFCB2518

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2530:                           ; DATA XREF: ROM:FFC07BE8↑o

var_C           = -$C
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l a2-a4,-(sp)
                movea.l arg_4(a6),a2
                movea.l arg_0(a6),a3
                tst.w   4(a3)
                beq.s   loc_FFCB2556
                movea.l 6(a3),a4
                bra.s   loc_FFCB254E
; ---------------------------------------------------------------------------

loc_FFCB254C:                           ; CODE XREF: sub_FFCB2530+20↓j
                movea.l (a4),a4

loc_FFCB254E:                           ; CODE XREF: sub_FFCB2530+1A↑j
                tst.l   (a4)
                bne.s   loc_FFCB254C
                move.l  a2,(a4)
                bra.s   loc_FFCB255A
; ---------------------------------------------------------------------------

loc_FFCB2556:                           ; CODE XREF: sub_FFCB2530+14↑j
                move.l  a2,6(a3)

loc_FFCB255A:                           ; CODE XREF: sub_FFCB2530+24↑j
                moveq   #0,d0
                move.l  d0,(a2)
                addq.w  #1,4(a3)
                movem.l var_C(a6),a2-a4
                unlk    a6
                rts
; End of function sub_FFCB2530


; =============== S U B R O U T I N E =======================================


sub_FFCB256C:                           ; CODE XREF: sub_FFCB14B0+142↑p
                movea.l ($2078).w,a1
                movea.l $98(a1),a1
                jmp     (a1)
; End of function sub_FFCB256C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2580:                           ; DATA XREF: ROM:FFC07BEC↑o

var_10          = -$10
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d5-d7/a4,-(sp)
                movea.l arg_0(a6),a4
                clr.w   d7
                subq.l  #4,sp
                move.l  a4,-(sp)
                jsr     sub_FFCC9520
                move.l  (sp)+,d5
                move.l  arg_4(a6),d0
                addq.l  #1,d0
                muls.l  #$104,d0
                move.l  d0,d6
                addq.l  #2,d6
                cmp.l   d5,d6
                ble.s   loc_FFCB25BC
                movea.l a4,a0
                move.l  d6,d0
                _SetHandleSize
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7

loc_FFCB25BC:                           ; CODE XREF: sub_FFCB2580+2C↑j
                move.w  d7,d0
                movem.l var_10(a6),d5-d7/a4
                unlk    a6
                rts
; End of function sub_FFCB2580


; =============== S U B R O U T I N E =======================================


sub_FFCB25C8:                           ; CODE XREF: sub_FFCB1340+D2↑p
                movea.l ($2078).w,a1
                movea.l $9C(a1),a1
                jmp     (a1)
; End of function sub_FFCB25C8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB25E0:                           ; DATA XREF: ROM:FFC07BF0↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                movea.l arg_0(a6),a4
                tst.l   8(a4)
                beq.s   loc_FFCB260C
                tst.b   $C(a4)
                beq.s   loc_FFCB260C
                movea.l 8(a4),a0
                movea.l (a0),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3964
                clr.b   $C(a4)
                addq.w  #4,sp

loc_FFCB260C:                           ; CODE XREF: sub_FFCB25E0+E↑j
                                        ; sub_FFCB25E0+14↑j
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #$B,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                addq.w  #4,sp
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFCB25E0


; =============== S U B R O U T I N E =======================================


sub_FFCB2626:                           ; CODE XREF: sub_FFCB2630+E8↓p
                                        ; sub_FFCB29B0+7E↓p
                movea.l ($2078).w,a1
                movea.l $A0(a1),a1
                jmp     (a1)
; End of function sub_FFCB2626


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2630:                           ; DATA XREF: ROM:FFC07BF4↑o

var_20          = -$20
var_8           = -8
var_4           = -4
arg_0           =  8
arg_6           =  $E

                link    a6,#-8
                movem.l d4-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                move.w  arg_6(a6),d5
                clr.b   d6
                moveq   #0,d0
                move.l  d0,var_8(a6)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                move.w  $E(a3),d7
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB266C
                moveq   #0,d0
                move.l  d0,$A(a3)
                bra.w   loc_FFCB2754
; ---------------------------------------------------------------------------

loc_FFCB266C:                           ; CODE XREF: sub_FFCB2630+30↑j
                ext.l   d5
                move.l  d5,-(sp)
                jsr     sub_FFCB3120
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB26A0
                ext.l   d5
                move.l  d5,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d4
                move.l  a4,d0
                addq.w  #4,sp
                beq.s   loc_FFCB26A0
                move.l  (a4),var_4(a6)
                ext.l   d4
                movea.l var_4(a6),a0
                move.l  d4,d0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a4
                move.l  (a4),var_8(a6)

loc_FFCB26A0:                           ; CODE XREF: sub_FFCB2630+48↑j
                                        ; sub_FFCB2630+58↑j
                movea.l $A(a3),a0
                _HLock
                movea.l $A(a3),a0
                move.l  (a0),var_4(a6)
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB3258
                movea.l var_4(a6),a0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a4
                cmpi.l  #$53444F43,(a0)
                addq.w  #4,sp
                bne.s   loc_FFCB26D0
                moveq   #0,d0
                move.l  d0,4(a4)

loc_FFCB26D0:                           ; CODE XREF: sub_FFCB2630+98↑j
                subq.l  #4,sp
                move.l  (a4),-(sp)
                moveq   #$13,d0
                _ComponentDispatch
                tst.l   (sp)+
                ble.s   loc_FFCB26EE
                cmp.w   d7,d5
                bne.s   loc_FFCB26EC
                move.l  var_8(a6),d0
                cmp.l   (a4),d0
                beq.s   loc_FFCB26EE
                moveq   #1,d6
                bra.s   loc_FFCB26EE
; ---------------------------------------------------------------------------

loc_FFCB26EC:                           ; CODE XREF: sub_FFCB2630+AE↑j
                moveq   #1,d6

loc_FFCB26EE:                           ; CODE XREF: sub_FFCB2630+AA↑j
                                        ; sub_FFCB2630+B6↑j ...
                tst.b   d6
                beq.s   loc_FFCB271E
                movea.l var_4(a6),a0
                cmpi.l  #$53444F43,(a0)
                bne.s   loc_FFCB2710
                moveq   #0,d0
                move.l  d0,8(a4)
                subq.l  #4,sp
                move.l  (a4),-(sp)
                moveq   #7,d0
                _ComponentDispatch
                move.l  (sp)+,4(a4)

loc_FFCB2710:                           ; CODE XREF: sub_FFCB2630+CC↑j
                tst.l   4(a4)
                beq.s   loc_FFCB271E
                move.l  a4,-(sp)
                jsr     sub_FFCB2626
                addq.w  #4,sp

loc_FFCB271E:                           ; CODE XREF: sub_FFCB2630+C0↑j
                                        ; sub_FFCB2630+E4↑j
                movea.l var_4(a6),a0
                cmpi.l  #$53444F43,(a0)
                bne.s   loc_FFCB2748
                tst.l   4(a4)
                beq.s   loc_FFCB273C
                subq.l  #2,sp
                move.l  4(a4),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                addq.w  #2,sp

loc_FFCB273C:                           ; CODE XREF: sub_FFCB2630+FE↑j
                movea.l $A(a3),a0
                _DisposeHandle
                moveq   #0,d0
                move.l  d0,$A(a3)

loc_FFCB2748:                           ; CODE XREF: sub_FFCB2630+F8↑j
                movea.l $A(a3),a0
                _HUnlock
                moveq   #0,d0
                move.l  d0,$A(a3)

loc_FFCB2754:                           ; CODE XREF: sub_FFCB2630+38↑j
                movem.l var_20(a6),d4-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB2630


; =============== S U B R O U T I N E =======================================


sub_FFCB275E:                           ; CODE XREF: sub_FFCB0B90+230↑p
                                        ; sub_FFCB1D90+1BE↑p ...
                movea.l ($2078).w,a1
                movea.l $A4(a1),a1
                jmp     (a1)
; End of function sub_FFCB275E

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------
                link    a6,#-4
                movem.l d7/a3-a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                move.w  6(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d7
                movea.l $10(a4),a0
                move.l  (a0),-4(a6)
                ext.l   d7
                movea.l -4(a6),a0
                move.l  d7,d0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a3
                tst.l   8(a3)
                addq.w  #4,sp
                beq.s   loc_FFCB27EE
                movea.l 8(a6),a0
                moveq   #$10,d0
                move.l  (a0),d1
                asr.l   d0,d1
                cmpi.l  #$FFFFBF8C,d1
                bne.s   loc_FFCB27EE
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                subq.l  #4,sp
                move.l  4(a3),-(sp)
                move.l  8(a3),-(sp)
                movea.l 8(a6),a0
                move.w  2(a0),-(sp)
                move.l  #$60008,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                addq.w  #4,sp

loc_FFCB27EE:                           ; CODE XREF: ROM:FFCB27AA↑j
                                        ; ROM:FFCB27BC↑j
                movem.l -$10(a6),d7/a3-a4
                unlk    a6
                rtd     #4
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2800:                           ; DATA XREF: ROM:FFC07BF8↑o

var_14          = -$14
arg_0           =  8
arg_4           =  $C

                link    a6,#0
                movem.l d5-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                move.l  ($A1C).w,d7
                move.l  ($286).w,d5
                tst.l   d7
                bne.s   loc_FFCB281E
                moveq   #0,d0
                bra.w   loc_FFCB28C6
; ---------------------------------------------------------------------------

loc_FFCB281E:                           ; CODE XREF: sub_FFCB2800+16↑j
                movea.l d7,a0
                movea.l (a0),a0
                move.w  (a0),d6
                move.w  d6,d0
                ext.l   d0
                divs.w  #6,d0
                move.w  d0,d6
                bne.s   loc_FFCB2836
                moveq   #0,d0
                bra.w   loc_FFCB28C6
; ---------------------------------------------------------------------------

loc_FFCB2836:                           ; CODE XREF: sub_FFCB2800+2E↑j
                movea.l (a3),a0
                movea.l arg_4(a6),a1
                move.w  (a0),$60(a1)
                movea.l (a3),a0
                move.w  #$BF8C,(a0)
                tst.l   d7
                beq.s   loc_FFCB28C4
                move.l  a3,-(sp)
                move.w  #$BF95,-(sp)
                _InsertMenu
                tst.l   d5
                beq.s   loc_FFCB2866
                move.l  d7,($286).w
                move.l  a3,-(sp)
                move.w  #$BF95,-(sp)
                _InsertMenu
                move.l  d5,($286).w

loc_FFCB2866:                           ; CODE XREF: sub_FFCB2800+54↑j
                move.w  #$FFFF,($B9E).w
                subq.l  #4,sp
                move.l  #$4D424446,-(sp)
                movea.l d7,a0
                movea.l (a0),a0
                moveq   #$FFFFFFF8,d0
                and.w   4(a0),d0
                move.w  d0,-(sp)
                _GetResource
                movea.l (sp)+,a4
                move.l  a4,d0
                beq.s   loc_FFCB28BE
                move.l  a4,($B58).w
                movea.l a4,a0
                _HGetState
                extb.l  d0
                move.l  d0,d5
                movea.l a4,a0
                _HLock
                subq.l  #4,sp
                movea.l d7,a0
                movea.l (a0),a0
                moveq   #7,d0
                and.w   4(a0),d0
                move.w  d0,-(sp)
                moveq   #2,d0
                move.w  d0,-(sp)
                moveq   #0,d1
                move.w  d1,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                movea.l (a4),a0
                jsr     (a0)
                movea.l a4,a0
                move.b  d5,d0
                _HSetState
                addq.w  #4,sp

loc_FFCB28BE:                           ; CODE XREF: sub_FFCB2800+86↑j
                _InvalMenuBar
                moveq   #1,d0
                bra.s   loc_FFCB28C6
; ---------------------------------------------------------------------------

loc_FFCB28C4:                           ; CODE XREF: sub_FFCB2800+48↑j
                moveq   #0,d0

loc_FFCB28C6:                           ; CODE XREF: sub_FFCB2800+1A↑j
                                        ; sub_FFCB2800+32↑j ...
                movem.l var_14(a6),d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB2800


; =============== S U B R O U T I N E =======================================


sub_FFCB28D0:                           ; CODE XREF: sub_FFCB28E0+9C↓p
                                        ; sub_FFCB2CC0+184↓p
                movea.l ($2078).w,a1
                movea.l $A8(a1),a1
                jmp     (a1)
; End of function sub_FFCB28D0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB28E0:                           ; DATA XREF: ROM:FFC07BFC↑o

var_18          = -$18
var_8           = -8
var_4           = -4
arg_0           =  8
arg_6           =  $E

                link    a6,#-8
                movem.l d6-d7/a3-a4,-(sp)
                move.w  arg_6(a6),d6
                movea.l arg_0(a6),a3
                movea.l ($2B6).w,a0
                move.l  $64(a0),var_4(a6)
                moveq   #0,d0
                movea.l d0,a4
                moveq   #0,d7
                movea.l var_4(a6),a0
                tst.l   $A(a0)
                beq.s   loc_FFCB2916
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB275E
                addq.w  #8,sp

loc_FFCB2916:                           ; CODE XREF: sub_FFCB28E0+28↑j
                move.l  (a3),var_8(a6)
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3258
                movea.l var_8(a6),a0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a4
                tst.l   4(a4)
                addq.w  #4,sp
                beq.s   loc_FFCB298E
                tst.b   $D(a4)
                beq.s   loc_FFCB293E
                moveq   #0,d0
                bra.s   loc_FFCB2992
; ---------------------------------------------------------------------------

loc_FFCB293E:                           ; CODE XREF: sub_FFCB28E0+58↑j
                movea.l a3,a0
                _HLock
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #2,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #4,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFCB2986
                move.b  #1,$D(a4)
                tst.l   8(a4)
                beq.s   loc_FFCB2986
                move.l  var_4(a6),-(sp)
                move.l  8(a4),-(sp)
                jsr     sub_FFCB28D0
                move.b  d0,$C(a4)
                addq.w  #8,sp

loc_FFCB2986:                           ; CODE XREF: sub_FFCB28E0+86↑j
                                        ; sub_FFCB28E0+92↑j
                movea.l a3,a0
                _HUnlock
                move.w  d7,d0
                bra.s   loc_FFCB2992
; ---------------------------------------------------------------------------

loc_FFCB298E:                           ; CODE XREF: sub_FFCB28E0+52↑j
                move.w  #$F62E,d0

loc_FFCB2992:                           ; CODE XREF: sub_FFCB28E0+5C↑j
                                        ; sub_FFCB28E0+AC↑j
                movem.l var_18(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB28E0


; =============== S U B R O U T I N E =======================================


sub_FFCB299C:                           ; CODE XREF: sub_FFCB1960+F2↑p
                                        ; sub_FFCB1D90+114↑p ...
                movea.l ($2078).w,a1
                movea.l $AC(a1),a1
                jmp     (a1)
; End of function sub_FFCB299C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB29B0:                           ; DATA XREF: ROM:FFC07C00↑o

var_1C          = -$1C
arg_0           =  8
arg_6           =  $E
arg_B           =  $13

                link    a6,#-8
                movem.l d6-d7/a2-a4,-(sp)
                move.w  arg_6(a6),d7
                movea.l arg_0(a6),a3
                movea.l ($2B6).w,a0
                movea.l $64(a0),a2
                moveq   #0,d0
                movea.l d0,a4
                clr.w   d6
                move.l  a3,-(sp)
                jsr     sub_FFCB2518
                tst.w   d0
                addq.w  #4,sp
                beq.s   loc_FFCB29E2
                move.w  #$F637,d0
                bra.w   loc_FFCB2A7C
; ---------------------------------------------------------------------------

loc_FFCB29E2:                           ; CODE XREF: sub_FFCB29B0+28↑j
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB29F6
                moveq   #0,d0
                bra.w   loc_FFCB2A7C
; ---------------------------------------------------------------------------

loc_FFCB29F6:                           ; CODE XREF: sub_FFCB29B0+3E↑j
                movea.l (a3),a1
                move.l  a1,-(sp)
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB3258
                addq.l  #4,sp
                movea.l (sp)+,a1
                asl.l   #4,d0
                lea     $1E(a1,d0.l),a4
                tst.l   4(a4)
                beq.s   loc_FFCB2A76
                tst.b   $D(a4)
                bne.s   loc_FFCB2A1C
                moveq   #0,d0
                bra.s   loc_FFCB2A7C
; ---------------------------------------------------------------------------

loc_FFCB2A1C:                           ; CODE XREF: sub_FFCB29B0+66↑j
                move.l  a1,-(sp)
                movea.l a3,a0
                _HLock
                movea.l (sp)+,a1
                tst.b   arg_B(a6)
                beq.s   loc_FFCB2A44
                move.l  a1,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2626
                addq.l  #4,sp
                movea.l (sp)+,a1
                moveq   #0,d0
                move.l  d0,$A(a2)
                move.w  #$FFFF,$E(a2)
                bra.s   loc_FFCB2A4C
; ---------------------------------------------------------------------------

loc_FFCB2A44:                           ; CODE XREF: sub_FFCB29B0+78↑j
                move.l  a3,$A(a2)
                move.w  d7,$E(a2)

loc_FFCB2A4C:                           ; CODE XREF: sub_FFCB29B0+92↑j
                tst.b   $D(a4)
                beq.s   loc_FFCB2A6C
                move.l  a1,-(sp)
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #5,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d0
                movea.l (sp)+,a1
                clr.b   $D(a4)

loc_FFCB2A6C:                           ; CODE XREF: sub_FFCB29B0+A0↑j
                move.l  a1,-(sp)
                movea.l a3,a0
                _HUnlock
                movea.l (sp)+,a1
                bra.s   loc_FFCB2A7A
; ---------------------------------------------------------------------------

loc_FFCB2A76:                           ; CODE XREF: sub_FFCB29B0+60↑j
                move.w  #$F62E,d6

loc_FFCB2A7A:                           ; CODE XREF: sub_FFCB29B0+C4↑j
                move.w  d6,d0

loc_FFCB2A7C:                           ; CODE XREF: sub_FFCB29B0+2E↑j
                                        ; sub_FFCB29B0+42↑j ...
                movem.l var_1C(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB29B0


; =============== S U B R O U T I N E =======================================


sub_FFCB2A86:                           ; CODE XREF: sub_FFCB0940+EE↑p
                                        ; sub_FFCB1960+240↑p ...
                movea.l ($2078).w,a1
                movea.l $B0(a1),a1
                jmp     (a1)
; End of function sub_FFCB2A86


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2A90:                           ; DATA XREF: ROM:FFC07C04↑o

var_8           = -8
arg_0           =  8

                link    a6,#0
                movem.l d7/a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                subq.l  #2,sp
                move.l  arg_0(a6),-(sp)
                jsr     sub_FFCB092A
                move.w  (sp)+,d7
                bne.s   loc_FFCB2AC6
                tst.l   $A(a4)
                beq.s   loc_FFCB2AC6
                move.w  $E(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB275E
                addq.w  #8,sp

loc_FFCB2AC6:                           ; CODE XREF: sub_FFCB2A90+1C↑j
                                        ; sub_FFCB2A90+22↑j
                movem.l var_8(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFCB2A90


; =============== S U B R O U T I N E =======================================


sub_FFCB2AD0:                           ; CODE XREF: ROM:FFCB021E↑p
                movea.l ($2078).w,a1
                movea.l $B4(a1),a1
                jmp     (a1)
; End of function sub_FFCB2AD0

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2AE0:                           ; DATA XREF: ROM:FFC07C08↑o

var_18          = -$18
var_8           = -8
var_4           = -4
arg_0           =  8
arg_6           =  $E
arg_B           =  $13

                link    a6,#-8
                movem.l d6-d7/a3-a4,-(sp)
                move.w  arg_6(a6),d7
                movea.l arg_0(a6),a3
                moveq   #0,d0
                movea.l d0,a4
                movea.l ($2B6).w,a0
                move.l  $64(a0),var_4(a6)
                move.l  (a3),var_8(a6)
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB3258
                movea.l var_8(a6),a0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a4
                tst.l   4(a4)
                addq.w  #4,sp
                beq.w   loc_FFCB2BCA
                movea.l a3,a0
                _HLock
                tst.l   8(a4)
                beq.s   loc_FFCB2B7A
                tst.b   $C(a4)
                beq.s   loc_FFCB2B7A
                subq.l  #4,sp
                move.l  (a4),-(sp)
                moveq   #$13,d0
                _ComponentDispatch
                moveq   #1,d0
                cmp.l   (sp)+,d0
                bne.s   loc_FFCB2B7A
                movea.l 8(a4),a0
                movea.l (a0),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3964
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d6
                ext.l   d6
                movea.l var_4(a6),a0
                moveq   #0,d0
                move.l  d0,$30(a0,d6.l*8)
                moveq   #0,d0
                move.l  d0,-(sp)
                movea.l 8(a4),a0
                movea.l (a0),a0
                move.w  (a0),d1
                ext.l   d1
                move.l  d1,-(sp)
                jsr     sub_FFCB39D2
                lea     $10(sp),sp

loc_FFCB2B7A:                           ; CODE XREF: sub_FFCB2AE0+46↑j
                                        ; sub_FFCB2AE0+4C↑j ...
                tst.b   arg_B(a6)
                beq.s   loc_FFCB2B92
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #$B,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                addq.w  #4,sp

loc_FFCB2B92:                           ; CODE XREF: sub_FFCB2AE0+9E↑j
                tst.b   $D(a4)
                beq.s   loc_FFCB2BAA
                subq.l  #4,sp
                move.l  4(a4),-(sp)
                move.l  #5,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                addq.w  #4,sp

loc_FFCB2BAA:                           ; CODE XREF: sub_FFCB2AE0+B6↑j
                subq.l  #2,sp
                move.l  4(a4),-(sp)
                moveq   #8,d0
                _ComponentDispatch
                moveq   #0,d0
                move.l  d0,4(a4)
                move.l  d0,(a4)
                move.l  d0,8(a4)
                clr.w   $C(a4)
                movea.l a3,a0
                _HUnlock
                addq.w  #2,sp

loc_FFCB2BCA:                           ; CODE XREF: sub_FFCB2AE0+3A↑j
                moveq   #0,d0
                movem.l var_18(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB2AE0


; =============== S U B R O U T I N E =======================================


sub_FFCB2BD6:                           ; CODE XREF: sub_FFCB07B0+6A↑p
                                        ; sub_FFCB07B0+78↑p ...
                movea.l ($2078).w,a1
                movea.l $B8(a1),a1
                jmp     (a1)
; End of function sub_FFCB2BD6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2BE0:                           ; DATA XREF: ROM:FFC07C0C↑o

var_C           = -$C
arg_2           =  $A

                link    a6,#0
                movem.l d5-d7,-(sp)
                move.w  arg_2(a6),d6
                move.l  ($286).w,d7
                move.w  d6,-(sp)
                _DeleteMenu
                tst.l   d7
                beq.s   loc_FFCB2C08
                move.l  ($A1C).w,d5
                move.l  d7,($A1C).w
                move.w  d6,-(sp)
                _DeleteMenu
                move.l  d5,($A1C).w

loc_FFCB2C08:                           ; CODE XREF: sub_FFCB2BE0+16↑j
                _InvalMenuBar
                movem.l var_C(a6),d5-d7
                unlk    a6
                rts
; End of function sub_FFCB2BE0


; =============== S U B R O U T I N E =======================================


sub_FFCB2C14:                           ; CODE XREF: sub_FFCB2CC0+162↓p
                                        ; sub_FFCB2CC0+1A2↓p
                movea.l ($2078).w,a1
                movea.l $BC(a1),a1
                jmp     (a1)
; End of function sub_FFCB2C14

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2C20:                           ; DATA XREF: ROM:FFC07C10↑o

var_10          = -$10
var_8           = -8
var_4           = -4

                link    a6,#-8
                movem.l d7/a4,-(sp)
                movea.l ($2B6).w,a0
                move.l  $1AE(a0),d7
                movea.l ($2B6).w,a0
                tst.w   $128(a0)
                beq.s   loc_FFCB2C82
                subq.l  #2,sp
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_4(a6)
                move.w  #$47,-(sp) ; 'G'
                _OSDispatch
                cmp.l   var_4(a6),d7
                addq.w  #2,sp
                bhi.s   loc_FFCB2C56
                moveq   #1,d0
                bra.s   loc_FFCB2CA0
; ---------------------------------------------------------------------------

loc_FFCB2C56:                           ; CODE XREF: sub_FFCB2C20+30↑j
                subq.l  #2,sp
                pea     var_8(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.w  #$47,-(sp) ; 'G'
                _OSDispatch
                move.l  var_4(a6),d0
                add.l   var_8(a6),d0
                cmp.l   d0,d7
                addq.w  #2,sp
                bhi.s   loc_FFCB2C78
                moveq   #1,d0
                bra.s   loc_FFCB2CA0
; ---------------------------------------------------------------------------

loc_FFCB2C78:                           ; CODE XREF: sub_FFCB2C20+52↑j
                _PurgeSpaceSys
                cmp.l   a0,d7
                bhi.s   loc_FFCB2C9E
                moveq   #1,d0
                bra.s   loc_FFCB2CA0
; ---------------------------------------------------------------------------

loc_FFCB2C82:                           ; CODE XREF: sub_FFCB2C20+18↑j
                _PurgeSpaceSys
                cmp.l   a0,d7
                bhi.s   loc_FFCB2C8C
                moveq   #1,d0
                bra.s   loc_FFCB2CA0
; ---------------------------------------------------------------------------

loc_FFCB2C8C:                           ; CODE XREF: sub_FFCB2C20+66↑j
                move.l  d7,d0
                _NewHandle
                movea.l a0,a4
                move.l  a4,d0
                beq.s   loc_FFCB2C9E
                movea.l a4,a0
                _DisposeHandle
                moveq   #1,d0
                bra.s   loc_FFCB2CA0
; ---------------------------------------------------------------------------

loc_FFCB2C9E:                           ; CODE XREF: sub_FFCB2C20+5C↑j
                                        ; sub_FFCB2C20+74↑j
                moveq   #0,d0

loc_FFCB2CA0:                           ; CODE XREF: sub_FFCB2C20+34↑j
                                        ; sub_FFCB2C20+56↑j ...
                movem.l var_10(a6),d7/a4
                unlk    a6
                rts
; End of function sub_FFCB2C20


; =============== S U B R O U T I N E =======================================


sub_FFCB2CAA:                           ; CODE XREF: sub_FFCB2CC0:loc_FFCB2D64↓p
                movea.l ($2078).w,a1
                movea.l $C0(a1),a1
                jmp     (a1)
; End of function sub_FFCB2CAA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2CC0:                           ; DATA XREF: ROM:FFC07C14↑o

var_24          = -$24
var_C           = -$C
var_8           = -8
arg_0           =  8
arg_4           =  $C
arg_A           =  $12
arg_F           =  $17

                link    a6,#-$C
                movem.l d5-d7/a2-a4,-(sp)
                move.b  arg_F(a6),d5
                moveq   #0,d0
                move.l  d0,var_8(a6)
                moveq   #0,d7
                movea.l ($2B6).w,a0
                movea.l $64(a0),a2
                movea.l d0,a4
                move.w  arg_A(a6),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d6
                movea.l arg_0(a6),a0
                _HLock
                movea.l arg_0(a6),a0
                movea.l (a0),a3
                ext.l   d6
                move.l  d6,d0
                asl.l   #4,d0
                lea     $1E(a3,d0.l),a0
                move.l  a0,var_C(a6)
                subq.l  #2,sp
                move.w  #$40,-(sp) ; '@'
                _OSDispatch
                lea     $A(a3),a0
                lea     $1C(a2),a1
                moveq   #1,d0

loc_FFCB2D18:                           ; CODE XREF: sub_FFCB2CC0+5A↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFCB2D18
                addq.w  #6,sp
                bne.s   loc_FFCB2D30
                subq.l  #4,sp
                move.l  ($2A6).w,(sp)
                jsr     sub_FFCB39FA
                movea.l d0,a4
                addq.w  #4,sp

loc_FFCB2D30:                           ; CODE XREF: sub_FFCB2CC0+60↑j
                subq.l  #4,sp
                move.l  arg_4(a6),-(sp)
                moveq   #7,d0
                _ComponentDispatch
                movea.l (sp)+,a3
                subq.l  #2,sp
                move.w  #$41,-(sp) ; 'A'
                _OSDispatch
                move.l  a3,d0
                addq.w  #2,sp
                bne.s   loc_FFCB2D64
                movea.l arg_0(a6),a0
                _HUnlock
                move.l  a4,d0
                beq.s   loc_FFCB2D5C
                move.l  a4,-(sp)
                jsr     sub_FFCB39FA
                addq.w  #4,sp

loc_FFCB2D5C:                           ; CODE XREF: sub_FFCB2CC0+92↑j
                move.w  #$F633,d0
                bra.w   loc_FFCB2E84
; ---------------------------------------------------------------------------

loc_FFCB2D64:                           ; CODE XREF: sub_FFCB2CC0+88↑j
                jsr     sub_FFCB2CAA
                tst.b   d0
                bne.s   loc_FFCB2D9C
                subq.l  #4,sp
                move.l  a3,-(sp)
                move.l  #$B,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                subq.l  #2,sp
                move.l  a3,-(sp)
                moveq   #8,d0
                _ComponentDispatch
                movea.l arg_0(a6),a0
                _HUnlock
                move.l  a4,d0
                addq.w  #6,sp
                beq.s   loc_FFCB2D96
                move.l  a4,-(sp)
                jsr     sub_FFCB39FA
                addq.w  #4,sp

loc_FFCB2D96:                           ; CODE XREF: sub_FFCB2CC0+CC↑j
                moveq   #$FFFFFF94,d0
                bra.w   loc_FFCB2E84
; ---------------------------------------------------------------------------

loc_FFCB2D9C:                           ; CODE XREF: sub_FFCB2CC0+AA↑j
                movea.l var_C(a6),a0
                move.l  a3,4(a0)
                movea.l var_C(a6),a0
                move.l  arg_4(a6),(a0)
                ext.l   d6
                move.l  arg_4(a6),$2C(a2,d6.l*8)
                tst.b   d5
                beq.s   loc_FFCB2DEC
                subq.l  #4,sp
                move.l  a3,-(sp)
                move.l  #2,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                subq.l  #4,sp
                move.l  a3,-(sp)
                move.l  #4,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFCB2DE6
                movea.l var_C(a6),a0
                move.b  #1,$D(a0)
                bra.s   loc_FFCB2DEC
; ---------------------------------------------------------------------------

loc_FFCB2DE6:                           ; CODE XREF: sub_FFCB2CC0+118↑j
                move.w  d7,d0
                bra.w   loc_FFCB2E84
; ---------------------------------------------------------------------------

loc_FFCB2DEC:                           ; CODE XREF: sub_FFCB2CC0+F6↑j
                                        ; sub_FFCB2CC0+124↑j
                subq.l  #4,sp
                move.l  a3,-(sp)
                pea     var_8(a6)
                move.l  #$40007,-(sp)
                moveq   #0,d0
                _ComponentDispatch
                move.l  (sp)+,d7
                bne.s   loc_FFCB2E54
                movea.l var_C(a6),a0
                move.l  var_8(a6),8(a0)
                ext.l   d6
                move.l  $30(a2,d6.l*8),d0
                cmp.l   var_8(a6),d0
                beq.s   loc_FFCB2E30
                tst.b   d5
                beq.s   loc_FFCB2E28
                move.l  #$FFFFBF8C,-(sp)
                jsr     sub_FFCB2C14
                addq.w  #4,sp

loc_FFCB2E28:                           ; CODE XREF: sub_FFCB2CC0+15A↑j
                ext.l   d6
                move.l  var_8(a6),$30(a2,d6.l*8)

loc_FFCB2E30:                           ; CODE XREF: sub_FFCB2CC0+156↑j
                tst.b   d5
                beq.s   loc_FFCB2E70
                tst.l   var_8(a6)
                beq.s   loc_FFCB2E70
                move.l  a2,-(sp)
                movea.l var_C(a6),a0
                move.l  8(a0),-(sp)
                jsr     sub_FFCB28D0
                movea.l var_C(a6),a0
                move.b  d0,$C(a0)
                addq.w  #8,sp
                bra.s   loc_FFCB2E70
; ---------------------------------------------------------------------------

loc_FFCB2E54:                           ; CODE XREF: sub_FFCB2CC0+140↑j
                cmpi.l  #$FFFFF62F,d7
                bne.s   loc_FFCB2E70
                move.l  #$FFFFBF8C,-(sp)
                jsr     sub_FFCB2C14
                ext.l   d6
                moveq   #0,d0
                move.l  d0,$30(a2,d6.l*8)
                addq.w  #4,sp

loc_FFCB2E70:                           ; CODE XREF: sub_FFCB2CC0+172↑j
                                        ; sub_FFCB2CC0+178↑j ...
                movea.l arg_0(a6),a0
                _HUnlock
                move.l  a4,d0
                beq.s   loc_FFCB2E82
                move.l  a4,-(sp)
                jsr     sub_FFCB39FA
                addq.w  #4,sp

loc_FFCB2E82:                           ; CODE XREF: sub_FFCB2CC0+1B8↑j
                moveq   #0,d0

loc_FFCB2E84:                           ; CODE XREF: sub_FFCB2CC0+A0↑j
                                        ; sub_FFCB2CC0+D8↑j ...
                movem.l var_24(a6),d5-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB2CC0


; =============== S U B R O U T I N E =======================================


sub_FFCB2E8E:                           ; CODE XREF: sub_FFCB1960+10C↑p
                                        ; sub_FFCB1960+1F0↑p ...
                movea.l ($2078).w,a1
                movea.l $C4(a1),a1
                jmp     (a1)
; End of function sub_FFCB2E8E

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

; Attributes: bp-based frame

sub_FFCB2EA0:                           ; DATA XREF: ROM:FFC07C18↑o

var_1C          = -$1C
var_C           = -$C
var_8           = -8
var_4           = -4
arg_0           =  8
arg_7           =  $F

                link    a6,#-$C
                movem.l d6-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                moveq   #0,d6
                move.w  6(a3),d6
                cmpi.w  #1,d6
                bne.s   loc_FFCB2EDE
                subq.l  #4,sp
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$FC18,-(sp)
                move.l  #$8404000C,-(sp)
                _ScriptUtil
                move.l  (sp)+,d7
                beq.s   loc_FFCB2EDE
                move.w  #$F62B,d0
                bra.w   loc_FFCB2F62
; ---------------------------------------------------------------------------

loc_FFCB2EDE:                           ; CODE XREF: sub_FFCB2EA0+1E↑j
                                        ; sub_FFCB2EA0+34↑j
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB2EF2
                move.w  #$F62B,d0
                bra.s   loc_FFCB2F62
; ---------------------------------------------------------------------------

loc_FFCB2EF2:                           ; CODE XREF: sub_FFCB2EA0+4A↑j
                move.l  a4,-(sp)
                jsr     sub_FFCB2518
                move.w  d0,d7
                addq.w  #4,sp
                beq.s   loc_FFCB2F02
                move.w  d7,d0
                bra.s   loc_FFCB2F62
; ---------------------------------------------------------------------------

loc_FFCB2F02:                           ; CODE XREF: sub_FFCB2EA0+5C↑j
                move.l  (a4),var_8(a6)
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3258
                movea.l var_8(a6),a0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a0
                move.l  a0,var_C(a6)
                tst.l   4(a0)
                addq.w  #4,sp
                beq.s   loc_FFCB2F32
                ext.l   d6
                move.l  d6,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB299C
                addq.w  #8,sp
                bra.s   loc_FFCB2F62
; ---------------------------------------------------------------------------

loc_FFCB2F32:                           ; CODE XREF: sub_FFCB2EA0+82↑j
                subq.l  #2,sp
                pea     var_4(a6)
                pea     6(a3)
                jsr     sub_FFCB1D7C
                move.w  (sp)+,d7
                bne.s   loc_FFCB2F60
                moveq   #0,d0
                move.b  arg_7(a6),d0
                move.l  d0,-(sp)
                ext.l   d6
                move.l  d6,-(sp)
                move.l  var_4(a6),-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2E8E
                move.w  d0,d7
                lea     $10(sp),sp

loc_FFCB2F60:                           ; CODE XREF: sub_FFCB2EA0+A2↑j
                move.w  d7,d0

loc_FFCB2F62:                           ; CODE XREF: sub_FFCB2EA0+3A↑j
                                        ; sub_FFCB2EA0+50↑j ...
                movem.l var_1C(a6),d6-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB2EA0


; =============== S U B R O U T I N E =======================================


sub_FFCB2F6C:                           ; CODE XREF: sub_FFCB05E0+122↑p
                                        ; sub_FFCB1D90+EA↑p
                movea.l ($2078).w,a1
                movea.l $C8(a1),a1
                jmp     (a1)
; End of function sub_FFCB2F6C

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB2F80:                           ; DATA XREF: ROM:FFC07C1C↑o

var_24          = -$24
var_10          = -$10
var_C           = -$C
var_8           = -8
arg_0           =  8

                link    a6,#-$10
                movem.l d5-d7/a3-a4,-(sp)
                movea.l arg_0(a6),a3
                clr.b   d5
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                move.w  6(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d6
                move.l  (a3),var_10(a6)
                ext.l   d6
                movea.l var_10(a6),a0
                move.l  d6,d0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a0
                move.l  a0,var_C(a6)
                ext.l   d6
                move.l  $2C(a4,d6.l*8),d0
                cmp.l   (a0),d0
                addq.w  #4,sp
                bne.s   loc_FFCB2FDE
                move.w  6(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB299C
                move.w  d0,d7
                addq.w  #8,sp
                bne.s   loc_FFCB303A
                moveq   #1,d5
                bra.s   loc_FFCB303A
; ---------------------------------------------------------------------------

loc_FFCB2FDE:                           ; CODE XREF: sub_FFCB2F80+44↑j
                movea.l var_C(a6),a0
                tst.l   (a0)
                bne.s   loc_FFCB300A
                moveq   #1,d0
                move.l  d0,-(sp)
                move.w  6(a4),d1
                ext.l   d1
                move.l  d1,-(sp)
                ext.l   d6
                move.l  $2C(a4,d6.l*8),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2E8E
                move.w  d0,d7
                lea     $10(sp),sp
                bne.s   loc_FFCB303A
                moveq   #1,d5
                bra.s   loc_FFCB303A
; ---------------------------------------------------------------------------

loc_FFCB300A:                           ; CODE XREF: sub_FFCB2F80+64↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                move.w  6(a4),d1
                ext.l   d1
                move.l  d1,-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2BD6
                moveq   #1,d0
                move.l  d0,-(sp)
                move.w  6(a4),d1
                ext.l   d1
                move.l  d1,-(sp)
                ext.l   d6
                move.l  $2C(a4,d6.l*8),-(sp)
                move.l  a3,-(sp)
                jsr     sub_FFCB2E8E
                move.w  d0,d7
                lea     $1C(sp),sp

loc_FFCB303A:                           ; CODE XREF: sub_FFCB2F80+58↑j
                                        ; sub_FFCB2F80+5C↑j ...
                tst.b   d5
                beq.s   loc_FFCB3078
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$37,-(sp) ; '7'
                _OSDispatch
                subq.l  #2,sp
                pea     var_8(a6)
                jsr     sub_FFCB036E
                tst.w   (sp)+
                addq.w  #2,sp
                bne.s   loc_FFCB306A
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp
                bra.s   loc_FFCB3078
; ---------------------------------------------------------------------------

loc_FFCB306A:                           ; CODE XREF: sub_FFCB2F80+D8↑j
                subq.l  #2,sp
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp

loc_FFCB3078:                           ; CODE XREF: sub_FFCB2F80+BC↑j
                                        ; sub_FFCB2F80+E8↑j
                move.w  d7,d0
                movem.l var_24(a6),d5-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB2F80


; =============== S U B R O U T I N E =======================================


sub_FFCB3084:                           ; CODE XREF: sub_FFCB0B90+20E↑p
                                        ; sub_FFCB1FC0+112↑p ...
                movea.l ($2078).w,a1
                movea.l $CC(a1),a1
                jmp     (a1)
; End of function sub_FFCB3084

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB3090:                           ; DATA XREF: ROM:FFC07C20↑o
                link    a6,#0
                moveq   #1,d0
                unlk    a6
                rts
; End of function sub_FFCB3090


; =============== S U B R O U T I N E =======================================


sub_FFCB309A:                           ; CODE XREF: sub_FFCB1D90+4A↑p
                movea.l ($2078).w,a1
                movea.l $D0(a1),a1
                jmp     (a1)
; End of function sub_FFCB309A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB30B0:                           ; DATA XREF: ROM:FFC07C24↑o

arg_2           =  $A

                link    a6,#0
                move.w  arg_2(a6),d0
                subq.w  #1,d0
                beq.s   loc_FFCB30CA
                subq.w  #1,d0
                beq.s   loc_FFCB30CA
                subq.w  #1,d0
                beq.s   loc_FFCB30CA
                subi.w  #$16,d0
                bne.s   loc_FFCB30CE

loc_FFCB30CA:                           ; CODE XREF: sub_FFCB30B0+A↑j
                                        ; sub_FFCB30B0+E↑j ...
                moveq   #0,d0
                bra.s   loc_FFCB30D0
; ---------------------------------------------------------------------------

loc_FFCB30CE:                           ; CODE XREF: sub_FFCB30B0+18↑j
                moveq   #1,d0

loc_FFCB30D0:                           ; CODE XREF: sub_FFCB30B0+1C↑j
                unlk    a6
                rts
; End of function sub_FFCB30B0


; =============== S U B R O U T I N E =======================================


sub_FFCB30D4:                           ; CODE XREF: sub_FFCB1960+62↑p
                                        ; sub_FFCB1C50+36↑p ...
                movea.l ($2078).w,a1
                movea.l $D4(a1),a1
                jmp     (a1)
; End of function sub_FFCB30D4

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB30E0:                           ; DATA XREF: ROM:FFC07C28↑o

var_4           = -4
arg_2           =  $A

                link    a6,#0
                move.l  a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                move.w  arg_2(a6),d0
                subq.w  #1,d0
                beq.s   loc_FFCB3108
                subq.w  #1,d0
                beq.s   loc_FFCB3104
                subq.w  #1,d0
                beq.s   loc_FFCB3104
                subi.w  #$16,d0
                bne.s   loc_FFCB3116

loc_FFCB3104:                           ; CODE XREF: sub_FFCB30E0+18↑j
                                        ; sub_FFCB30E0+1C↑j
                moveq   #1,d0
                bra.s   loc_FFCB3118
; ---------------------------------------------------------------------------

loc_FFCB3108:                           ; CODE XREF: sub_FFCB30E0+14↑j
                tst.b   $1A(a4)
                beq.s   loc_FFCB3112
                moveq   #0,d0
                bra.s   loc_FFCB3118
; ---------------------------------------------------------------------------

loc_FFCB3112:                           ; CODE XREF: sub_FFCB30E0+2C↑j
                moveq   #1,d0
                bra.s   loc_FFCB3118
; ---------------------------------------------------------------------------

loc_FFCB3116:                           ; CODE XREF: sub_FFCB30E0+22↑j
                moveq   #0,d0

loc_FFCB3118:                           ; CODE XREF: sub_FFCB30E0+26↑j
                                        ; sub_FFCB30E0+30↑j ...
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFCB30E0


; =============== S U B R O U T I N E =======================================


sub_FFCB3120:                           ; CODE XREF: sub_FFCB05E0+10E↑p
                                        ; sub_FFCB1960+222↑p ...
                movea.l ($2078).w,a1
                movea.l $D8(a1),a1
                jmp     (a1)
; End of function sub_FFCB3120

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB3130:                           ; DATA XREF: ROM:FFC07C2C↑o

var_C           = -$C

                link    a6,#0
                movem.l d6-d7/a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                tst.b   $19(a4)
                bne.s   loc_FFCB3160
                move.w  #$A89F,d0
                _GetToolTrapAddress
                move.l  a0,d6
                move.w  #$A88F,d0
                _GetToolTrapAddress
                move.l  a0,d7
                cmp.l   d6,d7
                beq.s   loc_FFCB31BE
                move.b  #1,$19(a4)

loc_FFCB3160:                           ; CODE XREF: sub_FFCB3130+14↑j
                moveq   #1,d0
                cmp.w   6(a4),d0
                bne.s   loc_FFCB318E
                subq.l  #4,sp
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$FC18,-(sp)
                move.l  #$8404000C,-(sp)
                _ScriptUtil
                tst.l   (sp)+
                beq.s   loc_FFCB318E
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp
                bra.s   loc_FFCB31BE
; ---------------------------------------------------------------------------

loc_FFCB318E:                           ; CODE XREF: sub_FFCB3130+36↑j
                                        ; sub_FFCB3130+4C↑j
                move.w  6(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFCB31B0
                subq.l  #2,sp
                moveq   #1,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp
                bra.s   loc_FFCB31BE
; ---------------------------------------------------------------------------

loc_FFCB31B0:                           ; CODE XREF: sub_FFCB3130+6E↑j
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp

loc_FFCB31BE:                           ; CODE XREF: sub_FFCB3130+28↑j
                                        ; sub_FFCB3130+5C↑j ...
                movem.l var_C(a6),d6-d7/a4
                unlk    a6
                rts
; End of function sub_FFCB3130


; =============== S U B R O U T I N E =======================================


sub_FFCB31C8:                           ; CODE XREF: ROM:FFCB041A↑p
                movea.l ($2078).w,a1
                movea.l $DC(a1),a1
                jmp     (a1)
; End of function sub_FFCB31C8

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB31E0:                           ; DATA XREF: ROM:FFC07C30↑o

var_4           = -4
arg_2           =  $A
arg_4           =  $C

                link    a6,#0
                move.l  a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                subq.l  #2,sp
                move.l  arg_4(a6),-(sp)
                jsr     sub_FFCB036E
                tst.w   (sp)+
                beq.s   loc_FFCB3200
                moveq   #0,d0
                bra.s   loc_FFCB322A
; ---------------------------------------------------------------------------

loc_FFCB3200:                           ; CODE XREF: sub_FFCB31E0+1A↑j
                move.w  arg_2(a6),d0
                subq.w  #1,d0
                beq.s   loc_FFCB321A
                subq.w  #1,d0
                beq.s   loc_FFCB3216
                subq.w  #1,d0
                beq.s   loc_FFCB3216
                subi.w  #$16,d0
                bne.s   loc_FFCB3228

loc_FFCB3216:                           ; CODE XREF: sub_FFCB31E0+2A↑j
                                        ; sub_FFCB31E0+2E↑j
                moveq   #1,d0
                bra.s   loc_FFCB322A
; ---------------------------------------------------------------------------

loc_FFCB321A:                           ; CODE XREF: sub_FFCB31E0+26↑j
                tst.b   $1A(a4)
                beq.s   loc_FFCB3224
                moveq   #0,d0
                bra.s   loc_FFCB322A
; ---------------------------------------------------------------------------

loc_FFCB3224:                           ; CODE XREF: sub_FFCB31E0+3E↑j
                moveq   #1,d0
                bra.s   loc_FFCB322A
; ---------------------------------------------------------------------------

loc_FFCB3228:                           ; CODE XREF: sub_FFCB31E0+34↑j
                moveq   #0,d0

loc_FFCB322A:                           ; CODE XREF: sub_FFCB31E0+1E↑j
                                        ; sub_FFCB31E0+38↑j ...
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFCB31E0


; =============== S U B R O U T I N E =======================================


sub_FFCB3232:                           ; CODE XREF: sub_FFCB0940+D6↑p
                                        ; sub_FFCB0B90+1FE↑p ...
                movea.l ($2078).w,a1
                movea.l $E0(a1),a1
                jmp     (a1)
; End of function sub_FFCB3232

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB3240:                           ; DATA XREF: ROM:FFC07C34↑o

arg_2           =  $A

                link    a6,#0
                move.w  arg_2(a6),d0
                cmpi.w  #$19,d0
                bne.s   loc_FFCB3252
                moveq   #0,d0
                bra.s   loc_FFCB3254
; ---------------------------------------------------------------------------

loc_FFCB3252:                           ; CODE XREF: sub_FFCB3240+C↑j
                ext.l   d0

loc_FFCB3254:                           ; CODE XREF: sub_FFCB3240+10↑j
                unlk    a6
                rts
; End of function sub_FFCB3240


; =============== S U B R O U T I N E =======================================


sub_FFCB3258:                           ; CODE XREF: sub_FFCB0DF0+2E↑p
                                        ; sub_FFCB1010+7C↑p ...
                movea.l ($2078).w,a1
                movea.l $E4(a1),a1
                jmp     (a1)
; End of function sub_FFCB3258

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB3270:                           ; DATA XREF: ROM:FFC07C38↑o

var_18          = -$18
arg_0           =  8
arg_4           =  $C

                link    a6,#-4
                movem.l d6-d7/a2-a4,-(sp)
                moveq   #0,d0
                movea.l d0,a4
                movea.l arg_4(a6),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                move.l  d0,d6
                subq.l  #4,sp
                move.l  #$696E706D,-(sp)
                move.w  #$E000,-(sp)
                _GetResource
                movea.l (sp)+,a4
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7
                addq.w  #4,sp
                beq.s   loc_FFCB32AC
                move.w  d7,d0
                bra.w   loc_FFCB3340
; ---------------------------------------------------------------------------

loc_FFCB32AC:                           ; CODE XREF: sub_FFCB3270+34↑j
                move.l  a4,d0
                bne.s   loc_FFCB32B8
                move.w  #$FF40,d0
                bra.w   loc_FFCB3340
; ---------------------------------------------------------------------------

loc_FFCB32B8:                           ; CODE XREF: sub_FFCB3270+3E↑j
                tst.l   (a4)
                bne.s   loc_FFCB32CA
                move.l  a4,-(sp)
                _LoadResource           ; come-from patches = #1
                tst.l   (a4)
                bne.s   loc_FFCB32CA
                move.w  #$FF40,d0
                bra.s   loc_FFCB3340
; ---------------------------------------------------------------------------

loc_FFCB32CA:                           ; CODE XREF: sub_FFCB3270+4A↑j
                                        ; sub_FFCB3270+52↑j
                movea.l a4,a2
                movea.l (a2),a0
                cmpi.l  #$74736D72,(a0)
                beq.s   loc_FFCB32DC
                move.w  #$FF40,d0
                bra.s   loc_FFCB3340
; ---------------------------------------------------------------------------

loc_FFCB32DC:                           ; CODE XREF: sub_FFCB3270+64↑j
                movea.l (a2),a0
                moveq   #4,d0
                cmp.w   6(a0),d0
                beq.s   loc_FFCB32EC
                move.w  #$FF40,d0
                bra.s   loc_FFCB3340
; ---------------------------------------------------------------------------

loc_FFCB32EC:                           ; CODE XREF: sub_FFCB3270+74↑j
                movea.l (a2),a0
                move.l  d6,d0
                moveq   #$1A,d1
                muls.l  d1,d0
                lea     8(a0,d0.l),a3
                tst.b   (a3)
                beq.s   loc_FFCB333A
                tst.b   1(a3)
                beq.s   loc_FFCB3326
                movea.l arg_4(a6),a0
                move.w  (a0),d0
                ext.l   d0
                movea.l arg_0(a6),a0
                move.l  d0,(a0)
                move.w  2(a3),d0
                ext.l   d0
                movea.l arg_0(a6),a0
                move.l  d0,4(a0)
                move.w  #$F62C,d7
                bra.s   loc_FFCB333E
; ---------------------------------------------------------------------------

loc_FFCB3326:                           ; CODE XREF: sub_FFCB3270+92↑j
                movea.l arg_0(a6),a0
                movea.l a3,a1
                addq.l  #6,a1
                moveq   #4,d0

loc_FFCB3330:                           ; CODE XREF: sub_FFCB3270+C2↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFCB3330
                clr.w   d7
                bra.s   loc_FFCB333E
; ---------------------------------------------------------------------------

loc_FFCB333A:                           ; CODE XREF: sub_FFCB3270+8C↑j
                move.w  #$F63B,d7

loc_FFCB333E:                           ; CODE XREF: sub_FFCB3270+B4↑j
                                        ; sub_FFCB3270+C8↑j
                move.w  d7,d0

loc_FFCB3340:                           ; CODE XREF: sub_FFCB3270+38↑j
                                        ; sub_FFCB3270+44↑j ...
                movem.l var_18(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB3270


; =============== S U B R O U T I N E =======================================


sub_FFCB334A:                           ; CODE XREF: sub_FFCB1C50+50↑p
                movea.l ($2078).w,a1
                movea.l $E8(a1),a1
                jmp     (a1)
; End of function sub_FFCB334A

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB3360:                           ; DATA XREF: ROM:FFC07C3C↑o

arg_0           =  8

                link    a6,#0
                movea.l arg_0(a6),a1
                move.w  (a1),d0
                ext.l   d0
                move.l  d0,d2
                lsl.l   #8,d0
                move.w  2(a1),d1
                ext.l   d1
                add.l   d0,d1
                move.l  d1,d0
                unlk    a6
                rts
; End of function sub_FFCB3360


; =============== S U B R O U T I N E =======================================


sub_FFCB337E:                           ; CODE XREF: sub_FFCB1C50+E6↑p
                movea.l ($2078).w,a1
                movea.l $EC(a1),a1
                jmp     (a1)
; End of function sub_FFCB337E

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

; Attributes: bp-based frame

sub_FFCB3390:                           ; DATA XREF: ROM:FFC07C40↑o

var_1C          = -$1C
var_4           = -4
arg_0           =  8

                link    a6,#-4
                movem.l d5-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                moveq   #1,d0
                cmp.w   (a2),d0
                beq.s   loc_FFCB33B2
                move.w  #$F62B,d0
                bra.w   loc_FFCB34A8
; ---------------------------------------------------------------------------

loc_FFCB33B2:                           ; CODE XREF: sub_FFCB3390+18↑j
                tst.b   $19(a4)
                beq.s   loc_FFCB33C6
                subq.l  #2,sp
                moveq   #0,d0
                move.b  d0,-(sp)
                move.w  #$4E,-(sp) ; 'N'
                _OSDispatch
                addq.w  #2,sp

loc_FFCB33C6:                           ; CODE XREF: sub_FFCB3390+26↑j
                move.b  #1,$1A(a4)
                move.w  6(a4),d6
                moveq   #1,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                move.l  d0,d5
                subq.l  #4,sp
                move.l  #$696E706D,-(sp)
                move.w  #$E000,-(sp)
                _GetResource
                move.l  (sp)+,var_4(a6)
                addq.w  #4,sp
                bne.s   loc_FFCB3408
                pea     var_4(a6)
                jsr     sub_FFCB36BA
                move.w  d0,d7
                tst.l   var_4(a6)
                addq.w  #4,sp
                bne.s   loc_FFCB3408
                move.w  d7,d0
                bra.w   loc_FFCB34A8
; ---------------------------------------------------------------------------

loc_FFCB3408:                           ; CODE XREF: sub_FFCB3390+5E↑j
                                        ; sub_FFCB3390+70↑j
                movea.l var_4(a6),a0
                tst.l   (a0)
                bne.s   loc_FFCB3424
                move.l  a0,-(sp)
                _LoadResource           ; come-from patches = #1
                movea.l var_4(a6),a0
                tst.l   (a0)
                bne.s   loc_FFCB3424
                move.w  #$FF40,d0
                bra.w   loc_FFCB34A8
; ---------------------------------------------------------------------------

loc_FFCB3424:                           ; CODE XREF: sub_FFCB3390+7E↑j
                                        ; sub_FFCB3390+8A↑j
                movea.l var_4(a6),a0
                movea.l (a0),a0
                cmpi.l  #$74736D72,(a0)
                beq.s   loc_FFCB3438
                move.w  #$FF40,d0
                bra.s   loc_FFCB34A8
; ---------------------------------------------------------------------------

loc_FFCB3438:                           ; CODE XREF: sub_FFCB3390+A0↑j
                movea.l var_4(a6),a0
                movea.l (a0),a0
                move.l  d5,d0
                moveq   #$1A,d1
                muls.l  d1,d0
                lea     8(a0,d0.l),a3
                move.b  #1,(a3)
                move.b  #1,1(a3)
                move.w  2(a2),2(a3)
                movea.l var_4(a6),a0
                _HNoPurge
                move.l  var_4(a6),-(sp)
                _ChangedResource
                move.l  var_4(a6),-(sp)
                _WriteResource
                movea.l var_4(a6),a0
                _HPurge
                tst.l   $10(a4)
                bne.s   loc_FFCB347C
                moveq   #0,d0
                bra.s   loc_FFCB34A8
; ---------------------------------------------------------------------------

loc_FFCB347C:                           ; CODE XREF: sub_FFCB3390+E6↑j
                move.w  #1,6(a4)
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB3494
                moveq   #$FFFFFFFF,d7
                bra.s   loc_FFCB3496
; ---------------------------------------------------------------------------

loc_FFCB3494:                           ; CODE XREF: sub_FFCB3390+FE↑j
                move.w  d6,d7

loc_FFCB3496:                           ; CODE XREF: sub_FFCB3390+102↑j
                cmpi.w  #$FFFF,d7
                beq.s   loc_FFCB34A6
                ext.l   d7
                move.l  d7,-(sp)
                jsr     sub_FFCB3888
                addq.w  #4,sp

loc_FFCB34A6:                           ; CODE XREF: sub_FFCB3390+10A↑j
                moveq   #0,d0

loc_FFCB34A8:                           ; CODE XREF: sub_FFCB3390+1E↑j
                                        ; sub_FFCB3390+74↑j ...
                movem.l var_1C(a6),d5-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB3390


; =============== S U B R O U T I N E =======================================


sub_FFCB34B2:                           ; CODE XREF: ROM:FFCB03B6↑p
                movea.l ($2078).w,a1
                movea.l $F0(a1),a1
                jmp     (a1)
; End of function sub_FFCB34B2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB34C0:                           ; DATA XREF: ROM:FFC07C44↑o

var_20          = -$20
var_8           = -8
var_4           = -4
arg_2           =  $A

                link    a6,#-8
                movem.l d4-d7/a3-a4,-(sp)
                movea.l ($2B6).w,a0
                move.l  $64(a0),var_8(a6)
                subq.l  #4,sp
                moveq   #$12,d0
                move.w  d0,-(sp)
                move.l  #$84020008,-(sp)
                _ScriptUtil
                move.l  (sp)+,d7
                movea.l var_8(a6),a0
                movea.l $10(a0),a4
                move.l  a4,d0
                beq.w   loc_FFCB35F4
                move.w  6(a0),d6
                movea.l a4,a0
                _HGetState
                move.b  d0,d5
                movea.l a4,a0
                _HLock
                move.l  (a4),var_4(a6)
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB3534
                movea.l var_4(a6),a0
                tst.b   $12(a0)
                beq.s   loc_FFCB3528
                clr.b   $12(a0)
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB0B80
                addq.w  #2,sp

loc_FFCB3528:                           ; CODE XREF: sub_FFCB34C0+58↑j
                movea.l a4,a0
                move.b  d5,d0
                _HSetState
                moveq   #0,d0
                bra.w   loc_FFCB35F6
; ---------------------------------------------------------------------------

loc_FFCB3534:                           ; CODE XREF: sub_FFCB34C0+4E↑j
                ext.l   d6
                move.l  d6,-(sp)
                jsr     sub_FFCB3258
                move.w  d0,d4
                ext.l   d4
                movea.l var_4(a6),a0
                move.l  d4,d0
                asl.l   #4,d0
                lea     $1E(a0,d0.l),a3
                tst.w   arg_2(a6)
                addq.w  #4,sp
                bne.s   loc_FFCB35CE
                movea.l var_8(a6),a0
                cmpa.l  $14(a0),a4
                ext.l   d6
                cmp.l   d7,d6
                beq.w   loc_FFCB35EE
                move.w  d7,d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB35EE
                movea.l var_8(a6),a0
                cmpa.l  $14(a0),a4
                bne.s   loc_FFCB35AE
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB0B80
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB38DA
                tst.l   8(a3)
                addq.w  #6,sp
                beq.s   loc_FFCB35EE
                movea.l 8(a3),a0
                movea.l (a0),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3964
                clr.b   $C(a3)
                addq.w  #4,sp
                bra.s   loc_FFCB35EE
; ---------------------------------------------------------------------------

loc_FFCB35AE:                           ; CODE XREF: sub_FFCB34C0+BC↑j
                tst.l   8(a3)
                beq.s   loc_FFCB35EE
                move.l  d7,-(sp)
                movea.l 8(a3),a0
                movea.l (a0),a0
                move.w  (a0),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB39D2
                clr.b   $C(a3)
                addq.w  #8,sp
                bra.s   loc_FFCB35EE
; ---------------------------------------------------------------------------

loc_FFCB35CE:                           ; CODE XREF: sub_FFCB34C0+92↑j
                movea.l var_8(a6),a0
                move.w  6(a0),d0
                ext.l   d0
                cmp.l   d7,d0
                bne.s   loc_FFCB35EE
                tst.l   8(a3)
                beq.s   loc_FFCB35EE
                move.l  8(a3),-(sp)
                moveq   #0,d0
                move.w  d0,-(sp)
                _InsertMenu
                _DrawMenuBar

loc_FFCB35EE:                           ; CODE XREF: sub_FFCB34C0+A0↑j
                                        ; sub_FFCB34C0+B2↑j ...
                movea.l a4,a0
                move.b  d5,d0
                _HSetState

loc_FFCB35F4:                           ; CODE XREF: sub_FFCB34C0+2C↑j
                moveq   #0,d0

loc_FFCB35F6:                           ; CODE XREF: sub_FFCB34C0+70↑j
                movem.l var_20(a6),d4-d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFCB34C0


; =============== S U B R O U T I N E =======================================


sub_FFCB3600:                           ; CODE XREF: ROM:loc_FFCB03C0↑p
                movea.l ($2078).w,a1
                movea.l $F4(a1),a1
                jmp     (a1)
; End of function sub_FFCB3600

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB3610:                           ; DATA XREF: ROM:FFC07C48↑o

var_10          = -$10
arg_0           =  8

                link    a6,#0
                movem.l d7/a2-a4,-(sp)
                movea.l arg_0(a6),a2
                moveq   #0,d0
                move.l  d0,(a2)
                moveq   #$70,d0 ; 'p'
                _NewHandleClear
                movea.l a0,a3
                move.l  a3,d0
                bne.s   loc_FFCB362E
                moveq   #$FFFFFF94,d0
                bra.s   loc_FFCB36A2
; ---------------------------------------------------------------------------

loc_FFCB362E:                           ; CODE XREF: sub_FFCB3610+18↑j
                movea.l (a3),a0
                move.l  #$74736D72,(a0)
                movea.l (a3),a0
                clr.b   4(a0)
                movea.l (a3),a0
                move.w  #4,6(a0)
                movea.l (a3),a0
                lea     8(a0),a4
                clr.w   (a4)
                clr.w   2(a4)
                movea.l (a3),a0
                lea     $22(a0),a4
                clr.w   (a4)
                clr.w   2(a4)
                movea.l (a3),a0
                lea     $3C(a0),a4
                clr.w   (a4)
                clr.w   2(a4)
                movea.l (a3),a0
                lea     $56(a0),a4
                clr.w   (a4)
                clr.w   2(a4)
                subq.l  #2,sp
                _CurResFile
                move.w  (sp)+,d7
                moveq   #0,d0
                move.w  d0,-(sp)
                _UseResFile
                move.l  a3,-(sp)
                move.l  #$696E706D,-(sp)
                move.w  #$E000,-(sp)
                pea     aTsmResource(pc) ; "TSM Resource"
                _AddResource
                move.l  a3,-(sp)
                moveq   #$60,d0 ; '`'
                move.w  d0,-(sp)
                _SetResAttrs
                move.w  d7,-(sp)
                _UseResFile
                move.l  a3,(a2)
                moveq   #0,d0

loc_FFCB36A2:                           ; CODE XREF: sub_FFCB3610+1C↑j
                movem.l var_10(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB3610

; ---------------------------------------------------------------------------
aTsmResource:   dc.b 12,'TSM Resource'  ; DATA XREF: sub_FFCB3610+7C↑o
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFCB36BA:                           ; CODE XREF: sub_FFCB3390+64↑p
                                        ; sub_FFCB36D0+74↓p
                movea.l ($2078).w,a1
                movea.l $F8(a1),a1
                jmp     (a1)
; End of function sub_FFCB36BA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB36D0:                           ; DATA XREF: ROM:FFC07C4C↑o

var_30          = -$30
var_1C          = -$1C
var_8           = -8
arg_0           =  8
arg_4           =  $C

                link    a6,#-$1C
                movem.l d6-d7/a2-a4,-(sp)
                movea.l arg_0(a6),a4
                movea.l arg_4(a6),a3
                movea.l ($2B6).w,a0
                movea.l $64(a0),a2
                subq.l  #2,sp
                move.l  a4,-(sp)
                pea     var_1C(a6)
                moveq   #0,d0
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                move.l  d0,-(sp)
                moveq   #5,d0
                _ComponentDispatch
                move.w  (sp)+,d7
                beq.s   loc_FFCB3706
                move.w  d7,d0
                bra.w   loc_FFCB37DC
; ---------------------------------------------------------------------------

loc_FFCB3706:                           ; CODE XREF: sub_FFCB36D0+2E↑j
                move.w  (a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                beq.s   loc_FFCB371E
                move.w  #$F629,d0
                bra.w   loc_FFCB37DC
; ---------------------------------------------------------------------------

loc_FFCB371E:                           ; CODE XREF: sub_FFCB36D0+44↑j
                move.w  (a3),d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB3258
                move.l  d0,d6
                subq.l  #4,sp
                move.l  #$696E706D,-(sp)
                move.w  #$E000,-(sp)
                _GetResource
                move.l  (sp)+,var_8(a6)
                addq.w  #4,sp
                bne.s   loc_FFCB3758
                pea     var_8(a6)
                jsr     sub_FFCB36BA
                move.w  d0,d7
                tst.l   var_8(a6)
                addq.w  #4,sp
                bne.s   loc_FFCB3758
                move.w  d7,d0
                bra.w   loc_FFCB37DC
; ---------------------------------------------------------------------------

loc_FFCB3758:                           ; CODE XREF: sub_FFCB36D0+6E↑j
                                        ; sub_FFCB36D0+80↑j
                movea.l var_8(a6),a0
                tst.l   (a0)
                bne.s   loc_FFCB3772
                move.l  a0,-(sp)
                _LoadResource           ; come-from patches = #1
                movea.l var_8(a6),a0
                tst.l   (a0)
                bne.s   loc_FFCB3772
                move.w  #$FF40,d0
                bra.s   loc_FFCB37DC
; ---------------------------------------------------------------------------

loc_FFCB3772:                           ; CODE XREF: sub_FFCB36D0+8E↑j
                                        ; sub_FFCB36D0+9A↑j
                movea.l var_8(a6),a0
                movea.l (a0),a0
                cmpi.l  #$74736D72,(a0)
                beq.s   loc_FFCB3786
                move.w  #$FF40,d0
                bra.s   loc_FFCB37DC
; ---------------------------------------------------------------------------

loc_FFCB3786:                           ; CODE XREF: sub_FFCB36D0+AE↑j
                move.l  a4,$2C(a2,d6.l*8)
                movea.l var_8(a6),a0
                movea.l (a0),a0
                move.l  d6,d0
                moveq   #$1A,d1
                muls.l  d1,d0
                lea     8(a0,d0.l),a4
                move.b  #1,(a4)
                clr.b   1(a4)
                clr.w   2(a4)
                move.w  2(a3),4(a4)
                movea.l a4,a0
                addq.l  #6,a0
                lea     var_1C(a6),a1
                moveq   #4,d0

loc_FFCB37B8:                           ; CODE XREF: sub_FFCB36D0+EA↓j
                move.l  (a1)+,(a0)+
                dbf     d0,loc_FFCB37B8
                movea.l var_8(a6),a0
                _HNoPurge
                move.l  var_8(a6),-(sp)
                _ChangedResource
                move.l  var_8(a6),-(sp)
                _WriteResource
                movea.l var_8(a6),a0
                _HPurge
                subq.l  #2,sp
                _ResError
                move.w  (sp)+,d7

loc_FFCB37DC:                           ; CODE XREF: sub_FFCB36D0+32↑j
                                        ; sub_FFCB36D0+4A↑j ...
                movem.l var_30(a6),d6-d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB36D0


; =============== S U B R O U T I N E =======================================


sub_FFCB37E6:                           ; CODE XREF: sub_FFCB1960+11E↑p
                                        ; sub_FFCB1960+2B2↑p ...
                movea.l ($2078).w,a1
                movea.l $FC(a1),a1
                jmp     (a1)
; End of function sub_FFCB37E6


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB37F0:                           ; DATA XREF: ROM:FFC07C50↑o

var_14          = -$14
arg_2           =  $A

                link    a6,#-4
                movem.l d7/a2-a4,-(sp)
                move.w  arg_2(a6),d7
                movea.l ($2B6).w,a0
                movea.l $64(a0),a3
                movea.l $10(a3),a4
                move.l  a4,d0
                beq.s   loc_FFCB387E
                movea.l (a4),a2
                lea     $A(a2),a0
                lea     $1C(a3),a1
                moveq   #1,d0

loc_FFCB3818:                           ; CODE XREF: sub_FFCB37F0+2A↓j
                cmpm.l  (a1)+,(a0)+
                dbne    d0,loc_FFCB3818
                bne.s   loc_FFCB3864
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB1202
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d7
                move.l  d7,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2A86
                cmpa.l  $14(a3),a4
                lea     $E(sp),sp
                bne.s   loc_FFCB384C
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB0B80
                addq.w  #2,sp
                bra.s   loc_FFCB3858
; ---------------------------------------------------------------------------

loc_FFCB384C:                           ; CODE XREF: sub_FFCB37F0+4E↑j
                move.l  $14(a3),$10(a3)
                movea.l (a4),a2
                clr.b   $12(a2)

loc_FFCB3858:                           ; CODE XREF: sub_FFCB37F0+5A↑j
                moveq   #0,d0
                move.l  d0,-(sp)
                jsr     sub_FFCB38DA
                addq.w  #4,sp
                bra.s   loc_FFCB387E
; ---------------------------------------------------------------------------

loc_FFCB3864:                           ; CODE XREF: sub_FFCB37F0+2E↑j
                subq.l  #2,sp
                move.l  a4,-(sp)
                jsr     sub_FFCB1202
                moveq   #1,d0
                move.l  d0,-(sp)
                ext.l   d7
                move.l  d7,-(sp)
                move.l  a4,-(sp)
                jsr     sub_FFCB2A86
                lea     $E(sp),sp

loc_FFCB387E:                           ; CODE XREF: sub_FFCB37F0+1A↑j
                                        ; sub_FFCB37F0+72↑j
                movem.l var_14(a6),d7/a2-a4
                unlk    a6
                rts
; End of function sub_FFCB37F0


; =============== S U B R O U T I N E =======================================


sub_FFCB3888:                           ; CODE XREF: sub_FFCB1D90+60↑p
                                        ; sub_FFCB3390+110↑p
                movea.l ($2078).w,a1
                movea.l $100(a1),a1
                jmp     (a1)
; End of function sub_FFCB3888

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB38A0:                           ; DATA XREF: ROM:FFC07C54↑o

var_4           = -4
arg_3           =  $B

                link    a6,#0
                move.l  a4,-(sp)
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                tst.l   $1C(a4)
                bne.s   loc_FFCB38BA
                tst.l   $20(a4)
                beq.s   loc_FFCB38D2

loc_FFCB38BA:                           ; CODE XREF: sub_FFCB38A0+12↑j
                moveq   #0,d0
                move.b  arg_3(a6),d0
                move.l  d0,-(sp)
                move.w  $54(a4),d0
                ext.l   d0
                move.l  d0,-(sp)
                movea.l $5A(a4),a0
                jsr     (a0)
                addq.w  #8,sp

loc_FFCB38D2:                           ; CODE XREF: sub_FFCB38A0+18↑j
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFCB38A0


; =============== S U B R O U T I N E =======================================


sub_FFCB38DA:                           ; CODE XREF: sub_FFCB0940+20A↑p
                                        ; sub_FFCB0B90+110↑p ...
                movea.l ($2078).w,a1
                movea.l $104(a1),a1
                jmp     (a1)
; End of function sub_FFCB38DA

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB38F0:                           ; DATA XREF: ROM:FFC07C58↑o

var_10          = -$10
arg_2           =  $A

                link    a6,#0
                movem.l d5-d7/a4,-(sp)
                move.w  arg_2(a6),d7
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                move.l  ($286).w,d5
                tst.b   $1B(a4)
                bne.s   loc_FFCB395A
                move.w  d7,-(sp)
                _DeleteMenu
                cmpi.w  #$BF8C,d7
                bne.s   loc_FFCB3958
                subq.l  #4,sp
                moveq   #$12,d0
                move.w  d0,-(sp)
                move.l  #$84020008,-(sp)
                _ScriptUtil
                move.l  (sp)+,d6
                move.w  d6,d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFCB3944
                moveq   #1,d0
                cmp.l   d6,d0
                bne.s   loc_FFCB395A
                tst.b   $1A(a4)
                beq.s   loc_FFCB395A

loc_FFCB3944:                           ; CODE XREF: sub_FFCB38F0+46↑j
                tst.l   d5
                beq.s   loc_FFCB3958
                move.l  ($A1C).w,d6
                move.l  d5,($A1C).w
                move.w  d7,-(sp)
                _DeleteMenu
                move.l  d6,($A1C).w

loc_FFCB3958:                           ; CODE XREF: sub_FFCB38F0+26↑j
                                        ; sub_FFCB38F0+56↑j
                _InvalMenuBar

loc_FFCB395A:                           ; CODE XREF: sub_FFCB38F0+1C↑j
                                        ; sub_FFCB38F0+4C↑j ...
                movem.l var_10(a6),d5-d7/a4
                unlk    a6
                rts
; End of function sub_FFCB38F0


; =============== S U B R O U T I N E =======================================


sub_FFCB3964:                           ; CODE XREF: sub_FFCB07B0+D2↑p
                                        ; sub_FFCB0940+18A↑p ...
                movea.l ($2078).w,a1
                movea.l $108(a1),a1
                jmp     (a1)
; End of function sub_FFCB3964

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB3970:                           ; DATA XREF: ROM:FFC07C5C↑o

var_10          = -$10
arg_2           =  $A
arg_4           =  $C

                link    a6,#0
                movem.l d5-d7/a4,-(sp)
                move.l  arg_4(a6),d5
                move.w  arg_2(a6),d6
                movea.l ($2B6).w,a0
                movea.l $64(a0),a4
                move.l  ($286).w,d7
                tst.b   $1B(a4)
                bne.s   loc_FFCB39C8
                cmpi.w  #$BF8C,d6
                bne.s   loc_FFCB39C8
                move.w  d5,d0
                ext.l   d0
                move.l  d0,-(sp)
                jsr     sub_FFCB30D4
                tst.b   d0
                addq.w  #4,sp
                bne.s   loc_FFCB39B4
                moveq   #1,d0
                cmp.l   d5,d0
                bne.s   loc_FFCB39C8
                tst.b   $1A(a4)
                beq.s   loc_FFCB39C8

loc_FFCB39B4:                           ; CODE XREF: sub_FFCB3970+36↑j
                tst.l   d7
                beq.s   loc_FFCB39C8
                move.l  ($A1C).w,d5
                move.l  d7,($A1C).w
                move.w  d6,-(sp)
                _DeleteMenu
                move.l  d5,($A1C).w

loc_FFCB39C8:                           ; CODE XREF: sub_FFCB3970+20↑j
                                        ; sub_FFCB3970+26↑j ...
                movem.l var_10(a6),d5-d7/a4
                unlk    a6
                rts
; End of function sub_FFCB3970


; =============== S U B R O U T I N E =======================================


sub_FFCB39D2:                           ; CODE XREF: sub_FFCB2AE0+92↑p
                                        ; sub_FFCB34C0+102↑p
                movea.l ($2078).w,a1
                movea.l $10C(a1),a1
                jmp     (a1)
; End of function sub_FFCB39D2

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFCB39E0:                           ; DATA XREF: ROM:FFC07C60↑o

var_4           = -4
arg_0           =  8

                link    a6,#0
                move.l  a4,-(sp)
                _GetZone
                movea.l a0,a4
                movea.l arg_0(a6),a0
                _SetZone
                move.l  a4,d0
                movea.l var_4(a6),a4
                unlk    a6
                rts
; End of function sub_FFCB39E0

; =============== S U B R O U T I N E =======================================


sub_FFCB39FA:                           ; CODE XREF: sub_FFCB21F0+28↑p
                                        ; sub_FFCB21F0+9E↑p ...
                movea.l ($2078).w,a1
                movea.l $110(a1),a1
                jmp     (a1)
; End of function sub_FFCB39FA