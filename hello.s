.text
.p2align 2 // 4 byte align (2 pow 2 )
.globl _start

_start:
    // write(1, msg, len)
    mov     x0, #1 // stdout
    adrp    x1, msg@PAGE // page base
    add     x1, x1, msg@PAGEOFF // offset
    mov     x2, #38 // 38 - length of string
    mov     x16, #4 // sys write
    svc     #0x80 // kernel call

    // exit(0)
    mov     x0, #0 // return call 0 - success (no errors)
    mov     x16, #1 // sys exit
    svc     #0x80 // kernel call

.data
msg:
    .ascii "My first try of ARM64 assembly coding\n"
