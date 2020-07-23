## [10.16.0]

### Added

* [VideoEditorSDK] Added new GIF sticker category and stickers.

## [10.15.1]

### Changed

* Built with Swift 5.2.4 / Xcode 11.6

### Fixed

* [VideoEditorSDK] Fixed video playback was not paused when exporting an unedited video.

## [10.15.0]

### Changed

* [ImglyKit] Changed access level of `CameraViewController`'s `UIImagePickerControllerDelegate` implementation to `open` in order to allow further customization within subclasses.
* [VideoEditorSDK] The original URL of the input video is now returned by the `VideoEditViewControllerDelegate` instead of `nil` when exporting an unedited video in order to align the behavior with PhotoEditorSDK.

### Added

* [ImglyKit] Added `TextToolControllerOptions.maximumTextSize` to configure the maximum initial font size for text added within the text tool.
* [ImglyKit] Added missing analytics events for adding, selecting, and removing text designs.
* [ImglyKit] Added `CameraController.cameraPosition` to determine the active camera position.

### Fixed

* [ImglyKit] Fixed subclassing of `TextToolController`, `TextDesignToolController`, `BrushColorToolController`, `StickerGestureController`, `StickerColorToolController`, `StickerEditController`, `TextGestureController`, `TextColorToolController`, and `TextDesignGestureController` which caused undefined symbols for `_OBJC_METACLASS_` errors.
* [ImglyKit] Fixed image picker in camera would allow selecting media types that are not included in the `CameraViewControllerOptions.allowedRecordingModes`.

## [10.14.0]

### Added

* [VideoEditorSDK] Added support for animated GIF stickers. Sticker adjustments (brightness, contrast, saturation) and non-default tint modes are not supported for animated stickers.

### Fixed

* [VideoEditorSDK] Fixed video playback to start at trimmed start position when loading a `PhotoEditModel` or serialization.
* [VideoEditorSDK] Fixed crash for videos with invalid audio.

## [10.13.1]

### Fixed

* [VideoEditorSDK] Fixed missing intermediate directories were not created for export filename.
* [ImglyKit] Fixed static frames would not appear or lead to crash.
* [ImglyKit] Fixed dynamic frames would lead to crash if not all patches have been set.
* [ImglyKit] Fixed `error: Couldn't IRGen expression, no additional error` when using the `lldb` console.

## [10.13.0]

### Changed

* Built with Swift 5.2.4 / Xcode 11.5

## [10.12.0]

### Changed

* [ImglyKit] Changed access level of `AdjustEditController.updateSlider` to `open` in order to allow further customization within subclasses.

### Added

* [ImglyKit] Added `MenuCollectionViewCell.cornerRadius` and `MenuCollectionViewCell.selectionBorderWidth` which allow customization via `UIAppearance` proxy calls.

### Fixed

* [ImglyKit] Fixed force cropping could be undone.

## [10.11.0]

### Changed

* [ImglyKit] Changed access level of `Slider.thumbView`, `Slider.leftUnfilledTrackView`, `Slider.rightUnfilledTrackView`, and `Slider.filledTrackView` to `open` in order to allow further customization within subclasses of `Slider`.

### Added

* [ImglyKit] Added `UIAppearance` proxy support for `Slider.trackHeight`, `Slider.trackCornerRadius`, and `Slider.thumbSize`.

## [10.10.0]

### Changed

* Built with Swift 5.2.2 / Xcode 11.4.1
* [ImglyKit] Changed the initial minimum font size for text added with the text tool to `20.0`. In order to return to the old default value and line break behavior set `TextToolControllerOptions.minimumTextSize` to `1.0`.

### Added

* [ImglyKit] Added `TextToolControllerOptions.minimumTextSize` to configure the initial minimum font size for text added with the text tool which affects the automatic line break behavior.

### Fixed

* [ImglyKit] Fixed adding personal stickers would lead to the toolbar being hidden beneath the keyboard in the text and text design tool for iOS versions older than 13.0.
* [ImglyKit] Added a workaround that fixes wrong layout of the navigation bar for iOS 13 devices without a notch when a `MediaEditViewController` is embedded into a `UINavigationController` and uses a different `prefersStatusBarHidden` setting as the parent view.

## [10.9.0]

### Changed

* [ImglyKit] 🚨 `ConfigurationBuilder.configure(from:)` methods don't parse the tile configurations for `LUTFilter` objects from the `lutURI` filename anymore and the default changed from a 8x8 to a 5x5 tile configuration.
* [ImglyKit] Added `@available(iOS 11.0, *)` restriction to `ImageFileFormat.heif` as this has always been noted in the API docs but was not enforced by the compiler.

### Added

* [ImglyKit] Added `LUTEffect` initializer for specific tile configurations that does not parse its URL for tile configurations.
* [ImglyKit] Added `Configuration.appearanceProxyConfigurationClosure` intended for custom `UIAppearance` proxy calls.
* [ImglyKit] Enabled `SnapGuideView` properties for `UIAppearance` proxy calls.
* [ImglyKit] Added snap guide colors to the `Theme`.

### Fixed

* [ImglyKit] Added a workaround that fixes black image exports with the iOS 13.4 Simulator in general and all iOS 13.x Simulators running on macOS 10.15.4. Exports of images larger than 4096^2 are still failing to render on the aforementioned iOS Simulator configurations. On real devices everything works as expected.

## [10.8.0]

### Changed

* Built with Swift 5.2 / Xcode 11.4.

### Fixed

* [VideoEditorSDK] Fixed initial position of the video position seeker when the playback is paused and the trim tool is entered.
* [ImglyKit] Fixed `StickerToolControllerOptions.titleViewConfigurationClosure` not being called for the selected sticker category.

## [10.7.4]

### Fixed

* [ImglyKit] Added missing localizable strings for filter groups.
* [ImglyKit] Fixed focus operation not being centered when the focus tool is applied to a cropped image.

## [10.7.3]

### Changed

* [ImglyKit] Changed `UICollectionViewDelegate` methods implemented by `StickerSelectionController` to `open` instead of `public`.

### Fixed

* [ImglyKit] Fixed infinite layout loop when rotating an inverted text design on iOS 13.
* [ImglyKit] Fixed class replacement not working for `BlendModeCollectionViewCell` and `StickerCollectionViewCell`.
* [ImglyKit] Fixed misplaced sticker bounding box when switching from opacity to color editing mode of a sticker.

## [10.7.2]

### Fixed

* [ImglyKit] Increased the touch area of the color picker controls which were difficult to use at the borders of the color selection views.
* [ImglyKit] Fixed default ordering of the frames for cross-platform consistency.
* [ImglyKit] Fixed accidental drawing while using the color picker in the `BrushColorToolController`.

## [10.7.1]

### Changed

* Built with Swift 5.1.3 / Xcode 11.3.1.

### Fixed

