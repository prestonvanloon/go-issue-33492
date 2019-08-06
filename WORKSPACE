load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Forked rules_go until pack.go issue resolved. https://github.com/bazelbuild/rules_go/issues/2171
# pack: cannot shorten file name: "lib-347320021.amcl.264w1vg7-cgu.7.rcgu.o"
http_archive(
    name = "io_bazel_rules_go",
    strip_prefix = "rules_go-73fc63ffd4eeb77c5c2a798166abe0c3b444507c",
    urls = [
        "https://github.com/prestonvanloon/rules_go/archive/73fc63ffd4eeb77c5c2a798166abe0c3b444507c.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies", "go_register_toolchains")

go_rules_dependencies()

go_register_toolchains()

http_archive(
    name = "io_bazel_rules_rust",
    sha256 = "e630980fc9f18febda89ce544fe7c3fe3bf31985bae283fbb55b1eff64bd9cdc",
    strip_prefix = "rules_rust-949b5d69a392fd14b60f7ee3aacc6d69706e6018",
    urls = [
        # Master branch as of 2019-07-23
        "https://github.com/bazelbuild/rules_rust/archive/949b5d69a392fd14b60f7ee3aacc6d69706e6018.tar.gz",
    ],
)

load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories()

load("@io_bazel_rules_rust//:workspace.bzl", "bazel_version")

bazel_version(name = "bazel_version")

load("//cargo:crates.bzl", "raze_fetch_remote_crates")

raze_fetch_remote_crates()

load("//tools:rust_nightly_toolchains.bzl", "rust_toolchain_repositories")

rust_toolchain_repositories()