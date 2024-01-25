load("@rules_python//python:repositories.bzl", "py_repositories")
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps", "PROTOBUF_MAVEN_ARTIFACTS")

def prepare_deps():
    py_repositories()
    bazel_skylib_workspace()
    grpc_deps()
    # This is actually already done within grpc_deps but calling this for Bazel convention.
    protobuf_deps()
