; ---------------------------------------------------------------------------

loc_FFC5B760:                           ; DATA XREF: ROM:FFC06894↑o
                subq.w  #2,sp
                jsr     sub_FFC5BA36
                move.w  (sp)+,d0
                beq.s   loc_FFC5B772
                pea     aUnableToInitHe(pc) ; "Unable to init Help Manager"
                _DebugStr
                bra.s   locret_FFC5B786
; ---------------------------------------------------------------------------

loc_FFC5B772:                           ; CODE XREF: ROM:FFC5B768↑j
                move.l  #'help',d0
                lea     sub_FFC5B998(pc),a0
                _NewGestalt
                beq.s   locret_FFC5B786
                pea     aUnableToInitHe(pc) ; "Unable to init Help Manager"
                _DebugStr

locret_FFC5B786:                        ; CODE XREF: ROM:FFC5B770↑j
                                        ; ROM:FFC5B77E↑j
                rts
; ---------------------------------------------------------------------------
aUnableToInitHe:dc.b 27,'Unable to init Help Manager' ; DATA XREF: ROM:FFC5B76A↑o
                                        ; ROM:FFC5B780↑o
; ---------------------------------------------------------------------------
                move.l  ([$2034],4),-(sp)
                rts
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC5B7B0:                           ; DATA XREF: ROM:ToolboxTraps↓o
                cmpi.w  #3,d0
                beq.s   loc_FFC5B7CE
                cmpi.w  #$FFFD,d0
                beq.s   loc_FFC5B818
                movea.l ($BE0).w,a0
                movea.l ($2B6).w,a1
                lea     $130(a1),a1
                move.l  ($668).w,-(sp)
                rts
; ---------------------------------------------------------------------------

loc_FFC5B7CE:                           ; CODE XREF: ROM:FFC5B7B4↑j
                subq.w  #2,sp
                jsr     sub_FFC5B976
                move.b  (sp)+,4(sp)
                beq.s   locret_FFC5B816
                subq.w  #6,sp
                move.l  ($830).w,-(sp)
                pea     6(sp)
                moveq   #$17,d0
                _TextServicesDispatch
                move.w  (sp)+,d0
                addq.w  #4,sp
                beq.s   locret_FFC5B816
                cmpi.w  #2,d0
                ble.s   locret_FFC5B816
                movea.l ($2B6).w,a1
                move.l  $64(a1),d0
                beq.s   loc_FFC5B808
                movea.l d0,a0
                btst    #8,$5E(a0)
                bne.s   locret_FFC5B816

loc_FFC5B808:                           ; CODE XREF: ROM:FFC5B7FC↑j
                movea.l $78(a1),a0
                tst.b   $11C(a0)
                bne.s   locret_FFC5B816
                clr.b   4(sp)

locret_FFC5B816:                        ; CODE XREF: ROM:FFC5B7D8↑j
                                        ; ROM:FFC5B7EC↑j ...
                rts
; ---------------------------------------------------------------------------

loc_FFC5B818:                           ; CODE XREF: ROM:FFC5B7BA↑j
                movem.l a3-a4,-(sp)
                subq.w  #4,sp
                move.l  #$5041434B,-(sp)
                move.w  #$E,-(sp)
                move.w  #$FFFF,($B9E).w
                _GetResource
                move.l  (sp)+,d0
                beq.s   loc_FFC5B86E
                move.l  d0,-(sp)
                _ReleaseResource
                subq.w  #4,sp
                move.w  #$BF96,-(sp)
                _GetMenu
                move.l  (sp)+,d0
                beq.s   loc_FFC5B86E
                movea.l d0,a3
                subq.w  #6,sp
                pea     2(sp)
                move.w  #$BF96,-(sp)
                move.l  #$FF00,-(sp)
                move.w  #$501,d0
                _IconDispatch
                move.w  (sp)+,d0
                movea.l (sp)+,a4
                bne.s   loc_FFC5B86E
                move.l  a4,d0
                beq.s   loc_FFC5B86E
                bsr.s   loc_FFC5B874
                move.l  a3,-(sp)
                clr.w   -(sp)
                _InsertMenu

