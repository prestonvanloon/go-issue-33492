load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repository_set")

# TODO: Choose correct toolchain based on host / target.
# This probably will only work for linux.
# Use with --extra_toolchains @rust_nightly_linux_x86_64_toolchains//:toolchain_for_x86_64-unknown-linux-gnu

def rust_toolchain_repositories():
    rust_repository_set(
        name = "rust_nightly_linux_x86_64",
        exec_triple = "x86_64-unknown-linux-gnu",
        extra_target_triples = [],
        version = "nightly",
        iso_date = "2019-07-04",
    )
