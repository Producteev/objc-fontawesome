//
//  NSFont+FontAwesome.m
//  FontAwesome-ObjC Demo
//
//  Created by Thibaut Jarosz on 06/02/2013.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#if	!TARGET_OS_IPHONE

#import "NSFont+FontAwesome.h"
#import "NSString+FontAwesome.h"

@implementation NSFont (FontAwesome)

+ (NSFont*)iconicFontOfSize:(CGFloat)size
{
    return [NSFont fontAwesomeFontOfSize:size];
}

+ (NSFont*)fontAwesomeFontOfSize:(CGFloat)size;
{
    return [NSFont fontWithName:kFontAwesomeFamilyName size:size];
}

@end

#endif