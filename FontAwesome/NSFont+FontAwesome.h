//
//  NSFont+FontAwesome.h
//  FontAwesome-ObjC Demo
//
//  Created by Thibaut Jarosz on 06/02/2013.
//  Copyright (c) 2013 Thibaut Jarosz & Alex Usbergo. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN

#if	!TARGET_OS_IPHONE

#import <Cocoa/Cocoa.h>

@interface NSFont (FontAwesome)

+ (NSFont*)iconicFontOfSize:(CGFloat)size __deprecated;

/* Returns the FontAwesome iconic font */
+ (NSFont*)fontAwesomeFontOfSize:(CGFloat)size;

@end

#endif
