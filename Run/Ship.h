//
//  Ship.h
//  Run
//
//  Created by Steven Stelmach on 1/2/10.
//  Copyright 2010 Harvard University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import "ConstantsAndMacros.h"
#import "OpenGLCommon.h"

#define SHIP_WIDTH 10.0
#define SHIP_HEIGHT 10.0

@interface Ship : NSObject {
	GLfloat x, y, z;
	GLfloat deltaX, deltaY, deltaZ;
	GLfloat angle;
}

-(void)render;
-(void) setTarget: (CGPoint) tar;
@property GLfloat angle;

@end
