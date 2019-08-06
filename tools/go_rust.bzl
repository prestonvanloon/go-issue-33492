"""
Rules for adding rust libraries to go code without cgo.
This rule adds a cgo_archive without enabling cgo. This might be a feature request
upstream. rules_go currently forbids cgo_archives without cgo.

See: https://github.com/bazelbuild/rules_go/blob/master/go/toolchains.rst#writing-new-go-rules
"""

load("@io_bazel_rules_go//go:def.bzl", "go_context", "go_rule")
load("@io_bazel_rules_go//go/private:providers.bzl", "GoArchive", "GoLibrary", "GoSource")

def _go_rust_library_to_source(go, attr, source, merge):
    merge(source, attr.src[GoSource])
    source["cgo_archives"] = attr.rust_lib[DefaultInfo].files.to_list()

def _go_rust_library_impl(ctx):
    go = go_context(ctx)

    library = go.new_library(go, resolver = _go_rust_library_to_source, importable = True)
    source = go.library_to_source(go, ctx.attr, library, ctx.coverage_instrumented())
    archive = go.archive(go, source)

    return [
        library,
        source,
        archive,
        DefaultInfo(
            files = depset([archive.data.file]),
        ),
        OutputGroupInfo(
            cgo_exports = archive.cgo_exports,
            compilation_outputs = [archive.data.file],
        ),
    ]

go_rust_library = go_rule(
    _go_rust_library_impl,
    attrs = {
        "src": attr.label(
            providers = [GoLibrary],
            mandatory = True,
        ),
        "importpath": attr.string(
            mandatory = True,
        ),
        "rust_lib": attr.label(
            # TODO: add provider to restrict to rust_library.
            mandatory = True,
        ),
    },
)