loc_FFC5B86E:                           ; CODE XREF: ROM:FFC5B832↑j
                                        ; ROM:FFC5B842↑j ...
                movem.l (sp)+,a3-a4
                rts
; ---------------------------------------------------------------------------

loc_FFC5B874:                           ; CODE XREF: ROM:FFC5B866↑p
                movea.l (a3),a0
                lea     $E(a0),a0
                cmpi.b  #5,(a0)
                beq.s   loc_FFC5B882
                bra.s   loc_FFC5B88A
; ---------------------------------------------------------------------------

loc_FFC5B882:                           ; CODE XREF: ROM:FFC5B87E↑j
                move.w  #$501,(a0)+
                move.l  a4,(a0)
                rts
; ---------------------------------------------------------------------------

loc_FFC5B88A:                           ; CODE XREF: ROM:FFC5B880↑j
                moveq   #$7F,d0
                _SysError
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
; ---------------------------------------------------------------------------

loc_FFC5B890:                           ; DATA XREF: ROM:FFC06898↑o
                move.l  d7,-(sp)
                subq.w  #4,sp
                move.w  #$BF96,-(sp)
                _GetMenuHandle
                move.l  (sp)+,d0
                beq.s   loc_FFC5B8D2
                move.l  d0,-(sp)
                move.w  #3,-(sp)
                move.w  #$E9C0,d0
                jsr     sub_FFC5B92E
                beq.s   loc_FFC5B8B0
                addq.w  #1,d0

loc_FFC5B8B0:                           ; CODE XREF: ROM:FFC5B8AC↑j
                subq.w  #4,sp
                move.w  d0,-(sp)
                _GetString
                move.l  (sp)+,d7
                beq.s   loc_FFC5B8C2
                movea.l d7,a0
                _HLock
                movea.l (a0),a0
                bra.s   loc_FFC5B8C6
; ---------------------------------------------------------------------------

loc_FFC5B8C2:                           ; CODE XREF: ROM:FFC5B8B8↑j
                lea     aShowHideBalloo(pc),a0 ; "Show/Hide Balloons"

loc_FFC5B8C6:                           ; CODE XREF: ROM:FFC5B8C0↑j
                move.l  a0,-(sp)
                _SetMenuItemText
                move.l  d7,d0
                beq.s   loc_FFC5B8D2
                movea.l d7,a0
                _HUnlock

loc_FFC5B8D2:                           ; CODE XREF: ROM:FFC5B89C↑j
                                        ; ROM:FFC5B8CC↑j
                move.l  (sp)+,d7
                rts
; ---------------------------------------------------------------------------
aShowHideBalloo:dc.b 18,'Show/Hide Balloons' ; DATA XREF: ROM:loc_FFC5B8C2↑o
                dc.b   0

; =============== S U B R O U T I N E =======================================


sub_FFC5B8EA:                           ; CODE XREF: sub_FFC5BA40+24↓p
                                        ; sub_FFC77960↓j
                move.l  ([$2034],8),-(sp)
                rts
; End of function sub_FFC5B8EA

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

loc_FFC5B900:                           ; DATA XREF: ROM:FFC0689C↑o
                movea.l ($2B6).w,a0
                move.l  $78(a0),4(sp)
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC5B90C:                           ; CODE XREF: sub_FFC5B960+6↓p
                                        ; sub_FFC5B9B0+C↓p ...
                move.l  ([$2034],$C),-(sp)
                rts
; End of function sub_FFC5B90C

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

loc_FFC5B920:                           ; DATA XREF: ROM:FFC068A0↑o
                movea.l ($2B6).w,a0
                movea.l $78(a0),a0
                tst.b   $11E(a0)
                rts

; =============== S U B R O U T I N E =======================================


sub_FFC5B92E:                           ; CODE XREF: ROM:FFC5B8A8↑p
                move.l  ([$2034],$10),-(sp)
                rts
; End of function sub_FFC5B92E

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

loc_FFC5B940:                           ; DATA XREF: ROM:FFC068A4↑o
                move.l  (sp)+,d0
                movea.l ($2B6).w,a0
                move.l  (sp)+,$78(a0)
                movea.l d0,a0
                jmp     (a0)

