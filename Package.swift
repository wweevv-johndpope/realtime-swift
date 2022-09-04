// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Realtime",
  products: [
    .library(
      name: "Realtime",
      targets: ["Realtime"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/wweevv-johndpope/Starscream.git", from: "4.0.4-fix")
  ],
  targets: [
    .target(
      name: "Realtime",
      dependencies: ["Starscream"]
    ),
    .testTarget(
      name: "RealtimeTests",
      dependencies: ["Realtime"]
    ),
  ]
)
