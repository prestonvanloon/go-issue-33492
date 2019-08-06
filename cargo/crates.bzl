"""
cargo-raze crate workspace functions

DO NOT EDIT! Replaced on runs of cargo-raze
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def _new_http_archive(name, **kwargs):
    if not native.existing_rule(name):
        http_archive(name=name, **kwargs)

def _new_git_repository(name, **kwargs):
    if not native.existing_rule(name):
        new_git_repository(name=name, **kwargs)

def raze_fetch_remote_crates():

    _new_http_archive(
        name = "raze__alloc_cortex_m__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/alloc-cortex-m/alloc-cortex-m-0.3.5.crate",
        type = "tar.gz",
        sha256 = "6d5f7d01bc93ce089de636f946f7f1fdc5e5d751732367e019c9755440e7aef4",
        strip_prefix = "alloc-cortex-m-0.3.5",
        build_file = Label("//cargo/remote:alloc-cortex-m-0.3.5.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__cortex_m__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cortex-m/cortex-m-0.1.8.crate",
        type = "tar.gz",
        sha256 = "3df5de9a9829f2ccb7defa8945fa020c6614cd2f6ba9b5f33db9241dcc01985e",
        strip_prefix = "cortex-m-0.1.8",
        build_file = Label("//cargo/remote:cortex-m-0.1.8.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__linked_list_allocator__0_6_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/linked_list_allocator/linked_list_allocator-0.6.4.crate",
        type = "tar.gz",
        sha256 = "47314ec1d29aa869ee7cb5a5be57be9b1055c56567d59c3fb6689926743e0bea",
        strip_prefix = "linked_list_allocator-0.6.4",
        build_file = Label("//cargo/remote:linked_list_allocator-0.6.4.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__proc_macro2__0_4_30",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-0.4.30.crate",
        type = "tar.gz",
        sha256 = "cf3d2011ab5c909338f7887f4fc896d35932e29146c12c8d01da6b22a80ba759",
        strip_prefix = "proc-macro2-0.4.30",
        build_file = Label("//cargo/remote:proc-macro2-0.4.30.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__quote__0_6_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-0.6.13.crate",
        type = "tar.gz",
        sha256 = "6ce23b6b870e8f94f81fb0a363d65d86675884b34a09043c81e5562f11c1f8e1",
        strip_prefix = "quote-0.6.13",
        build_file = Label("//cargo/remote:quote-0.6.13.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__syn__0_15_42",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-0.15.42.crate",
        type = "tar.gz",
        sha256 = "eadc09306ca51a40555dd6fc2b415538e9e18bc9f870e47b1a524a79fe2dcf5e",
        strip_prefix = "syn-0.15.42",
        build_file = Label("//cargo/remote:syn-0.15.42.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__synstructure__0_10_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/synstructure/synstructure-0.10.2.crate",
        type = "tar.gz",
        sha256 = "02353edf96d6e4dc81aea2d8490a7e9db177bf8acb0e951c24940bf866cb313f",
        strip_prefix = "synstructure-0.10.2",
        build_file = Label("//cargo/remote:synstructure-0.10.2.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__unicode_xid__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.1.0.crate",
        type = "tar.gz",
        sha256 = "fc72304796d0818e357ead4e000d19c9c174ab23dc11093ac919054d20a6a7fc",
        strip_prefix = "unicode-xid-0.1.0",
        build_file = Label("//cargo/remote:unicode-xid-0.1.0.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__volatile_register__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/volatile-register/volatile-register-0.1.2.crate",
        type = "tar.gz",
        sha256 = "a470889aa8f2d3ad893bd43cd90c824e63e8ac0ee5fe64c5d81a932d184fd549",
        strip_prefix = "volatile-register-0.1.2",
        build_file = Label("//cargo/remote:volatile-register-0.1.2.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__zeroize__0_9_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/zeroize/zeroize-0.9.3.crate",
        type = "tar.gz",
        sha256 = "45af6a010d13e4cf5b54c94ba5a2b2eba5596b9e46bf5875612d332a1f2b3f86",
        strip_prefix = "zeroize-0.9.3",
        build_file = Label("//cargo/remote:zeroize-0.9.3.BUILD.bazel")
    )

    _new_http_archive(
        name = "raze__zeroize_derive__0_9_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/zeroize_derive/zeroize_derive-0.9.3.crate",
        type = "tar.gz",
        sha256 = "080616bd0e31f36095288bb0acdf1f78ef02c2fa15527d7e993f2a6c7591643e",
        strip_prefix = "zeroize_derive-0.9.3",
        build_file = Label("//cargo/remote:zeroize_derive-0.9.3.BUILD.bazel")
    )

