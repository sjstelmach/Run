//
//  GLViewController.m
//  Run
//
//  Created by Steven Stelmach on 1/2/10.
//  Copyright Harvard University 2010. All rights reserved.
//

#import "GLViewController.h"
#import "ConstantsAndMacros.h"
#import "OpenGLCommon.h"
#import <math.h>

@implementation GLViewController

- (void)drawView:(UIView *)theView
{
	static float angle = 0;
	
    glLoadIdentity();
    glClearColor(0.0, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	[ship render];
	
	ship.angle = 10*sin(angle);
	angle += .1;
}

-(void)setupView:(GLView*)theView
{
	view = theView;
	const GLfloat zNear = 0.01, zFar = 1000.0, fieldOfView = 45.0; 
	GLfloat size; 
	glEnable(GL_DEPTH_TEST);
	glMatrixMode(GL_PROJECTION); 
	size = zNear * tanf(DEGREES_TO_RADIANS(fieldOfView) / 2.0); 
	CGRect rect = view.bounds; 
	glFrustumf(-size, size, -size / (rect.size.width / rect.size.height), size / 
			   (rect.size.width / rect.size.height), zNear, zFar); 
	glViewport(0, 0, rect.size.width, rect.size.height);  
	glMatrixMode(GL_MODELVIEW);
	
	glLoadIdentity(); 
	
	ship = [[Ship alloc] init];
}
- (void)dealloc 
{
    [super dealloc];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *touch = [[touches allObjects] objectAtIndex:0];
	[ship setTarget: [touch locationInView: view]];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *touch = [[touches allObjects] objectAtIndex:0];
	[ship setTarget: [touch locationInView: view]];	
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
	
}

@end
