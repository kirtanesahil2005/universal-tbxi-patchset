	include "org.asm"
	
	include "traps.asm"

	include "set_ppc_table.asm"
	
	include "ppc_modules.asm"
	
	include "open_something.asm" ; ffcc9530
	include "case_sensitive_equal_string.asm" ; ffcc95a0
	include "get_string_resource.asm" ; ffcc9880
	include "copy_something.asm" ; ffcc9af0
	include "MPPCtlCall.asm" ; ffcc99ae
	include "open_from_c_maybe.asm" ; ffcc9cb0
	include "ppc0d.asm" ; ffcc9de0
	include "c2pstr.asm" ; ffcc9ec0
	include "memcmp.asm" ; ffcc9f20
	include "memset.asm" ; ffcc9fc0

	include "ppc_table.asm"

unk_FFCC9C0E:           dc.b 4,'.MPP', 0           ; DATA XREF: sub_FFCC9D00+2C↓o
	dc.b 0,0

	include "ppc_table_version.asm"

	; Placeholder trap entry point.
	dc.l sub_FFC2FF80-$FFC00000