; =============== S U B R O U T I N E =======================================


sub_FFC5B94E:                           ; CODE XREF: sub_FFC5B9B0+74↓p
                move.l  ([$2034],$14),-(sp)
                rts
; End of function sub_FFC5B94E

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

sub_FFC5B960:                           ; DATA XREF: ROM:FFC068A8↑o

arg_0           =  8

                link    a6,#0
                subq.l  #4,sp
                jsr     sub_FFC5B90C
                movea.l (sp)+,a0
                move.b  $11E(a0),arg_0(a6)
                unlk    a6
                rts
; End of function sub_FFC5B960


; =============== S U B R O U T I N E =======================================


sub_FFC5B976:                           ; CODE XREF: ROM:FFC5B7D0↑p
                movea.l ($2034).w,a1
                movea.l $18(a1),a1
                jmp     (a1)
; End of function sub_FFC5B976


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5B980:                           ; DATA XREF: ROM:FFC068AC↑o

arg_0           =  8
arg_8           =  $10

                link    a6,#0
                clr.w   d1
                movea.l arg_0(a6),a0
                moveq   #1,d0
                move.l  d0,(a0)
                move.w  d1,arg_8(a6)
                unlk    a6
                rtd     #8
; End of function sub_FFC5B980


; =============== S U B R O U T I N E =======================================


sub_FFC5B998:                           ; DATA XREF: ROM:FFC5B778↑o
                movea.l ($2034).w,a1
                movea.l $1C(a1),a1
                jmp     (a1)
; End of function sub_FFC5B998

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

sub_FFC5B9B0:                           ; DATA XREF: ROM:FFC068B0↑o

var_C           = -$C
arg_0           =  8

                link    a6,#0
                movem.l d7/a3-a4,-(sp)
                clr.w   d7
                subq.l  #4,sp
                jsr     sub_FFC5B90C
                tst.l   (sp)+
                beq.s   loc_FFC5B9CA
                move.w  d7,arg_0(a6)
                bra.s   loc_FFC5BA2C
; ---------------------------------------------------------------------------

loc_FFC5B9CA:                           ; CODE XREF: sub_FFC5B9B0+12↑j
                move.l  #$122,d0
                _NewPtrSysClear
                movea.l a0,a3
                move.l  a3,d0
                beq.s   loc_FFC5BA1A
                movea.l a3,a4
                cmpi.w  #$3FFF,($28E).w
                bgt.s   loc_FFC5B9EA
                move.b  #1,$121(a4)
                bra.s   loc_FFC5B9EE
; ---------------------------------------------------------------------------

loc_FFC5B9EA:                           ; CODE XREF: sub_FFC5B9B0+30↑j
                clr.b   $121(a4)

loc_FFC5B9EE:                           ; CODE XREF: sub_FFC5B9B0+38↑j
                move.w  #$FFFF,8(a4)
                move.w  #$FFFF,$B2(a4)
                moveq   #2,d0
                _NewHandleSysClear
                move.l  a0,$110(a4)
                moveq   #2,d0
                _NewHandleSysClear
                move.l  a0,$10C(a4)
                move.w  #5,$DA(a4)
                subq.l  #4,sp
                _TickCount
                move.l  (sp)+,$B8(a4)
                bra.s   loc_FFC5BA22
; ---------------------------------------------------------------------------

loc_FFC5BA1A:                           ; CODE XREF: sub_FFC5B9B0+26↑j
                subq.l  #2,sp
                move.w  ($220).w,(sp)
                move.w  (sp)+,d7

loc_FFC5BA22:                           ; CODE XREF: sub_FFC5B9B0+68↑j
                move.l  a3,-(sp)
                jsr     sub_FFC5B94E
                move.w  d7,arg_0(a6)

loc_FFC5BA2C:                           ; CODE XREF: sub_FFC5B9B0+18↑j
                movem.l var_C(a6),d7/a3-a4
                unlk    a6
                rts
; End of function sub_FFC5B9B0


; =============== S U B R O U T I N E =======================================


sub_FFC5BA36:                           ; CODE XREF: ROM:FFC5B762↑p
                movea.l ($2034).w,a1
                movea.l $20(a1),a1
                jmp     (a1)
