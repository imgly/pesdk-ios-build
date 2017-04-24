<p align="center">
  <img src="https://camo.githubusercontent.com/4c4c8d90e242619972a11baa3c33acaaeb9bad00/687474703a2f2f692e696d6775722e636f6d2f666748314852742e706e67" />
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

Our SDK provides tools for creating photo applications for iOS with a big variety of filters that can be previewed in real-time. Unlike other apps that allow a live preview of filters, the Photo Editor SDK even provides a live preview when using high-resolution images. Version 3.0 removes any resolution limits, is written in Swift and allows for easy customization.
Also we added multiple sticker and text support in a Non-destructive manner. That means that the User can change the position, size, scale, and z-order at any time.

<div class="documentation__disclaimer">
<h4>License Terms</h4>
Make sure you have a commercial license before releasing your app.
A commercial license is required for any app or service that has any form of monetization: This includes free apps with in-app purchases or ad supported applications. Please contact us if you want to purchase the commercial license.
</div>

## Features

* 62 stunning build in filters to choose from.
* Native code. Our backend is Core Image based, therefore we dodge all the nasty OpenGL problems other frameworks face.
* iPad support. Since version two uses auto layout, it's easy to compile your app for iPhone and iPad. No more ugly nested iPhone app on your iPad.
* Design filters in photoshop! Before you had to tweak values in code or copy & paste them from photoshop or your favorite image editor. With our response technology that is a thing of the past. Design your filter in photoshop, once you are done apply it onto the provided identity image. That will 'record' the filter response. Save it, add it as new filter, done!
* Swift. Keeping up with time, we used Swift to code the img.ly SDK, leading to leaner easier code.
* Live preview, as with version one, filters can be previewed in the camera preview.
* Low memory footprint, with version two we were able to reduce the memory footprint massively.
* Non-destructive. Don't like what you did? No problem, just redo or even discard it.
* Highly customizable. Style the UI as you wish to match your needs.
* Objective-C support.
* FAST, we re-implemented our renderer, and we made it super fast !

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

pod 'imglyKit', '~> 3.0'
```

Then run `pod install`.

## Manually

If you prefer not to use either of the aforementioned dependency manager, you can integrate
PhotoEditorSDK into your project manually via a dynamic framework.

Just drag `imglyKit.framework` into the `Embedded Binaries` section of your target:

<p><img style="display:block" src="https://www.photoeditorsdk.com/assets/images/documentation/ios/embedded-binaries.png"></p>

# Usage
Our SDK provides two main view controllers. One to work with the camera, the other to
edit an image. In the following section we will describe how these are set up and how to embed them
within an `UINavigationController`.

## Add a CameraViewController

The `CameraViewController` is out to provide a preview of the photo that can be taken.
Above that it provides UI elements to perform setting changes as in, setting the flash, choosing the camera,
and last but not least choosing a filter. The set up is rather easy.

```
let cameraViewController = CameraViewController()
presentViewController(cameraViewController, animated: true, completion: nil)
```

The `CameraViewController` has a  completion block property. When it is set to `nil`, the taken photo is passed onto
the `EditorViewController`.

## Add an EditorViewController

The `EditorViewController` is out to provide several tool to edit an image, i.e. crop, filter, adjustment, etc.
All these changes are Non-destructive. That means, until the user hit the accept button on the main editor, every change
can be altered. A stickers, position can be changed, the color of a text, the crop area, everything.
To present an `EditorViewController` just add these few lines:

```
let sampleImage = UIImage(named: "sample_image")
let photoEditViewController = PhotoEditViewController(photo: sampleImage!)
let toolStackController = ToolStackController(photoEditViewController: photoEditViewController)
toolStackController.delegate = self

presentViewController(toolStackController, animated: true, completion: nil)
```

The delegate of the `ToolStackController` can be used to be notified when the user cancels the edit, the edit fails, or the edit is done. In the last case the `func toolStackController(toolStackController: ToolStackController, didFinishWithImage image: UIImage)` method is called.

## Embed in an UINavigationController

The controllers provided with the SDK, can be embedded within a `UINavigationController`. The following code demonstrates how.

```
let sampleImage = UIImage(named: "sample_image")
let photoEditViewController = CustomPhotoEditViewController(photo: sampleImage!)

let toolStackController = ToolStackController(photoEditViewController: photoEditViewController)
toolStackController.navigationItem.title = "Editor"
toolStackController.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Cancel, target: photoEditViewController, action: "cancel:")
toolStackController.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Save, target: photoEditViewController, action: "save:")
toolStackController.delegate = self

let navigationController = UINavigationController(rootViewController: toolStackController)
navigationController.navigationBar.translucent = false
navigationController.navigationBar.barStyle = .Black

presentViewController(navigationController, animated: true, completion: nil)
```

To try these examples, and find out about more options please take a look at the provided sample project.

# Further reading

For a more detailed documentation, please see our [full documentation](https://www.photoeditorsdk.com/documentation/ios/getting-started)

## Author

9elements GmbH, [@9elements](https://twitter.com/9elements), [http://www.9elements.com](http://www.9elements.com)
