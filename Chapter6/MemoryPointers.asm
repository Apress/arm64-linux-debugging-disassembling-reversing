.data

a:  .int 0
b:  .int 0
pa: .quad 0
pb: .quad b

.text

.global _start

main:
_start:
	adr  x0, a
	adr  x1, pa
	str  x0, [x1]

	adr  x0, pa
	ldr  x0, [x0]
	mov  w2, #1
	str  w2, [x0] 

	adr  x1, pb
	ldr  x1, [x1]
	str  w2, [x1]
 
	ldr  w2, [x0]
	ldr  w3, [x1]        
	add  w3, w3, w2
	str  w3, [x1]

	mov  x0, #0              
	mov  w8, #93             
	svc  #0	

