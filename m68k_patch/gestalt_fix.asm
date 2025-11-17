	; Hooks gestaltinit to fix the missing 'evnt' type:
gestalt_fix:
	bsr.l gestalt_fix ; to be patched later
	; could return error but the init code doesn't check this either
	link a6,#0
	move.l d7,-(sp)
	subq.l #2,sp
	move.l #'evnt',-(sp)
	move.l #1,-(sp)
	move.w #$401,d0
	_GestaltValueDispatch
	move.w (sp)+,d7
	move.l -4(a6),d7
	unlk a6
	rts
