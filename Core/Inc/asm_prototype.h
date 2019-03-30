#ifndef __ASM_PROTOTYPE_H__
#define __ASM_PROTOTYPE_H__

#include <stdint.h>

extern uint32_t asm_get_8bit_number(void);
extern uint32_t asm_get_lr(void);
extern uint32_t asm_get_xor(uint32_t in, uint32_t key);
extern void asm_direct_jump_1(void(*fptr)(void));
extern void asm_direct_jump_2(void(*fptr)(void));

extern uint32_t asm_add2(uint32_t in);
extern uint32_t asm_simple_add(uint32_t i1, uint32_t i2);
extern uint32_t asm_pc_add(void);

extern int32_t asm_sub20(int32_t in);
extern int32_t asm_simple_sub(int32_t i1, int32_t i2);
extern int32_t asm_get_neg(int32_t in);

extern uint32_t asm_simple_mul(uint32_t i1, uint32_t i2);
extern uint32_t asm_test_cmp(uint32_t i1, uint32_t i2);
extern uint32_t asm_test_cmn(uint32_t i1, uint32_t i2);
extern uint32_t asm_get_and(uint32_t in, uint32_t key);
extern uint32_t asm_get_or(uint32_t in, uint32_t key);
extern int32_t asm_get_not(int32_t in);
		  
extern uint32_t asm_logic_left(uint32_t in, uint32_t key);
extern uint32_t asm_logic_right(uint32_t in, uint32_t key);
extern int32_t asm_arithm_right(int32_t in, uint32_t key);
extern uint32_t asm_rotate_right(uint32_t in, uint32_t key);

extern uint32_t asm_ldr32(uint32_t* addr);
extern uint32_t asm_str32(uint32_t* addr, uint32_t v);
extern uint32_t asm_test_push_pop(uint32_t i1, uint32_t i2);

extern int32_t asm_s16ext(int16_t in);
extern int32_t asm_s8ext(int8_t in);
extern int32_t asm_u16ext(uint16_t in);
extern uint32_t asm_rev(uint32_t in);
extern uint32_t asm_rev16(uint32_t in);
extern uint32_t asm_revsh(uint32_t in);

extern void asm_svc_1(uint32_t in);
extern void asm_test_msr(uint32_t in);
extern uint32_t asm_test_mrs(void);

#endif //__ASM_PROTOTYPE_H__
