# This is a generated file, do not edit it
load("//aspects:rules/java/java_info.bzl", "extract_java_toolchain", "extract_java_runtime")
load("//aspects:rules/jvm/jvm_info.bzl", "extract_jvm_info")
load("//aspects:rules/python/python_info.bzl", "extract_python_info")

EXTENSIONS = [
	extract_java_toolchain,
 	extract_java_runtime,
 	extract_jvm_info,
 	extract_python_info
]
TOOLCHAINS = [
	"@bazel_tools//tools/jdk:runtime_toolchain_type"
]
