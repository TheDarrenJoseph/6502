    processor 6502
    org $1000
;https://stackoverflow.com/questions/43498617/ascii-to-c64-screen-codes-in-dasm-assembler
;Original by nexus_2006
    ldx #$00    ;using x register as column counter
printloop:
    lda hexmsg,x;load a with x bit from message
    sta $0400,x ;store this bit in row 0 col 0 address
    inx         ;x++
    cpx #$0B    ;is x >= 6?
    bne printloop   ;if not x >= 5, loop again
    rts         ;return from program

hexmsg .byte $08,$05,$0c,$0c,$0f,$20,$17,$0F,$12,$0C,$04