* [ImglyKit] Fixed overwriting of configuration options when calling a `ConfigurationBuilder.configure*` closure more than once. Existing configuration options are now passed to successive invocations.
* [ImglyKit] Fixed text tool and text design tool which would remain active even if the text was deleted.
* [ImglyKit] Fixed switching the camera mode too fast would lead to the blur view appearing permanently and thereby disabling the camera functionality.
* [VideoEditorSDK] Fixed an issue where the frame options tool would show the wrong video frame when playback is paused.

## [10.7.0]

### Changed

* Built with Swift 5.1.3 / Xcode 11.3.

### Fixed

* [ImglyKit] Added a public initializer for `PhotoEditRenderer` that's accessible with Objective-C.
* [ImglyKit] Fixed Objective-C compatibility of `SpriteModel`.
* [ImglyKit] Fixed `CGFloat?` properties not being exposed to Objective-C by converting them to `NSNumber?`.
* [ImglyKit] Fixed rotational snapping of sprites which led to misaligned snapping angles and guides after the image has been rotated with the transform tool.
* [ImglyKit] Fixed `FrameOptionsToolControllerOptions.allowedFrameActions` not being accessible from Objective-C.

## [10.6.0]

### Changed

* [PhotoEditorSDK] Restricted access level of `PhotoEditViewController.options` to `public` in order to prevent overrides which would likely cause unexpected behavior.
* [VideoEditorSDK] Restricted access level of `VideoEditViewController.options` to `public` in order to prevent overrides which would likely cause unexpected behavior.

### Fixed

* [ImglyKit] Fixed animation of the media capturing buttons in the `CameraViewController` when switching the capturing mode from photo to video and vice versa.
* [ImglyKit] Fixed slider in the sticker tool which was not updated when multiple stickers with different opacity, brightness, contrast, or saturation values were edited one after the other.
* [ImglyKit] Fixed image preview for the iOS Simulator with Metal support (iOS 13 Simulator running on macOS 10.15) which led to the preview image being displayed upside down.
* [ImglyKit] Fixed image preview in the transform and frame tool for the iOS Simulator with Metal support (iOS 13 Simulator running on macOS 10.15) which led to the display of an empty canvas.

## [10.5.0]

### Changed

* Built with Swift 5.1.2 / Xcode 11.2.1.

### Added

* [ImglyKit] Added configuration option `MediaEditViewControllerOptions.navigationControllerMode` to keep the `Toolbar` if the `MediaEditViewController` or one of its ancestors is a child of a `UINavigationController`.

### Deprecated

* [ImglyKit] Deprecated `MediaEditViewControllerOptions.useParentNavigationItem` in favor of `MediaEditViewControllerOptions.navigationControllerMode`.

### Fixed

* [ImglyKit] Fixed background color of the menu accessory view to use the `Theme.menuBackgroundColor`. This issue could result in a black gap at the bottom of the screen if the menu accessory view extended below the bottom `safeAreaLayoutGuide`, e.g., when the `MediaEditViewController` was embedded in a `UINavigationController`.

## [10.4.0]

### Changed

* Built with Swift 5.1.2 / Xcode 11.2.

### Added

* [ImglyKit] Added option to add personal stickers from the camera roll via `UIImagePickerController`. This feature is disabled by default and can be configured with `StickerToolControllerOptions`. If the same `AssetCatalog` is used for multiple editor instances and/or for de-/serialization added personal stickers will accumulate in this single `AssetCatalog` instance which is `AssetCatalog.shared` per default. In order to remove all added personal stickers use `AssetCatalog.removeTemporaryItems()` or create a new `AssetCatalog` for every editing session.

### Fixed

* [ImglyKit] Fixed orientation of assets with EXIF metadata.

## [10.3.0]

### Changed

* [ImglyKit] Default sticker category identifiers were changed for cross-platform compatibility and consistency with filter categories. `pesdk_sticker_asset_emoticonsStickerCategory` was changed to `imgly_sticker_category_emoticons` and `pesdk_sticker_asset_shapesStickerCategory` was changed to `imgly_sticker_category_shapes`.

### Added

* [ImglyKit] Added `AssetCatalog` to configure all assets that are available to an editor instance for editing tasks. Per default the `shared` instance is used. Use the `Configuration` to setup the asset catalog. `StickerCategory.all`, `Frame.all`, `Effect.all`, `Overlay.all`, `FontImporter.all`, and `TextDesign.all` can still be used but these calls are redirected to `AssetCatalog.shared` internally.

### Fixed

* [ImglyKit] Fixed sticker icon resizing based on `StickerToolControllerOptions.stickerPreviewSize`.
* [ImglyKit] Fixed broken alpha channel of `imgly_frame_wood_passepartout_thumbnail.png` for source distribution via podspec.
* [ImglyKit] Fixed an issue that caused the last used sticker category to not being reselected when adding another sticker.

## [10.2.1]

### Fixed

* [ImglyKit] Fixed Metal compiler flags in podspec for source distribution.

## [10.2.0]

### Changed

* Built with Swift 5.1 / Xcode 11.0.

### Fixed

* [ImglyKit] Fixed brush not shown in transform and frame tool.

## [10.1.0]

### Added

* [ImglyKit] Added `Theme.dynamic`. This theme switches dynamically between the predefined light and dark theme based on the active `UITraitCollection.userInterfaceStyle` (iOS 13 "Dark Mode").

### Fixed

* [ImglyKit] Fixed tint color in `FontSelectorViewController` for the handle button and the selected font when set via the theme.
* [ImglyKit] Fixed `MediaEditViewControllerOptions.actionButtonConfigurationClosure` not being called.
* [ImglyKit] Fixed race condition for remote asset downloads.

## [10.0.1]

### Fixed

* [ImglyKit] Fixed a crash on iOS 12.1 and below.
* [ImglyKit] Fixed sprites being misplaced in the transform and frame tools.
* [VideoEditorSDK] Fixed an issue where the video would not stop playing while in a color tool controller.

## [10.0.0]

The `PhotoEditorSDK.framework` was split into two frameworks, `ImglyKit.framework` and `PhotoEditorSDK.framework`:

- `ImglyKit.framework` contains most of the logic that is required for rendering, displaying and editing media.
- `PhotoEditorSDK.framework` contains classes that are specific to photo editing.

