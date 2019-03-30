;Description: Instruction Test 8
;State change, Others
;Operation							Description Assembler	Cycles
;Supervisor Call 					SVC #<imm> 				- e
;Disable interrupts 				CPSID i 				1
;Enable interrupts 					CPSIE i 				1
;Read special register 				MRS Rd, <specreg> 		4
;Write special register 			MSR <specreg>, Rn 		4

	AREA    |.text|, CODE, READONLY
		
;SVC_Handler     PROC
;                EXPORT  SVC_Handler
; Stack frame contains:
; r0, r1, r2, r3, r12, r14, the return address and xPSR
; - Stacked R0 = svc_args[0]
; - Stacked R1 = svc_args[1]
; - Stacked R2 = svc_args[2]
; - Stacked R3 = svc_args[3]
; - Stacked R12 = svc_args[4]
; - Stacked LR = svc_args[5]
; - Stacked PC = svc_args[6]
; - Stacked xPSR= svc_args[7]
;	LDR r0, [SP, #4*6]
;	SUBS r0, r0, #2
;	LDRB r0, [r0]
	
;	bx lr
 ;   ENDP
					
;Supervisor Call 1
	ALIGN
asm_svc_1 FUNCTION    
	EXPORT asm_svc_1
	
	SVC #1
	
	bx lr
	
	ENDP

;Supervisor Call 2
	ALIGN
asm_svc_2 FUNCTION    
	EXPORT asm_svc_2
	
	SVC #2
	
	bx lr
	
	ENDP
		
;Test special register write
;special register is one of the special-purpose registers: APSR, IPSR, EPSR, IEPSR, IAPSR,
;EAPSR, PSR, MSP, PSP, PRIMASK, or CONTROL.
	ALIGN
asm_test_msr FUNCTION    
	EXPORT asm_test_msr
	;Write 0x00000001 to disable all exceptions with configurable priority
	;Write 0x00000000 to enable all exceptions with configurable priority
	MSR PRIMASK,r0
	
	bx lr
	
	ENDP	
		
;Test special register read
;special register is one of the special-purpose registers: APSR, IPSR, EPSR, IEPSR, IAPSR,
;EAPSR, PSR, MSP, PSP, PRIMASK, or CONTROL.
	ALIGN
asm_test_mrs FUNCTION    
	EXPORT asm_test_mrs
	
	MRS r0, PRIMASK
	
	bx lr
	
	ENDP	
		
	END
