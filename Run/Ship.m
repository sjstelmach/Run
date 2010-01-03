//
//  Ship.m
//  Run
//
//  Created by Steven Stelmach on 1/2/10.
//  Copyright 2010 Harvard University. All rights reserved.
//

#import "Ship.h"

@implementation Ship

@synthesize angle;

-(Ship *) init{
	self = [super init];
	
	x = 0.0f;
	y = -1.0f;
	z = -3.0f;
	
	return self;
}

-(void)render{	
	GLfloat shipVertices[] = {
		-0.5f, 0.0f, 0.5f,
		0.0f, 0.0f, -0.5f,
		0.0f, 0.0f, 0.2f,
		0.5f, 0.0f, 0.5f,		
	};

	glLoadIdentity();
	glTranslatef(x, y, z);
	glRotatef(self.angle , 0.0f, 0.0f, 1.0f);
	glScalef(0.8f, 0.8f, 0.8f);
    glEnableClientState(GL_VERTEX_ARRAY);
		glColor4f(1.0, 0.0, 0.0, 1.0);
		glVertexPointer(3, GL_FLOAT, 0, shipVertices);
		glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    glDisableClientState(GL_VERTEX_ARRAY);
}

-(void) setTarget: (CGPoint) tar{
	NSLog(@"setting target to something %f", tar.x);
	x = tar.x/320*2-1;
}

@end