A new `VideoEditorSDK.framework` was introduced, that uses the same `ImglyKit.framework` as `PhotoEditorSDK.framework` does. This new framework contains classes that are specific to video editing. For more details please take a look at [www.videoeditorsdk.com](https://www.videoeditorsdk.com).


### Added

* [ImglyKit] Added a `MediaEditViewController` class that is the superclass for `PhotoEditViewController` and `VideoEditViewController`.
* [ImglyKit] Added a `MediaEditPreviewController` class that is the superclass for `PhotoEditPreviewController` and `VideoEditPreviewController`.
* [VideoEditorSDK] Added a `Video` class for passing videos to the editor.
* [VideoEditorSDK] Added a `VideoEditViewController` class for video editing.
* [VideoEditorSDK] Added a `VideoEditPreviewController` class for previewing videos.
* [VideoEditorSDK] Added a `TrimToolController` class for trimming videos.

### Changed

* [ImglyKit] `PhotoEditPreviewControllerDelegate` was renamed to `MediaEditPreviewControllerDelegate` together with all method names of the protocol.
* [ImglyKit] The camera does not automatically present the editor any longer when neither `dataCompletionBlock` nor `completionBlock` was specified. You should always set `CameraViewController.dataCompletionBlock`, `CameraViewController.completionBlock` and `CameraViewController.cancelBlock`.
* [ImglyKit] Video recordings that were created with the camera no longer include the applied filter. To restore the old behavior set `CameraViewControllerOptions.writeVideoWithFilterApplied` to `true`.
* [ImglyKit] `Bundle.pesdkBundle` was renamed to `Bundle.imglyBundle`.
* [ImglyKit] `MainFlowController.photoEditViewController` was renamed to `MainFlowController.mediaEditViewController`.
* [PhotoEditorSDK] The `PhotoEditViewController` initializer doesn't have a `menuItems` parameter any longer. To update the menu items, please use `PhotoEditViewControllerOptions.menuItems`.
* [PhotoEditorSDK] The `PhotoEditViewController` is a subclass of `MediaEditViewController` now.
* [PhotoEditorSDK] The `PhotoEditPreviewController` is a subclass of `MediaEditPreviewController` now.
* [PhotoEditorSDK] The `PhotoEditViewControllerDelegate` protocol now inherits from the `MediaEditViewControllerDelegate`, which brings the following changes:
	* `photoEditViewController(_ photoEditViewController: PhotoEditViewController, willPresentToolController toolController: PhotoEditToolController)` is now `mediaEditViewController(_ mediaEditViewController: MediaEditViewController, willPresentToolController toolController: PhotoEditToolController)`,
	* `photoEditViewController(_ photoEditViewController: PhotoEditViewController, didPresentToolController toolController: PhotoEditToolController)` is now `mediaEditViewController(_ mediaEditViewController: MediaEditViewController, didPresentToolController toolController: PhotoEditToolController)`,
	* `photoEditViewController(_ photoEditViewController: PhotoEditViewController, willDismissToolController toolController: PhotoEditToolController)` is now `mediaEditViewController(_ mediaEditViewController: MediaEditViewController, willDismissToolController toolController: PhotoEditToolController)`,
	* `photoEditViewController(_ photoEditViewController: PhotoEditViewController, didDismissToolController toolController: PhotoEditToolController)` is now `mediaEditViewController(_ mediaEditViewController: MediaEditViewController, didDismissToolController toolController: PhotoEditToolController)`.
* [PhotoEditorSDK] `PhotoEditViewControllerOptions.configurePhotoEditorViewController(_:)` was renamed to `PhotoEditViewControllerOptions.configurePhotoEditViewController(_:)`.

### Removed

* [PhotoEditorSDK] Removed all deprecated classes and methods.

## [9.8.3]

### Fixed

* Fixed class replacement not working for `SliderTooltip`.

## [9.8.2]

### Added

* Added `FilterToolControllerOptions.folderCellConfigurationClosure` to configure cells that represent a folder within the filter tool.
* Added an `overlayButtonInsets` property to `AdjustToolControllerOptions`, `BrushToolControllerOptions`, `PhotoEditViewControllerOptions`, `StickerOptionsToolControllerOptions`, `TextOptionsToolControllerOptions` and `TextDesignOptionsToolControllerOptions` to easily modify the overlay button's insets in the corresponding tool controller.

### Changed

* Designated initializers of `PhotoEditToolController` subclasses are now `public` to enable subclassing and thus class replacement of tools.

### Fixed

* Fixed class replacement not working for `MenuListSectionController` subclasses by making all concrete subclasses of `MenuListSectionController` `open`.
* Fixed `FilterToolControllerOptions.filterCellConfigurationClosure` not being called for all effect cells when using folders.

## [9.8.1]

### Fixed

* Fixed customize color of title label via `titleViewConfigurationClosure`.
* Fixed preview of transparent wide color images on P3 displays for iOS 11 and earlier where the transparent background appeared always black.
* `PhotoEditPreviewController.previewView.backgroundColor` can now be used to change the background color of transparent images in the preview which was always black if this property was set.

## [9.8.0]

### Added

* Added a sharpness option to the adjustments tool.

## [9.7.1]

### Fixed

* Fixed class replacement not working for `MenuCollectionViewCell` and `ColorCollectionViewCell`.
* Fixed an ambiguous constraints warning in the brush tool.
* Fixed an ambiguous constraints warning in the overlay tool.
* Fixed a crash when removing fonts from `PhotoEditorSDK.bundle`.
* Fixed an issue where the progress indicator would not disappear when passing a `Photo` object initialized with an invalid `URL`.

### Removed

* Remove unused `backgroundColor` in `ToolControllerOptions`.

## [9.7.0]

### Added

* Added optional predefined light color theme and easy to use theming capabilities. The `Configuration` allows now to specify and alter the overall `Theme` at a central place. Existing customization options via closures override the properties defined by a theme.

### Fixed

* Fixed `MenuListSectionController` not being subclassable.

## [9.6.1]

### Added

* Added `reloadData(completion:)`, `performUpdates(animated:completion:)` and `reloadMenuItems(_:)` to `MenuViewController` to support menu reloading when implementing custom tools.

### Fixed

* Fixed `AdjustToolControllerOptions.adjustToolButtonConfigurationBlock` and `AdjustToolControllerOptions.adjustToolSelectedBlock` not being exposed to Objective-C.
* Fixed LUT for builtin filter with identifier `imgly_lut_lomo`.
* Fixed builtin filter identifiers `imgly_lut_kdynamic`, `imgly_lut_gobblin`, and `imgly_lut_pro400` for cross-platform serialization.
* Fixed default ordering of filters in order to match other platforms.
* Fixed alpha value of sticker shape with identifier `pesdk_sticker_asset_badge28` which was not fully opaque before.

## [9.6.0]

### Added

* Added `CameraViewController.locationAccessRequestClosure`. *Important*: If you currently have `CameraViewControllerOptions.includeUserLocation` set to `true` (the default) and still want photos taken with `CameraViewController` to be tagged with the location where the photo was taken, you will have to set this property. Starting Spring 2019, all apps submitted to the App Store that access user data are required to include a purpose string as soon as location permissions requests appear somewhere in the binary. Since we do not want to force developers integrating the SDK into their app to include a purpose string even with location tagging disabled, this closure was introduced, so that developers can decide for themselves if it is appropriate to request location access.

### Changed

* Changed all `MenuViewControllerDelegate` methods to be `open` instead of `public`.
* Changed `MenuListSectionController` to `open` instead of `public`.

## [9.5.0]

### Added

* Added enhanced rotational and positional snapping for sprites, e.g., stickers, texts, and text designs. Global `SnappingOptions` can be configured with the `configureSnapping` method of the `ConfigurationBuilder`.

### Changed

* If an expired trial license is used the SDK will now resort to the watermark mode instead of purposely crashing the app.

### Fixed

* Fixed blacks and whites adjustments should not affect the alpha channel.
* Fixed issues with duplicate symbols when the host app uses `IGListKit`.
* Fixed `PhotoEditViewControllerOptions.actionButtonConfigurationClosure` not being called.
* Fixed an issue with `FrameOptionsToolControllerOptions` showing a misaligned part of the photo when the photo is rotated.

## [9.4.1]

### Fixed

* Fixed iOS Simulator issues for Objective-C.

## [9.4.0]

### Changed

* Built with Swift 5.0 / Xcode 10.2.

## [9.3.0]

### Added

* Added `photoEditModel` property to `CameraViewController` which allows to conveniently pass the filter settings from the camera to a `PhotoEditViewController` in a custom `dataCompletionBlock` of the `CameraViewController`.
* Added `ColorPipetteView` to `ColorPickerViewController` which enables a color pipette tool for every `PipettableColor` item in a color palette. Available color palettes are configured via the `availableColors` array, e.g., in the `ColorToolControllerOptionsBuilder`, `TextColorToolControllerOptionsBuilder`, and `BrushColorToolControllerOptionsBuilder`. A pipettable color is added as the first item to the aforementioned default color palettes.

### Fixed

* Fixed a bug in `TextOptionsToolController` where the menu would not display the correct font, text color, background color and alignment of a selected text.
* Fixed a bug in `StickerToolController` where the optional `didEnterToolClosure` and `willLeaveToolClosure` were not executed.

## [9.2.0]

### Added

* Added folders to the `FilterToolController` to group related filters together and to reduce clutter in the menu. To disable folders and get back the old behavior, simply set `FilterToolControllerOptions.filterGroups` to `[]`.
* Added our new duotone filters to the default filters in `Effect.all`.

### Changed

* Changed the display name of a couple of filters. Their identifier remain the same to maintain compatibility with existing serializations.

### Fixed

* Improved performance when interacting with multiple stickers.
* Fixed `TextFontToolControllerOptions.actionButtonConfigurationClosure` to receive a reference to the cell and the matching `Font` object instead of just a string.

## [9.1.1]

### Changed

* Changed the company name.
* Source code is now compatible with Swift 5.

### Fixed

* Fixed camera crop to square preview view.
* Fixed sticker tint modes with alpha values other than one.

## [9.1.0]

### Added

* Added `Effect` type as the base class for any filter effect that can be applied to an image.
* Added new duotone filter effect `DuoToneEffect`.

### Changed

* The `PhotoEffect` class has been deprecated. Its initializers have been split into two new `Effect` subclasses. The `LUTEffect` is the most commonly used filter effect based on an image-based lookup table (LUT) and the `CoreImageEffect` allows to use any registered Core Image filter.
* All occurrences of `photoEffect` have been renamed to `effect`. Backward-compatible interfaces are introduced and marked as deprecated. Xcode will provide renaming suggestions.

### Fixed

* Fixed rare crash when opening the frame tool.
* Fixed image export with colorized stickers.
* Fixed deserializations with colorized stickers.
* Fixed readability issue with the text input field in the text design tool. The text input string does not change its color anymore.

## [9.0.0]

### Added

* Added `MenuCollectionViewCell` which is used for all cells throughout the main menus. This consolidates multiple `UICollectionViewCell` subclasses which were used previously and enables easier customization.
* Added undo and redo to `AdjustToolController`.
* Added a reset button to `AdjustToolController`.
* Added a reset button to `TransformToolController`.
* Added a replace button to `StickerOptionsToolController`.
* Added an opacity button to `StickerOptionsToolController`.
* Added `FrameOptionsToolController` to modify the width and opacity of a frame.

### Changed

* The design of the cells in the main menus was slightly changed and unified across tools.
* The design of the title in the lower toolbar was slightly changed to an all caps label with more character spacing.
* Updated the Text Design tool to allow adding multiple Text Design objects.
* Updated the Text Design inversion mechanism so that the user is able to adjust the padding of an inverted Text Design.
* Replaced the blend mode selection view in `OverlayToolController` with a button to toggle between available blend modes.
* Multiple icons were replaced across the SDK.
* Instead of passing an array of `UIColor` objects and an array of matching `String` objects, describing the name of the color, the SDK now expects an array of `Color` objects.
* The default hardness of a new brush stroke was changed from `1.0` to `0.5`.
* `DefaultLogger` was updated to use `OSLog` on iOS 10.0 and later instead of regular `print` statements.
* Changed the default tool order so that the Focus tool is next to the Adjust tool.

### Fixed

* Fixed a bug in the brush tool, where the size of the stroke's preview and an actual stroke on the canvas would mismatch.
* The `StickerToolController` now opens with the previously selected sticker category.
* Excess padding on the left and right of `TextDesignSunshine` was removed.
* `TextDesignBlocksLight` now displays decorative lines as seen in its preview.
* Fixed a bug where the output image would be black when adding a sticker and tinting it using the `.colorized` tint mode on iOS 12.0 and devices supporting Metal.
* Fixed a bug where the camera preview would be darker than the actual image on iPhone XS devices.

### Removed

* Removed `ActivityBorderedCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed `BorderedCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed `IconBorderedCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed `IconCaptionCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed `LabelBorderedCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed `LabelCaptionCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed `LabelIconBorderedCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed `FilterCollectionViewCell` in favor of `MenuCollectionViewCell`.
* Removed all previously deprecated API.
* Removed all `AsNSNumber` properties. These are now exposed to Objective-C with their regular name (e.g. `allowedAdjustOverlayActions ` instead of `allowedAdjustOverlayActionsAsNSNumbers`.
* Removed mapping between old localization keys and new localization keys.

## [8.6.4]

### Fixed

* Fixed a bug where the camera preview would be distorted.

## [8.6.3]

### Fixed

* Fixed an issue where setting the background color of the preview view would not work when using the Metal renderer.
* Fixed a very rare deadlock when loading fonts caused by a bug in iOS 10.
* Fixed an issue where the filter thumbnail cache would use more memory than required.

## [8.6.2]

### Added

* Added `TransformToolControllerOptions.scalePickerContainerViewConfigurationClosure` to enable customization of the scale picker's container view.

### Fixed

* Fixed an issue with missing text when deserializing a text design.
* Fixed rendering issues on devices running iOS 12 but that do not have an A8 chip at least.
* Fixed live filters not working in the camera.

## [8.6.1]

### Fixed

* The drop shadow of the UI controls to modify the focus in the focus tool had an y-offset of 1, which doesn't make sense because the controls can be rotated. This has been fixed by changing the y-offset to 0.
* Fixed a bug where it was possible to make a text larger than the allowed maximum width.
* Fixed a bug where the position of text in the preview and in the final image would not match.
* Fixed a crash when clearing the text of an already created text design.
* Fixed an issue with emojis in multiline text designs.

## [8.6.0]

### Changed

* Migrated to Swift 4.2 and built the SDK with Xcode 10.0.
* Updated the renderer to use Metal instead of OpenGLES on iOS 12 and supported devices.

## [8.5.0]

### Added

* Added `PhotoEditViewController.presentTool(for:)` to programmatically present the tool for a given `ToolMenuItem`. This can be used to directly transition to one of the tools when presenting the editor.

### Changed

* Changed all localization keys throughout the SDK to match the pattern `pesdk_context_type_description` where `context` is usually the tool where the string appears (e.g. `focus`), `type` represents the type of the string such as `button` or `text` and `description` represents the actual use of the string, such as `brightnessIntensitySliderLabel`. This scheme is now used on the other platforms as well. We're falling back to the old localization keys in case the new ones can't be found to not break backwards compatibility, but we suggest you adopt the new keys as soon as possible.

## [8.4.1]

### Fixed

* Fixed a crash when done drawing a stroke in the brush tool.

## [8.4.0]

### Added

* Added a linear focus mode to the focus tool.
* Added a gaussian focus mode to the focus tool.
* Added temperature adjustments to the adjustment tool.
* Added blacks adjustments to the adjustment tool.
* Added whites adjustments to the adjustment tool.

### Changed

* The text tool now uses the same text settings of the last selected text when creating new texts.
* The `FocusType` type has been deprecated because it used incorrect namings. It is replaced by the `FocusMode` type, which uses the same namings as the PhotoEditor SDK on HTML5 and Android. More specifically `FocusType.linear` is now `FocusMode.mirrored` and `FocusType.gradient` is now `FocusMode.linear`, `.radial` and `.gaussian` remain the same.
* The SDK can now be used for testing purposes without unlocking it with a license. A watermark image will be displayed above the edited photo in such cases.

## [8.3.10]

### Added

* Added the option to adjust the gamma in the adjustments tool.

### Fixed

* Fixed a crash when instantiating a `PESDKPhotoEditMenuItem` with Objective-C for a tool that is not licensed.

## [8.3.9]

### Added

* Added `PhotoEditViewController.serializedSettings(withImageData:)` which enables you to specify whether or not to include image data in the generated JSON. It is recommended that the image is not included in the JSON but saved as a separate file.
* Added `PhotoEditViewControllerOptions.useParentNavigationItem`, allowing for the `PhotoEditViewController` to be embedded inside a custom container view controller inside a `UINavigationController`.
* Added accessibility support to the Text Design tool.

### Changed

* Changed serialization to require a `Photo` object instead of `UIImage`. This improves memory usage.
* Improved serialization performance when not including image data in the serialization.
* Changed the Text Design Tool icon.

### Fixed

* Fixed a bug where the edit screen would not be dismissed when changing the text of an already added text design from within the `TextDesignOptionsToolController`.

## [8.3.8]

### Fixed

* Fixed multiple layout issues in the text design tool.

## [8.3.7]

### Added

* Added support for gaussian and gradient focus to the renderer, to support cross-platform (de-)serialization.
* Added support for custom frame sizes to the renderer, to support cross-platform (de-)serialization.

### Fixed

* Fixed an issue with an incorrect deserialized focus gradient size.
* Fixed a layout issue in the `FontSelectorView`.

## [8.3.6]

### Fixed

* Fixed a retain cycle in the serialization test suite.
* Fixed a bug when deserializing an unknown type of focus.
* Fixed a bug that added a little rotation to stickers and text when the image is flipped, the state is serialized and then again deserialized.
* Fixed a memory issues with labels that have a huge height by limiting the maximum allowed height.
* Fixed a bug where the UI would become unresponsive when the editor is embedded in an `UINavigationController` and the user very quickly closes a tool after opening it.
* Fixed a bug in the filter and focus shaders that prevented the iOS 12 shader compiler from compiling the shaders.

## [8.3.5]

### Fixed

* Fixed a race condition when setting `StickerCategory.all`.
* Fixed a race condition in `PaintingFragment`.
* Fixed a layout bug when embedding `PhotoEditViewController` in a `UINavigationController` with an opaque navigation bar.
* Fixed an issue where drawing a new path in the brush tool would flicker.

## [8.3.4]

### Fixed

* Fixed an issue where deserializing a brush would not load its first point.
* Fixed an issue where drawing a dot in the brush tool was not possible.
* Fixed an issue where `renderPipelineBlock` was not called during the high resolution rendering.
* When embedding the `PhotoEditViewController` in an `UINavigationController`, the `tintColor`, `imageEdgeInsets` and `backgroundImage` properties of the toolbar buttons are copied to the buttons in the navigation bar.

## [8.3.3]

### Fixed

* Fixed an issue with iTunes Connect not accepting the build when integrating the SDK via CocoaPods.

## [8.3.2]

### Fixed

* Fixed a bug where setting a title on a discard or apply button would not work when embedding the `PhotoEditViewController` in a `UINavigationController`.
* Fixed a crash when setting `StickerCategory.all` to an array of sticker categories with duplicate titles while the `StickerToolController` was visible.

## [8.3.1]

### Fixed

* Fixed a crash when increasing the width of text too much.
* Fixed an issue with color spaces. Colors are now always displayed correctly and the exported image will have the Display P3 color space on supported devices. Some filters still do not support wide color gamuts and clamp to the sRGB gamut. This will be fixed in a future update.
* Fixed a crash when updating stickers or sticker categories from a thread different than the main thread while the sticker tool was visible.
* Removed the new -Osize Swift optimization mode for now, because iTunes Connect rejects binaries built with it.

## [8.3.0]

### Added

* Added support for HEIF image exports. See `PhotoEditViewControllerOptions.outputImageFileFormat` for more details.
* Added backend support for gamma correction.

### Changed

* Built with Swift 4.1 / Xcode 9.3.
* Switched from `Float` to `Double` in all photo edit and serialization models, because converting an `NSNumber` implicitly to `Float` (e.g. `NSNumber(0.26) as? Float`) returns `nil` with Swift 4.1 if it can't be represented exactly by a float.
* When updating `StickerCategory.all` while the sticker selection tool is visible, it now automatically reloads the available categories and stickers.

### Fixed

* Fixed some minor layout bugs on iPhone X.
* Fixed an issue where the dSYM file would not be integrated into the final app when using CocoaPods.
* Fixed an issue with the SoftLight blend mode not looking as expected.
* Fixed an issue with the brush not respecting the hardness when deserializing.
* Fixed an issue with the first path of a brush not being drawn when deserializing.
* Fixed an issue with the radial blur being misplaced when deserializing.
* Fixed an issue with overlays being misaligned.

## [8.2.4]

### Added

* Added an option to show a close button in the `CameraViewController`. See `CameraViewControllerOptions. showCancelButton`, `CameraViewControllerOptions.cancelButtonConfigurationClosure` and `CameraViewController.cancelBlock` for more details.
* Added full support for right-to-left languages.

### Fixed

* Fixed an issue where the flash icon would not be visible while the camera was in video mode.
* Fixed an issue where all Objective-C bridged `SpriteModel`s were of type `PESDKSpriteModel` instead of their concrete subclasses.
* Fixed an issue with the toolbar having the wrong size while the keyboard was active on an iPhone X.
* Fixed an issue where focus would not work in the camera after switching from back to front camera.

## [8.2.3]

### Fixed

* Fixes an issue with the transform tool not rotating correctly.
* Fixes an issue where an overlay would not be applied when selecting the 'Normal' blend mode.

## [8.2.2]

### Fixed

* Fixes an issue with the size of rotated stickers on iOS 10.

## [8.2.1]

### Fixed

* Overlays and blur handle transparency correctly now.
* `TextFontToolControllerOptions.fontSelectorViewConfigurationClosure` and `TextFontToolControllerOptions.handleButtonConfigurationClosure` work as expected now.
* Fixes an issue with undoing brush strokes.
* Fixes an issue where the undo or redo buttons would be active although there was nothing to undo/redo.
* Fixes a bug where video recording would take a long time to stop on older devices.
* Fixes a rare crash with the license checker on iOS 9.

## [8.2.0]

### Added

* Added a check that verifies that no two assets have the same identifier.
* Added a `Photo` class that wraps different types of image data. Added `PhotoEditViewController(photoAsset:configuration:menuItems:photoEditModel:)` and `PhotoEditPreviewController(photoAsset:photoEditModel:)` and deprecated all previous initializers of both classes in favor of those. Please take a look at the API documentation for the `Photo` class, as using it correctly can have a huge impact on the memory footprint of the SDK.
* Added `accessibilityIgnoresInvertColors` where needed.
* PNG support, see `PhotoEditViewControllerOptions.outputImageFileFormat` for more details.
* Added `PESDK.renderPipelineBlock` which can be used to modify each stage of the render pipeline.

### Fixed

* The top screen edge system gesture is now deferred to avoid conflicts with the transform tool.
* The touchable area for `leftButton` and `rightButton` in the toolbar is wider now.
* Removed all server calls for enterprise licenses.
* Fixed invalid license check in `BrushColorToolController` and `TextOptionsToolController`.
* Improved performance and memory usage.

## [8.1.3]

### Fixed

* Fixed a bug where `FrameToolControllerOptions.cellConfigurationClosure` would not be called.

## [8.1.2]

### Fixed

* Fixed a crash when narrowing the text bounding box while zoomed in on the image.

## [8.1.1]

### Added

* Added haptic feedback for supported devices.
* Added class replacement support for `StickerImageView`, `FrameImageView`, `SpriteLabel`, `Painting` and `CanvasView`.

### Changed

* Made the `BrushSpriteModel` initializers public.

### Fixed

* Fixed a bug where custom fonts would not be loaded.
* Fixed an issue where sticker and sticker category thumbnails would sometimes have lower resolution.

## [8.1.0]

### Added

* Added the possibility to change a sticker's brightness, contrast and saturation. Take a look at `Sticker.allowBrightnessAdjustment`, `Sticker.allowContrastAdjustment`, `Sticker.allowSaturationAdjustment` and `StickerAction.brightness`, `StickerAction.contrast`, `StickerAction.saturation` for more details.
* iPhone X support for `CameraViewController`.
* Added `TextToolControllerOptions.dimmingViewConfigurationClosure`.

### Changed

* `Font` expects an `URL` instead of a `String` now.

### Fixed

* Fixed a misplaced title view on iOS 9 when embedding the `PhotoEditViewController` inside a `UINavigationController`.
* `StickerToolController` displays the currently selected sticker category as its title again.
* The color picker's saturation and brightness picker updates as expected now when saturation is set to 0 and the user drags the hue picker.
* `ColorPickerViewController` and `FontSelectorViewController` didn't call `addChildViewController(_:)` and `didMove(toParentViewController:)` for their contained `SpriteEditController`, resulting in layout issues.

## [8.0.1]

### Fixed

* Fixed a bug where static frames would not be shown.
* Made `PhotoEditViewController.init(photo:data:configuration:menuItems:photoEditModel:)` public to enable subclassing `PhotoEditViewController`.
* Fixed new warnings generated by Xcode 9.1 beta.
* Fixed a bug where undo and redo would not work correctly when drawing out of bounds within the brush tool.

## [8.0.0]

### Added

* Full support for iOS 11 and Swift 4.
* Added rotation gesture support to `FrameToolController` (disabled by default).
* Added serialization format v3.0.0, which can be used to serialize and deserialize edits across all platforms.
* Added support for the iPhone X to `PhotoEditViewController`.

### Changed

* Completely refactored the sprite handling code. Sprites (stickers, text, brush and frames) are now directly rendered on top of the image instead of rendering a view snapshot. This results in better looking images, better performance and more robust code.
* Completely refactored `PhotoEditViewController` and all `PhotoEditToolController` subclasses. We make heavy use of composition and container view controllers now, leading to better support for customizations and custom user interfaces.
* All view controllers and views can be replaced by a custom subclass using `PESDK.replaceClass(_:with:)` for even better customization options.
* Undo and redo is now supported by all tools. The sticker, text and brush tools continue to have a local undo/redo stack in addition to the global undo/redo stack.

### Fixed

* Fixed an issue where the selected crop rectangle would change after tapping the apply button in the transform tool.
* Fixed an issue where focus would change its appearance and position after transform.
* Fixed an issue where the color saturation and brightness picker would sometimes not update while dragging the hue picker.
* The `PhotoEditViewController` can now be pushed onto a navigation controller that uses a translucent navigation bar.
* Fixed various layout issues with the transform and frame tools.
* Fixed a crash when quickly switching between a sticker and text.

### Removed

* Removed the transparent color from the default color palette for text color and brush color.
* The `ToolbarController` class has been removed. An instance of `PhotoEditViewController` can now be used directly.

## [7.3.0]

### Fixed

* Fixed a layout issue in tool controllers when zooming is disabled.
* Fixed a memory issue while deserializing.
* Fixed an issue in the transform tool where the selected crop rectangle would sometimes not match the actual crop rectangle.
* Fixed an issue with the image renderer emitting a warning.

### Deprecated

* Serialization version 2.0.0 has been deprecated in this release and will not be supported by future versions of the SDK. Please use PhotoEditor SDK 8.0 with serialization version 3.0.0 instead.

## [7.2.0]

### Added

* `PhotoEditViewController` has a new property called `hasChanges`, which is `true` if a user applied any changes to a photo.
* `StickerToolControllerOptions` has a new property called `defaultStickerCategoryIndex` that can be used to specify the index of the initially selected sticker category.
* All `UICollectionViewCell` subclasses can be replaced with custom subclasses using `Configuration`'s `replaceClass(_:replacingClass:moduleName:)` method.

### Changed

* `TransformToolController` now sends a `.transformStraightenAngleChange` analytics event for changes of the straighten angle.
* `TransformToolController` now includes `.cropRect`, `.straightenAngle` and `.aspectRatio` attributes in its `.applyChanges` analytics event.
* When adding or removing a sticker a `.stickerAdd` or `.stickerRemove` analytics event is sent with the associated sticker as a `.sticker` attribute. Those events are also sent when adding or removing a sticker by tapping the undo/redo buttons.
* When adding or removing text a `.textAdd` or `.textRemove` analytics event is sent with the associated text as a `.text` attribute. Those events are also sent when adding or removing text by tapping the undo/redo buttons.
* `TextOptionsToolController` now includes `.text`, `.font`, `.textColor`, `.backgroundColor` and `.alignment` attributes in its `.applyChanges` analytics event.

## [7.1.1]

### Added

* `CameraViewControllerOptions` includes a `includeUserLocation` property now that is `true` by default. It can be used to stop the camera from asking for the user's location.

### Changed

* `LoggerProtocol` is now a `class` protocol because loggers are required to be reference types in the current implementation.

### Fixed

* Fixed several smaller bugs regarding deserialization.
* Sometimes the cropping area would be resized while modifying the straighten angle.
* Memory is not copied twice anymore during painting fragment restoration.
* The project compiles with Xcode 9 now.

## [7.1.0]

### Added

* The camera tags photos with their location now. This only works when using `Data` instances instead of `UIImage` instances to pass the photo around because those strip EXIF data. See `CameraViewController.dataCompletionBlock` for more details.
* We added a default confirmation dialog when dismissing the editor with changes pending. This can be changed or disabled by setting `PhotoEditViewControllerOptions.discardConfirmationClosure`.

### Changed

* The preview image is now automatically resized when a slider overlays the preview at the bottom, so that is always completely visible.
* We replaced the gaussian blur used in the focus tool with a lens blur like effect for much better looking photos. This does not work on the following older devices where we continue to use a gaussian blur due to performance issues:
	* iPad mini 1st, 2nd and 3rd gen
	* iPad 2nd and 3rd gen
	* iPhone 4S
	* iPod touch

### Fixed

* Fixed various issues with the serialization and deserialization features.
* Fixed an issue with different color spaces used for the preview and the thumbnails in the filter tool.
* Stickers now use anti-aliasing.
* The icon of the 'No Frame' cell in the frame tool is now tinted with the cell's `tintColor` to better match other cells.
* The label of the 'Magic' cell in the main menu is now tinted with the cell's `tintColor` when highlighted to better match other cells.
* The `Slider` now sends a `.touchUpInside` event after a `.touchDown` event has been sent without dragging in between.
* When adding a frame to a photo it would sometimes not completely cover the preview image (by about 1 px).
* When selecting a sticker with its `tintMode` set to `.none` and then dismissing the `StickerOptionsToolController`, the color option would be visible for a split second during the dismissal animation.
* The `BoxGradientView` and `CircleGradientView` now only draw themselves while visible, resulting in a minor performance improvement.
* Sprites didn't have the correct position for a split second when opening the frame tool.
* Sprites would be rotated in the wrong direction when the photo has been flipped.
* Text bounding box resizing would be inverted if the image has been flipped and rotated.

## [7.0.1]

### Added

* Added the ability to zoom using a pinch gesture within the `CameraViewController`.

### Fixed

* The icon of the 'No Overlay' option in the overlay tool was not using its @2x and @3x variants.
* Fixed a bug with the new filters and adjustments.
* Fixed interface rotation support.

## 7.0

### Changed

* **The SDK has been renamed from `imglyKit` to `PhotoEditorSDK` and all class prefixes have been renamed from `IMGLY` to `PESDK`. Likewise the CocoaPod has been renamed to `PhotoEditorSDK`.**
* We now ship the framework as a DMG file and include the dSYM file and bcsymbolmaps for better debugging. To integrate the dSYM into your final app, please follow the [updated manual integration guide](https://docs.photoeditorsdk.com/guides/ios/v7_1/introduction/getting_started).
* The `PESDK.shared` singleton has been removed. All of its properties are now static properties on the `PESDK` class.
* The default progress view must be set using the static `PESDK.progressView` property instead of the `Configuration` closure.
* The integrated fonts have been changed.
* The `AdjustToolController` has been improved for much better looking and faster adjustments.
* We were able to significantly decrease the size of our filter's lookup images while also improving the filter's performance.
* All asset names have been changed to a consistent naming scheme.
* The overall look and feel of the `FrameToolController` has been improved.
* Custom stickers are now added by setting `Sticker.all`, custom fonts are added by setting `FontImporter.all`, custom frames are added by setting `Frame.all` and custom overlays are added by setting `Overlay.all` instead of using the `Configuration` class.

### Added

* Serialization and deserialization has been added. Because of this many classes (e.g. `Sticker`, `Frame`) now require an `identifier`. For more information please see the documentation.
* The `OverlayToolController` tool has been added, which can be used to add overlays to a photo. Please see the documentation for more information.
* A custom logger with varying log levels was added. See documentation for more information.
* The `Sticker` class now supports `.colorized` as its `tintMode`. See the API documentation for more information.
* A 3:2 crop aspect has been added to `TransformToolController`'s defaults.
* An Emoticon and a Shapes sticker set has been added.
* `TextFontToolControllerOptions` now has a `fontSelectorViewConfigurationClosure` property and a `handleButtonConfigurationClosure` property for better customization.
* `StickerToolControllerOptions` now has a `stickerPreviewSize` property to adjust the size of the stickers in the preview.

### Removed

* The Toy sticker set has been removed.

### Fixed

* The button to show/hide the font selector view within the `TextFontToolController` now respects the view's `tintColor`.
* Full accessibility support has been restored.

## [6.5.4]

### Changed

* With the color picker expanded you can now tap anywhere above it to dismiss the color picker.
* We restored iOS 8 compatibility in this release. Please note that this only means that the framework can be integrated into a target with iOS 8 as its deployment target. However most classes and especially all view controllers are *not* available on iOS 8. We strongly advise that you disable any editing functions for users running iOS 8.

## [6.5.3]

### Changed

* We replaced the set of included fonts with much better looking fonts.

## [6.5.2]

### Fixed

* Fixed a crash when adding text. This was introduced by the Swift 3.1 compiler, see [SR-4393](https://bugs.swift.org/browse/SR-4393) for more details.

## [6.5.1]

### Fixed

* Fixed an issue with the `forceCropMode` setting.

## [6.5.0]

### Changed

* This version is compiled with Swift 3.1 and can be used with Xcode 8.3. It does not contain any other changes.

## [6.4.2]

### Fixed

* Fixed a scaling issue regarding backdrops.

## [6.4.1]

### Changed

* Sticker and text overlays have a bigger touch area so that they are easier to grab.

### Fixed

* Fixed a rare crash in `CameraViewController` that occurred when disabling focus lock while deallocating the controller.

## [6.4.0]

### Added

* Added a `discardConfirmationClosure` property to `PhotoEditViewControllerOptions` that is called when tapping the cancel button while changes are applied to the image.
* Zooming is now enabled in all tools except for the focus tool.

### Changed

* The overlay buttons (i.e. undo, redo, etc.) in the sticker, text and brush tool have been moved to the bottom.
* `StickerTintMode.tint` has been renamed to `StickerTintMode.solid`.
* `StickerTintMode.ink` has been renamed to `StickerTintMode.colorized`.
* When adding long text the created label breaks the text into multiple lines if the font size would be too small otherwise.
* `IMGLYSetLocalizationDictionary` has been replaced by `PESDK.localizationDirectory`.
* `IMGLYSetLocalizationBlock` has been replaced by `PESDK.localizationBlock`.
* `IMGLYSetBundleImageBlock` has been replaced by `PESDK.bundleImageBlock`.

### Fixed

* `DefaultProgressView` was not positioned correctly when used in an iPad Split View environment.
* The menu collection views were not positioned correctly when used in an iPad Split View environment.

## [6.3.1]

### Fixed

* Fixed warnings that are generated by SwiftLint 0.16.1.
* Moved the overlay image generation to a background queue, so that the progress view appears immediately when the user taps the save button.
* Fixed an ambiguous constraints warning in `CameraViewController`.
* Fixed an issue where the loading progress view would disappear while presenting the editor.

## [6.3.0]

### Added

* Added an option to change the default color of newly added text (see `TextToolControllerOptions.defaultTextColor`).
* A progress view is displayed while generating the preview image now.
* Tinting of stickers can be enabled on a per sticker basis (see `Sticker.tintMode`).
* Crop Aspect Ratios can be rotated by tapping on an already selected crop aspect (see `CropAspect.isRotatable`).

### Changed

* Changed the default icon of the transform tool.
* The magic tool displays a selected state when active.
* The `.straighten` option has been removed from the default options of `TextOptionsToolController` and `StickerOptionsToolController`.
* The `.flip` option has been removed from the default options of `TextOptionsToolController`.
* The alignment, bring to front, straighten and flip buttons within `TextOptionsToolController` were moved from an overlay into the menu.
* When resizing text the bounding box of the text becomes wider along with the font size.
* While the `BrushColorToolController` is active the user can continue to paint in the canvas.
* Editing text works by just single tapping on an already selected label instead of long pressing.
* The delete button within the brush tool was moved to the top, the bring to front button was moved from an overlay into the menu.
* The flip, straighten and bring to front buttons within `StickerOptionsToolController` were moved from an overlay into the menu.

### Fixed

* Fixed a crash that occurred when opening the transform tool very quickly after presenting the editor.
* Fixed an issue with the brush tool that occurred when opening the brush very quickly after presenting the editor.
* Fixed an issue where the progress view would not disappear when tapping the save button.
* Fixed an issue regarding the frame tool and rotated images.
* Fixed a bug where a crop would sometimes be applied although the user tapped the cancel button.
* When changing a text the changes are reflected in the label while typing.
* Fixed a crash in `CameraController`.

## [6.2.0]

### Added

* Support for wide color images. More information is available [here](https://medium.com/imgly/bringing-wide-color-to-photoeditor-sdk-a6ce8bb19ef7#.1nw0egenf).
* Added redo support and optimized undo support. Each time the sticker, text or brush tool is openend, a new undo/redo stack is created and local changes within those tools can be un- and redone. The `PhotoEditViewController` also has support for undo and redo and performs all undo or redo operations of the tools mentioned above combined, either step by step or tool by tool (see `PhotoEditViewControllerOptions.undoStepByStep`).

### Changed

* `M_PI` has been replaced by `.pi`, `FLT_EPSILON` has been replaced by `.ulpOfOne`
* Adding a new sticker from within the `StickerOptionsToolController` now opens the already instantiated `StickerToolController` that was passed to `PhotoEditViewController` instead of creating a new instance.
* The blur radius specified in the `FocusToolController` is now relative to the smaller side of the image instead of an absolute value, which means that the final output image looks like the preview image.

### Fixed

* Fixed a crash that occurred when setting `CameraViewControllerOptions.showFilters` to `false`.

## [6.1.4]

### Fixed

* Fixed a crash in `CameraViewController`.
* The `photoActionButtonConfigurationClosure` closure was not called initially.
* Changing the `tintColor` of the button to take a photo works now.

## [6.1.3]

### Added

* Added default intensities for blend modes.

### Changed

* Changed some `enum`s to lower case to match Swift 3.0 naming conventions.

### Fixed

* Fixed a memory leak in `CameraViewController`.
* Fixed a memory leak in `FrameToolController`.
* Fixed a scaling issue for backdrop images.
* Fixed the Podspec so that the resource bundle is not added twice to projects that use CocoaPods to integrate the SDK.

## [6.1.2]

### Added

* A new API to integrate the SDK into your analytics. See `AnalyticsClient` and `PESDK.shared.analytics` for more details.
* Added an option to set a backdrop image (`backdropImage`), a blend mode (`backdropBlendMode`) and an intensity (`backdropIntensity`) for it to `PhotoEditModel`.

## [6.1.1]

### Fixed

* Fixed a bug regarding image orientation that occurred when saving an unedited image. The image that was passed to `PhotoEditViewController` is now passed back to the delegate untouched when saving and image without any modifications.

## [6.1.0]

### Added

* Dynamic frames, which are generated during runtime and adjust to the image based on a given set of rules, similar to 9-patch images. See `CustomPatchFrameBuilder` for more information.

### Changed

* Frames participate in the bring-to-front behavior so that stickers, text and brush can be moved behind or in front of frames.
* Licensing has been improved to support multiple bundle identifiers within one license.

## [6.0.1]

### Added

* Licensing

## [6.0.0]

### Added

* Stickers can be grouped into individual categories and their color can be changed by the user.
* New initializers for `PhotoEditViewController`: `init(data: Data)`, `init(data: Data, configuration: Configuration)` and `init(data: Data, menuItems: [MenuItem], configuration: Configuration)` which allow passing an image as data in which case EXIF information can be preserved.
* `PhotoEditModel` is a Swift `struct` now. When using Objective-C you can use `IMGLYBoxedPhotoEditModel` instead where needed.

### Changed

* The crop UI has been completely revised and supports arbitrary rotations now.
* Updated the UI of the focus tool so that the user can change the width of the focus gradient.
* Updated the overall look and feel of the UI.
* Custom fonts can be added to the SDK.
* Many performance improvements.
* Asset datasources support remote sources out of the box now.
