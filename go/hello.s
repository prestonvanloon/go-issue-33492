// Copied from https://blog.filippo.io/rustgo/

TEXT ·trampoline(SB), 0, $2048-16
    MOVQ arg+0(FP), DI // Load the argument before messing with SP
    MOVQ SP, BX        // Save SP in a callee-saved registry
    ADDQ $2048, SP     // Rollback SP to reuse this function's frame
    ANDQ $~15, SP      // Align the stack to 16-bytes
    CALL ffi_rand(SB)
    MOVQ BX, SP        // Restore SP
    MOVQ AX, ret+8(FP) // Place the return value on the stack
    RET
