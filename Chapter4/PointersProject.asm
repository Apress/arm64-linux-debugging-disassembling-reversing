
.data

a: .word 0
b: .word 0

.text

.global _start

main:
_start:
        adr  x0, a
        mov  w3, #1
        str  w3, [x0]

        adr  x1, b   
        str  w3, [x1]

        ldr  w2, [x0]		
        ldr  w3, [x1]
        add  w4, w3, w2
        str  w4, [x1]

        add  w2, w2, #1
        str  w2, [x0]

        mul  w3, w4, w2
        str  w3, [x1]
	
        mov  x0, #0
        mov  w8, #93
        svc  #0
	