; End of function sub_FFC5BA36


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5BA40:                           ; DATA XREF: ROM:FFC068B4↑o

var_4           = -4

                link    a6,#0
                move.l  d3,-(sp)
                subq.l  #2,sp
                subq.l  #4,sp
                jsr     sub_FFC5B90C
                movea.l (sp)+,a0
                tst.b   $11E(a0)
                seq     d3
                neg.b   d3
                move.b  d3,-(sp)
                move.w  #$104,d0
                _Pack14                 ; Balloon Help
                tst.w   (sp)+
                bne.s   loc_FFC5BA68
                jsr     sub_FFC5B8EA

loc_FFC5BA68:                           ; CODE XREF: sub_FFC5BA40+22↑j
                move.l  var_4(a6),d3
                unlk    a6
                rts
; End of function sub_FFC5BA40


; =============== S U B R O U T I N E =======================================


sub_FFC5BA70:                           ; CODE XREF: sub_FFC77980↓j
                movea.l ($2034).w,a1
                movea.l $24(a1),a1
                jmp     (a1)
; End of function sub_FFC5BA70

; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5BA80:                           ; DATA XREF: ROM:FFC068B8↑o

var_8           = -8

                link    a6,#-8
                subq.l  #2,sp
                pea     var_8(a6)
                moveq   #$FFFFFFFF,d0
                move.l  d0,-(sp)
                move.w  #$39,-(sp) ; '9'
                _OSDispatch
                tst.w   (sp)+
                bne.s   loc_FFC5BAB2
                subq.l  #2,sp
                pea     var_8(a6)
                move.w  #$3C,-(sp) ; '<'
                _OSDispatch
                tst.w   (sp)+
                bne.s   loc_FFC5BAB2
                subq.l  #2,sp
                move.w  #$FC,d0
                _Pack14                 ; Balloon Help
                tst.w   (sp)+

loc_FFC5BAB2:                           ; CODE XREF: sub_FFC5BA80+16↑j
                                        ; sub_FFC5BA80+26↑j
                subq.l  #4,sp
                jsr     sub_FFC5B90C
                movea.l (sp)+,a0
                clr.w   $E2(a0)
                unlk    a6
                rts
; End of function sub_FFC5BA80

; ---------------------------------------------------------------------------
                movea.l ($2034).w,a1
                movea.l $28(a1),a1
                jmp     (a1)
; ---------------------------------------------------------------------------
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_FFC5BAD0:                           ; DATA XREF: ROM:FFC068BC↑o

var_E           = -$E
var_6           = -6
var_2           = -2

                link    a6,#-6
                movem.l a3-a4,-(sp)
                pea     var_6(a6)
                _GetPort
                subq.l  #4,sp
                move.w  #$E9C0,-(sp)
                moveq   #0,d0
                move.l  d0,-(sp)
                moveq   #$FFFFFFFF,d1
                move.l  d1,-(sp)
                _GetNewDialog
                movea.l (sp)+,a4
                move.l  a4,d0
                beq.s   loc_FFC5BB30
                subq.l  #4,sp
                jsr     sub_FFC5B90C
                movea.l (sp)+,a3
                subq.l  #2,sp
                move.l  a4,-(sp)
                moveq   #1,d0
                move.w  d0,-(sp)
                move.w  #$304,d0
                _DialogDispatch
                tst.w   (sp)+
                move.l  a4,-(sp)
                _SetPort
                move.b  #1,$120(a3)

loc_FFC5BB16:                           ; CODE XREF: sub_FFC5BAD0+56↓j
                moveq   #0,d0
                move.l  d0,-(sp)
                pea     var_2(a6)
                _ModalDialog
                moveq   #1,d0
                cmp.w   var_2(a6),d0
                bne.s   loc_FFC5BB16
                move.l  a4,-(sp)
                _DisposeDialog
                clr.b   $120(a3)

loc_FFC5BB30:                           ; CODE XREF: sub_FFC5BAD0+22↑j
                move.l  var_6(a6),-(sp)
                _SetPort
                movem.l var_E(a6),a3-a4
                unlk    a6
                rts
; End of function sub_FFC5BAD0

