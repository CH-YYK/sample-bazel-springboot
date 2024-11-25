workspace(name = "sampleservice")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# Load additional dependencies from `rules_jvm_external`.
RULES_JVM_EXTERNAL_TAG = '4.1'
RULES_JVM_EXTERNAL_SHA = 'f36441aa876c4f6427bfb2d1f2d723b48e9d930b62662bf723ddfb8fc80f0140'

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    sha256 = RULES_JVM_EXTERNAL_SHA,
    url = 'https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip' % RULES_JVM_EXTERNAL_TAG,
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

# Install the maven dependencies.
#
# artifacts:
#   Each element in the list must follow "<groupId>:<artifactId>:<version>".
# reporsitories:
#   The endpoints for maven dependencies.
maven_install(
    artifacts = [
        # <groupId>:<artifactId>:<versionId>
        "org.springframework.boot:spring-boot-starter-web:3.4.0",
        "org.springframework.boot:spring-boot-starter:3.4.0",
        "org.springframework:spring-web:6.2.0",
        "org.springframework.boot:spring-boot-autoconfigure:3.4.0",
        "org.springframework.boot:spring-boot:3.4.0",
    ],
    repositories = [
        "https://repo1.maven.org/maven2",
    ],
    fetch_sources = True,
)