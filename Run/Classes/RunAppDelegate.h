//
//  RunAppDelegate.h
//  Run
//
//  Created by Steven Stelmach on 1/2/10.
//  Copyright Harvard University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EAGLView;

@interface RunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EAGLView *glView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EAGLView *glView;

@end

