import ProjectDescription

let project = Project(
    name: "TuistSample",
    targets: [
        .target(
            name: "TuistSample",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistSample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TuistSampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistSampleTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistSample")]
        ),
    ]
)
