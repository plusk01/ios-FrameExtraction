//
//  OpenCVWrapper.m
//  FrameExtraction
//
//  Created by Parker Lusk on 3/31/18.
//  Copyright © 2018 Wanderlusk. All rights reserved.
//

#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#import <opencv2/imgproc/imgproc.hpp>
#import "OpenCVWrapper.h"

using namespace cv;

@implementation OpenCVWrapper

- (NSString *) openCVVersionString
{
    return [NSString stringWithFormat:@"OpenCV Version %s", CV_VERSION];
}

- (UIImage *) makeGray: (UIImage *) image
{
    // Convert UIImage to cv::Mat
    cv::Mat inputImage;
    UIImageToMat(image, inputImage);
    
    // if input image has only one channel, then return the image.
    if (inputImage.channels() == 1) return image;

    // convert the default OpenCV BGR format to greyscale
    cv::Mat grey;
    cv::cvtColor(inputImage, grey, CV_BGR2GRAY);

    // convert the greyscale cv::Mat to UIImage and return it
    return MatToUIImage(grey);
}
@end
