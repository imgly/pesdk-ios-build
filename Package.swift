// swift-tools-version:5.6
import PackageDescription

let package = Package(
  name: "PhotoEditorSDK",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "PhotoEditorSDK", targets: ["PhotoEditorSDK"]),
  ],
  dependencies: [
    .package(url: "https://github.com/imgly/imglykit-sp.git", exact: "11.10.2")
  ],
  targets: [
    .target(
      name: "PhotoEditorSDK",
      dependencies: [.product(name: "ImglyKit", package: "imglykit-sp")],
      path: "Source",
      publicHeadersPath: ""
    )
  ]
)
