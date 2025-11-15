# Universal TBXI Patchset

This repository includes patches, that can be applied to classic Mac OS New World Toolbox images of version 1.2 and higher, that patches back in code that was removed and required for booting earlier versions of classic Mac OS.

With an appropriate System Enabler where required (CHRP System Enabler for 7.x, iMac G3 enabler for early 8.x, Sawtooth 8.6 TBXI for 8.6...), such a patched TBXI can attempt to boot System 7.5 and above, with varying degrees of success (some extensions/control panels/etc can cause crashes).

## Patches

The following patches are included:

### m68k_patch

This is a patch set for the main m68k part of the Toolbox image, which brings back in implementations of various interfaces that got removed from the tree at various points:

- TBXI v1.2 removed the Program-to-Program Communication Toolbox implementation - Mac OS 8.x boot does not use this but 7.x requires it to be present
- Between there and TBXI v2.5.1, the legacy Sound Toolbox, Communications Toolbox and Event Manager implementations were removed.
- Between TBXI v6.1 and v8.8, the Picture Utilities, Text Services Manager, and Icon Utilities implementations were removed - additionally, a function in one of the tables was changed from a no-op to a bad trap, and the code to initialise another function table pointer in a structure pointed to by low memory was removed (this last one was done between v3.0 and v3.7).
  - After v8.8, there were no significant changes here - and later TBXIs can use the m68k main part from v8.8 with no issues.

There are three different patchsets, the script to apply the patches will detect which set to apply based on what traps are present.

The assembler used here is [vasm](http://sun.hasenbraten.de/vasm/) (for m68k, mot syntax), built from source with patches applied to `symbol.c` to remove marking repeat definitions as an error (in `check_symbol` comment out the line with `general_error(67,name);` and in `new_abs` do the same with that and the `if` line above).

The patch script is written in PHP, just run `php patch.php "path/to/Mac OS ROM.hqx.src"` with your build of vasmm68k_mot in the same directory.

### ProcessMgrSupport

At some point between TBXI v3.1 and v6.1, the initialisation interface for `ProcessMgrSupport.pef` changed - it originally had its entry point pointing to a mixed-mode RoutineDescriptor which was called from m68k code, and was changed to an exported PowerPC function `InitProcessMgrSupport`.

ProcessMgrSupport is not large (old variant is ~5KB, new variant is ~3KB), so I decompiled the parts in C and disassembled the parts in PowerPC asm, and included both initialisation formats, so it can work to boot older and later System files.

If your TBXI's `Parcels.src/MacROM.src/Mac68KROM.src/Rsrc/ncod_8_ProcessMgrSupport.pef` is around 3KB in size, build the provided implementation with Retro68, and replace it with the built PEF, otherwise booting earlier System files will crash due to calling a null pointer.

### InterfaceLib patches (done manually)

At Mac OS 9.0, the format of the File Control Block changed, and the PowerPC functions in InterfaceLib to get/set entries related to it in low memory were changed (at some point between TBXI v3.0 and v3.7) to cause a system error (this was described in Technical Note TN1184).

To work around this issue with later TBXIs and earlier System files, the following patches need to be made to InterfaceLib:

````
.LMGetFCBSPtr:
lwz r3, 0x34E
blr

.LMSetFCBSPtr:
stw r3, 0x34E
blr

.LMSetFSFCBLen:
sth r3, 0x3F6
blr
````

This could be automated, though code has not yet been written to do this. If you want to use a TBXI from 9.x era, it would be best to use TBXI v10.2.1 as a base; here are the patches for 10.2.1 (in `fc /b` format of `offset: original patched`):
````
000169A4: 7C 80
000169A5: 08 60
000169A6: 02 03
000169A7: A6 4E
000169A8: 90 4E
000169A9: 01 80
000169AB: 08 20
000169D4: 7C 90
000169D5: 08 60
000169D6: 02 03
000169D7: A6 4E
000169D8: 90 4E
000169D9: 01 80
000169DB: 08 20
00016A64: 7C B0
00016A65: 08 60
00016A66: 02 03
00016A67: A6 F6
00016A68: 90 4E
00016A69: 01 80
00016A6B: 08 20
````

Mac OS 9 stores fake objects in the old FCB table to keep backwards compatibility with old m68k code - so here be dragons, etc. It's enough to let older code *run* at least.

## Known issues

With a patched v10.2.1 TBXI, the `Date & Time` Control Panel in System 7.x will crash (on real hardware, QEMU seems to be fine) if it's present. The reason why is currently unknown (probably a function pointer call through a wild/uninitialised pointer access).

Don't expect a stable system by any means. ;)

