
; =============== S U B R O U T I N E =======================================


sub_FFCCA1B0:                           ; CODE XREF: sub_FFC5C5E0↑j

arg_4           =  8

; FUNCTION CHUNK AT FFC0011C SIZE 0000000E BYTES
; FUNCTION CHUNK AT FFC1130E SIZE 00000012 BYTES
; FUNCTION CHUNK AT FFC116A0 SIZE 00000044 BYTES
; FUNCTION CHUNK AT FFC11820 SIZE 00000260 BYTES
; FUNCTION CHUNK AT FFC11AAC SIZE 000000AC BYTES
; FUNCTION CHUNK AT FFCCA890 SIZE 0000000E BYTES
; FUNCTION CHUNK AT FFCCB26A SIZE 00000010 BYTES
; FUNCTION CHUNK AT FFCCB440 SIZE 0000000A BYTES
; FUNCTION CHUNK AT FFCCBA20 SIZE 0000004C BYTES
; FUNCTION CHUNK AT FFCCBA70 SIZE 00000002 BYTES
; FUNCTION CHUNK AT FFCCBD18 SIZE 00000036 BYTES
; FUNCTION CHUNK AT FFCCE040 SIZE 0000000E BYTES
; FUNCTION CHUNK AT FFCD172C SIZE 00000002 BYTES

                move.l  (sp),-(sp)
                clr.l   4(sp)
                pea     4(sp)
                move.l  8+arg_4(sp),-(sp)
                move.w  #$300E,-(sp)
                _Pack4                  ; SANE FP
                move.l  (sp)+,(sp)
                rts
; ---------------------------------------------------------------------------
