OUTPUT_ARCH(arm)
MEMORY {
        cbmove  : ORIGIN = MoveStartAddress, LENGTH = 0x2598
        cbitem  : ORIGIN = ItemStartAddress, LENGTH = 0xCC4
        cbsp    : ORIGIN = ProcStartAddress, LENGTH = 0x810
}

SECTIONS {
        /*
                Extensions example (To put in your main linker.ld file):
        */
        /*
        .text.file.out.bin : {
                *(.myout.init)
                *(.myout)
        } >NEW = 0xff
        */
        /*
        OVERLAY : {
                .text.codebin.move.23 {
                        *(.codebin.mymove.init)
                        *(.codebin.mymove)
                }
        } >cbmove = 0xff
        OVERLAY : {
                .text.codebin.item.45 {
                        *(.codebin.myitem.init)
                        *(.codebin.myitem)
                }
        } >cbitem = 0xff
        OVERLAY : {
                .text.codebin.sp.67 {
                        *(.codebin.mysp.init)
                        *(.codebin.mysp)
                }
        } >cbsp = 0xff
        */
}
