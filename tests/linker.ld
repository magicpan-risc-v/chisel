OUTPUT_ARCH(riscv)
ENTRY(_start)

SECTIONS {
    . = 0x0;

    .text : {
        *(.text._start)
        *(.text .stub .text.* .gnu.linkonce.t.*)
    }

    .rodata : {
        *(.rodata .rodata.* .gnu.linkonce.r.*)
    }

    .data : {
        *(.data)
        *(.data.*)
    }

    .sdata : {
        *(.sdata)
        *(.sdata.*)
    }

    .bss : {
        *(.bss)
    }

    /DISCARD/ : {
        *(.eh_frame .note.GNU-stack .comment)
    }
}
