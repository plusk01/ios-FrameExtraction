//
//  OpenCVWrapper.h
//  FrameExtraction
//
//  Created by Parker Lusk on 3/31/18.
//  Copyright © 2018 Wanderlusk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OpenCVWrapper : NSObject
- (NSString *) openCVVersionString;

- (UIImage *) makeGray: (UIImage *) image;
@end
