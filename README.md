<p align="center">
  <img src="http://static.photoeditorsdk.com/logo.png" />
</p>
<p align="center">
	<a href="https://cocoapods.org/pods/imglyKit">
    <img src="https://img.shields.io/cocoapods/v/imglyKit.svg" alt="CocoaPods Compatible">
  </a>
	<a href="http://twitter.com/PhotoEditorSDK">
    <img src="https://img.shields.io/badge/twitter-@PhotoEditorSDK-blue.svg?style=flat" alt="Twitter">
  </a>
  <a target="_blank" href="https://pesdk-slack.herokuapp.com/">
    <img src="https://pesdk-slack.herokuapp.com/badge.svg" alt="Slack Status" />
    </a>
</p>

# About Photo Editor SDK for iOS

## Overview

Our SDK provides tools for adding photo editing capabilities to your iOS application with a big variety of filters that can be previewed in realtime. Unlike other apps that allow a live preview of filters, the Photo Editor SDK even provides a live preview when using high-resolution images. We do not have any resolution limits, the framework is written in Swift and allows for easy customization.
Additionally we support adding stickers and text in a non-destructive manner, which means that you can change the position, size, scale and order at any given time, even after applying other effects or cropping the photo.

<div class="documentation__disclaimer">
<h4>License Terms</h4>
Make sure you have a commercial license before releasing your app.
A commercial license is required for any app or service that has any form of monetization: This includes free apps with in-app purchases or ad supported applications. Please contact us if you want to purchase the commercial license.
</div>

## Features

* 62 stunning built in filters to choose from.
* Native code: Our rendering engine is based on Apple's Core Image, therefore we dodge all the nasty OpenGL problems other frameworks face.
* iPad support: The Photo Editor SDK uses auto layout for its views and adapts to each screen size - iPhone or iPad.
* Design filters in Photoshop: With most photo editing frameworks you have to tweak values in code or copy & paste them from Photoshop or your favorite image editor. With our response technology that is a thing of the past. Design your filter in Photoshop, once you are done apply it onto the provided identity image. That will 'record' the filter response - save it, add it as new filter, done!
* Swift: Keeping up with time, we chose Swift as the main development language of the Photo Editor SDK, leading to leaner easier code.
* Live preview: Filters can be previewed directly in the camera preview.
* Low memory footprint: We were able to reduce our memory footprint significantly.
* Non-destructive: Don't like what you did? No problem, just redo or even discard it.
* Highly customizable: Style the UI as you wish to match your needs.
* Objective-C support: All of our public API is Objective-C compatible.
* Fast: Our renderer uses hardware acceleration and the GPU, which makes it lightning fast.

### New in Version 6.0

* Updated UI: We've made some UI changes leading to an even better user experience.
* Lots of refactoring and stability improvements
* Updated Sticker Tool: We now support multiple sticker categories and sticker coloring.
* Updated Focus Tool: You can finally adjust the gradient and we've moved from a gaussian blur to a box blur for an even better result.
* Transform Tool: We've completely redesigned and rewritten our crop tool. You can now not only crop your image, but also straighten it.

<p><img style="display:block" src="https://www.photoeditorsdk.com/assets/images/documentation/ios/product.png"></p>

## License

Please see [LICENSE](https://github.com/imgly/imgly-sdk-ios-private/blob/master/LICENSE) for licensing details.

# Installation

## CocoaPods

PhotoEditorSDK is available via CocoaPods. If you're new to CocoaPods, [this Getting Started Guide will help you](https://guides.cocoapods.org/using/getting-started.html). CocoaPods is the preferred and simplest way to use the PhotoEditorSDK.

**Important:** Please make sure that you have a CocoaPods version >= 0.39.0 installed. You can check your version of CocoaPods with `pod --version`.

Here's what you have to add to your `Podfile`:

```
use_frameworks!

pod 'imglyKit', '~> 6.3'
```

Then run `pod install`.

## Manually

If you prefer not to use either of the aforementioned dependency manager, you can integrate
PhotoEditorSDK into your project manually via a dynamic framework.

Just drag `imglyKit.framework` into the `Embedded Binaries` section of your target:

<p><img style="display:block" src="https://www.photoeditorsdk.com/assets/images/documentation/ios/embedded-binaries.png"></p>

# Usage
Our SDK provides two main view controllers. One to work with the camera, the other to
edit an image. In the following section we will describe how these are set up and how to embed them within an `UINavigationController`.

## Add a CameraViewController

The `CameraViewController` class is responsible for displaying an interface to interact with the camera. It provides user interface elements among others to enable the flash, toggle the camera and choose a filter. All you have to do is the following:

```
let cameraViewController = CameraViewController()
present(cameraViewController, animated: true, completion: nil)
```

The `CameraViewController` has a `completionBlock` property. When it is set to `nil`, the taken photo is passed to the `PhotoEditViewController`, which is then presented modally.

## Add a PhotoEditViewController

The `PhotoEditViewController` class is responsible for presenting and rendering an image. It is designed to work together with a `ToolbarController`, which is responsible to presenting and dismissing the various tool controllers.

To present an `PhotoEditViewController` just add these few lines:

```
let sampleImage = UIImage(named: "sample_image")

let photoEditViewController = PhotoEditViewController(photo: sampleImage!)
photoEditViewController.delegate = self

let toolbarController = ToolbarController()
toolbarController.push(photoEditViewController, animated: false)

present(toolbarController, animated: true, completion: nil)
```

The delegate of the `PhotoEditViewController` can be used to be notified when the user cancels the edit, the edit fails, or the edit is done. In the last case the `func photoEditViewController(_ photoEditViewController: PhotoEditViewController, didSave image: UIImage, and data: Data)` method is called.

## Embed in an UINavigationController

The controllers provided with the SDK can be embedded in an `UINavigationController`. The following code demonstrates how.

```
let sampleImage = UIImage(named: "sample_image")

let photoEditViewController = PhotoEditViewController(photo: sampleImage!)
photoEditViewController.delegate = self

let toolbarController = ToolbarController()
toolbarController.push(photoEditViewController, animated: false)

let navigationController = UINavigationController(rootViewController: toolbarController)
navigationController.navigationBar.barStyle = .black
navigationController.navigationBar.isTranslucent = false

present(navigationController, animated: true, completion: nil)
```

To try these examples, and find out about more options please take a look at the sample project provided [here](https://github.com/imgly/imgly-sdk-ios).

# Further reading

For a more detailed documentation, please see our [full documentation](https://www.photoeditorsdk.com/documentation/ios/getting-started)

## Author

9elements GmbH, [@PhotoEditorSDK](https://twitter.com/PhotoEditorSDK), [https://www.photoeditorsdk.com](https://www.photoeditorsdk.com)
