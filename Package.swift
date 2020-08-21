// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "PhotoEditorSDK",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "ImglyKit", targets: ["ImglyKit"]),
    .library(name: "PhotoEditorSDK", targets: ["PhotoEditorSDK"])
  ],
  targets: [
    .binaryTarget(name: "ImglyKit", url: "https://github.com/imgly/pesdk-ios-build/releases/download/10.19.0/PhotoEditorSDK.zip", checksum: "61aa4bdafee1aa13fbce386416acc7f75b5195e56cb2a0bfcb2b08c4f0db9d5e"),
    .binaryTarget(name: "PhotoEditorSDK", url: "https://github.com/imgly/pesdk-ios-build/releases/download/10.19.0/PhotoEditorSDK.zip", checksum: "61aa4bdafee1aa13fbce386416acc7f75b5195e56cb2a0bfcb2b08c4f0db9d5e")
  ]
)
