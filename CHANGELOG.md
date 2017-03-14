# 6.1.4

## Fixed

* Fixed a crash in `CameraViewController`.

# 6.1.3

## Added

* Added default intensities for blend modes.

## Changed

* Changed some `enum`s to lower case to match Swift 3.0 naming conventions.

## Fixed

* Fixed a memory leak in `CameraViewController`.
* Fixed a memory leak in `FrameToolController`.
* Fixed a scaling issue for backdrop images.
* Fixed the Podspec so that the resource bundle is not added twice to projects that use CocoaPods to integrate the SDK.

# 6.1.2

## Added

* A new API to integrate the SDK into your analytics. See `AnalyticsClient` and `PESDK.shared.analytics` for more details.
* Added an option to set a backdrop image (`backdropImage`), a blend mode (`backdropBlendMode`) and an intensity (`backdropIntensity`) for it to `PhotoEditModel`.

# 6.1.1

## Fixed

* Fixed a bug regarding image orientation that occured when saving an unedited image. The image that was passed to `PhotoEditViewController` is now passed back to the delegate untouched when saving and image without any modifications.

# 6.1.0

## Added

* Dynamic frames, which are generated during runtime and adjust to the image based on a given set of rules, similar to 9-patch images. See `CustomPatchFrameBuilder` for more information.

## Changed

* Frames participate in the bring-to-front behavior so that stickers, text and brush can be moved behind or in front of frames.
* Licensing has been improved to support multiple bundle identifiers within one license.

# 6.0.1

## Added

* Licensing

# 6.0

## Added

* Stickers can be grouped into individual categories and their color can be changed by the user.
* New initializers for `PhotoEditViewController`: `init(data: Data)`, `init(data: Data, configuration: Configuration)` and `init(data: Data, menuItems: [MenuItem], configuration: Configuration)` which allow passing an image as data in which case EXIF information can be preserved.
* `PhotoEditModel` is a Swift `struct` now. When using Objective-C you can use `IMGLYBoxedPhotoEditModel` instead where needed.

## Changed

* The crop UI has been completely revised and supports arbitrary rotations now.
* Updated the UI of the focus tool so that the user can change the width of the focus gradient.
* Updated the overall look and feel of the UI.
* Custom fonts can be added to the SDK.
* Many performance improvements.
* Asset datasources support remote sources out of the box now.
