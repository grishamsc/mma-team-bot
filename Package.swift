import PackageDescription

let package = Package(
    name: "mma-team-bot",
    dependencies: [
        .Package(url: "https://github.com/pvzig/SlackKit.git", majorVersion: 0, minor: 0),
        ]
)
