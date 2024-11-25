java_library(
    name = "GreetingService",
    srcs = [
        "Greeting.java",
        "GreetingController.java"
    ],
    deps = [
        "@maven//:org_springframework_boot_spring_boot_starter",
        "@maven//:org_springframework_boot_spring_boot_starter_web",
        "@maven//:org_springframework_spring_web",
    ]
)

java_binary(
    name = "SampleServiceApplication",
    main_class="com.example.sampleservice.SampleServiceApplication",
    srcs = [
        "SampleServiceApplication.java"
    ],
    deps = [
        ":GreetingService",
        "@maven//:org_springframework_boot_spring_boot",
        "@maven//:org_springframework_boot_spring_boot_autoconfigure",
    ]
)