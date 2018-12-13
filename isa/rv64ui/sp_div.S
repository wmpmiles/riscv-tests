#include "riscv_spe_test.h"
#include "test_macros.h"

#define RESET_SP addi sp, zero, 0x0

RVTEST_RV64U
RVTEST_CODE_BEGIN

  RESET_SP

  // value from division unit (not entirely sure if this is separate from mul)
  TEST_CASE( 1, sp, 0x10, addi t0, zero, 0x10; addi t1, zero, 0x1; div sp, t0, t1 )
  TEST_CASE( 2, sp,  0x1, addi t0, zero,  0x1; addi t1, zero, 0x1; div sp, t0, t1 )

  TEST_PASSFAIL

RVTEST_CODE_END

RVTEST_DATA_BEGIN

  TEST_DATA

tdat:
tdat1: .word 0x00000001
tdat2: .word 0x00000010

RVTEST_DATA_END
