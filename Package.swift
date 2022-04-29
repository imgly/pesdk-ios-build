// swift-tools-version:5.6
import PackageDescription

let package = Package(
  name: "PhotoEditorSDK",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "PhotoEditorSDK", targets: ["PhotoEditorSDK"]),
  ],
  dependencies: [
    .package(name: "ImglyKit", url: "https://github.com/imgly/imglykit-sp.git", .exact("11.0.0"))
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
