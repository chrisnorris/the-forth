# the-forth
Platform agnostic Forth

### the journey begins with [Virgil Dupras's Tumble Forth](http://tumbleforth.hardcoded.net)
we proceed with the notion of removing platform specific implementation detail by remaining within Forth so far as possible.

Virgil uses [QEMU](https://www.qemu.org/) (specifically qemu-system-i386) for convenience despite the fact the assembled binaries should in principal run on a PC2 with the legacy BIOS3 option ticked. By targetting the BIOS we steer clear of platform detail at the outset. 

### for minimal implementations see e.g. [Cesar Blum's Sector Forth](https://github.com/cesarblum/sectorforth)
the inspiration for which came from a 1996 [Usenet thread](https://groups.google.com/g/comp.lang.forth/c/NS2icrCj1jQ)!
