//
//  RunAppDelegate.m
//  Run
//
//  Created by Steven Stelmach on 1/2/10.
//  Copyright Harvard University 2010. All rights reserved.
//

#import "RunAppDelegate.h"
#import "EAGLView.h"

@implementation RunAppDelegate

@synthesize window;
@synthesize glView;

- (void) applicationDidFinishLaunching:(UIApplication *)application
{
	[glView startAnimation];
}

- (void) applicationWillResignActive:(UIApplication *)application
{
	[glView stopAnimation];
}

- (void) applicationDidBecomeActive:(UIApplication *)application
{
	[glView startAnimation];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	[glView stopAnimation];
}

- (void) dealloc
{
	[window release];
	[glView release];
	
	[super dealloc];
}

@end
