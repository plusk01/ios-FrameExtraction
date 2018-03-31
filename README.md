FrameExtraction iOS App
=======================

This app is based on a [tutorial](https://medium.com/ios-os-x-development/ios-camera-frames-extraction-d2c0f80ed05a) on using Swift and AVFoundation for extracting and displaying frames of the camera in real-time.

The tutorial was written for Swift 3, but this repo is using Swift 4.0

## CocoaPods ##

This project uses CocoaPods to pull in the dependency to OpenCV. A good resource for using cocoapods for opencv, and connecting the C++ library through Objective-C++ into Swift can be found [here](https://blog.kickview.com/opencv-setup-on-ios/).

For a tutorial that does this *without* using CocoaPods, see [here](https://medium.com/@borisohayon/ios-opencv-and-swift-1ee3e3a5735b)

## Simple OpenCV Image Processing ##

I followed [this](https://sriraghu.com/2017/06/04/computer-vision-in-ios-swiftopencv/) tutorial which shows how to convert from a `UIImage` to a `cv::Mat`. In addition, I had to add the implementation for the `UIImageToMat` and `MatToUIImage` functions myself due to linker (`ld`) errors, as described in [this](https://stackoverflow.com/a/43817268) SO post. It's kind of seems strange that the `ios_conversions.mm` has to be manually added, but it does make sense as it requires `Foundation` headers and an Objective-C++ compiler. It **could be** better documented however... I wonder if I hadn't used CocoaPods if that source file would have been copied/compiled automatically for me.
