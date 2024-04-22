    PRESERVE8
        THUMB
            AREA |.text|, CODE, READONLY
            EXPORT __main
__main
    MOVS R0 ,#4
    MOVS R1 ,#3
    ADDS R0, R0, R1
STOP B STOP
    END
