;Description: Instruction Test 1
;Move
;Operation				Description Assembler	Cycles
;8-bit immediate 		MOVS Rd, #<imm>			1
;Lo to Lo 				MOVS Rd, Rm 			1
;Any to Any 			MOV Rd, Rm 				1
;Any to PC 				MOV PC, Rm 				3

	AREA    |.text|, CODE, READONLY

;Get an 8bit immediate number
	ALIGN        ; Ensures alignment.
asm_get_8bit_number   FUNCTION     ; Without the ALIGN directive this might not be word-aligned.
	EXPORT asm_get_8bit_number
		
	MOVS r0, #234
	bx lr
	
	ENDP
		
;Get Link Register
	ALIGN        ; Ensures alignment.
asm_get_lr   FUNCTION     ; Without the ALIGN directive this might not be word-aligned.
	EXPORT asm_get_lr
		
	MOV r0, lr
	bx lr
	
	ENDP
		
;Get the XOR result
	ALIGN
asm_get_xor   FUNCTION    
	EXPORT asm_get_xor

	eors r1, r0, r1
	movs r0, r1
	
	bx lr
	
	ENDP
		
;Direct Jump Test 1
	ALIGN
asm_direct_jump_1   FUNCTION    
	EXPORT asm_direct_jump_1

;The following line will get warning:
;MOV pc,<rn> instruction used, but BX <rn> is preferred
	mov PC,r0
	
	ENDP	
	
;Direct Jump Test 2
	ALIGN
asm_direct_jump_2   FUNCTION    
	EXPORT asm_direct_jump_2

	bx r0
	
	ENDP	
		
	END

