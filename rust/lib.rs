#![no_std]
#![feature(lang_items)]

extern crate alloc_cortex_m;

use alloc_cortex_m::CortexMHeap;
use amcl::rand::RAND;

#[global_allocator]
static ALLOCATOR: CortexMHeap = CortexMHeap::empty();

#[panic_handler]
fn my_panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

// An example of calling *something* from the 3rd party library.
#[no_mangle]
pub extern fn ffi_rand(a: u64) -> u64 {
    let mut r = RAND::new();
    r.seed(16, &[a as u8]);

    return a + 1 + r.getbyte() as u64;
}

// required: define how Out Of Memory (OOM) conditions should be handled
// *if* no other crate has already defined `oom`
#[lang = "oom"]
#[no_mangle]
pub fn rust_oom(_: core::alloc::Layout) -> ! {
    extern "C" { fn abort() -> !; }
    unsafe { abort() }
}
