//
//  Shader.fsh
//  Run
//
//  Created by Steven Stelmach on 1/2/10.
//  Copyright Harvard University 2010. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
	gl_FragColor = colorVarying;
}
