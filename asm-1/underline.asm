        device zxspectrum128

        org #6000

start   ld a,85
        ld hl,16416
        ld b,11
_loop   ld(hl),a
        inc hl
        djnz _loop
        ret

        output "underline.bin"
        savetap "underline.tap",start