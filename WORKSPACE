workspace(name="iml_tools")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

#load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_python",
    sha256 = "d70cd72a7a4880f0000a6346253414825c19cdd40a28289bdf67b8e6480edff8",
    strip_prefix = "rules_python-0.28.0",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.28.0/rules_python-0.28.0.tar.gz",
)

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

http_archive(
    name = "bazel_skylib",
    sha256 = "cd55a062e763b9349921f0f5db8c3933288dc8ba4f76dd9416aac68acee3cb94",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.5.0/bazel-skylib-1.5.0.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.5.0/bazel-skylib-1.5.0.tar.gz",
    ],
)

http_archive(
    name = "android_studio",
    sha256 = "1fcc05843938f8298d70b336d7cda0e3ebb2f44c1da6fa5b1071a2eb368f298c",
    urls = [
        "https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2023.1.1.8/android-studio-2023.1.1.8-linux.tar.gz",
    ],
    build_file = "@//android-studio-build:BUILD.main"
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

_grpc_version = "1.55.1"

_grpc_sha256 = "17c0685da231917a7b3be2671a7b13b550a85fdda5e475313264c5f51c4da3f8"

http_archive(
    name = "com_github_grpc_grpc",
    sha256 = _grpc_sha256,
    strip_prefix = "grpc-%s" % _grpc_version,
    urls = ["https://github.com/grpc/grpc/archive/v%s.zip" % _grpc_version],
)

# Explicitly declaring Protobuf version, while Protobuf dependency is already
# instantiated in grpc_deps().
http_archive(
    name = "com_google_protobuf",
    sha256 = "0b0395d34e000f1229679e10d984ed7913078f3dd7f26cf0476467f5e65716f4",
    strip_prefix = "protobuf-23.2",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v23.2.tar.gz"],
)

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")

grpc_deps()

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps", "PROTOBUF_MAVEN_ARTIFACTS")
# This is actually already done within grpc_deps but calling this for Bazel convention.
protobuf_deps()

RULES_JVM_EXTERNAL_TAG = "4.5"
RULES_JVM_EXTERNAL_SHA = "b17d7388feb9bfa7f2fa09031b32707df529f26c91ab9e5d909eb1676badd9a6"

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    sha256 = RULES_JVM_EXTERNAL_SHA,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

#load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")
#
#rules_jvm_external_deps()
#
#load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")
#
#rules_jvm_external_setup()
#
#load("@rules_jvm_external//:defs.bzl", "maven_install")
#
#maven_install(
#    artifacts = [
#        "org.jetbrains.kotlin:kotlin-stdlib:1.9.22",
#    ],
#    repositories = [
#        "https://maven.google.com",
#        "https://repo1.maven.org/maven2",
#    ],
#)

#new_local_repository(
#    name = "maven",
#    build_file = "tools/base/bazel/maven/BUILD.maven",
#    path = "prebuilts/tools/common/m2",
#)
