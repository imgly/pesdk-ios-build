// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "PhotoEditorSDK",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "PhotoEditorSDK", targets: ["PhotoEditorSDK"]),
  ],
  dependencies: [
    .package(name: "ImglyKit", url: "https://github.com/imgly/imglykit-sp.git", .exact("10.30.0"))
  ],
  targets: [
    .target(
      name: "PhotoEditorSDK",
      dependencies: ["ImglyKit"],
      path: "Source",
      publicHeadersPath: ""
    )
  ]
)
