//
//  UIFont+FontAwesome.m
//  FontAwesome-iOS Demo
//
//  Created by Alex Usbergo on 1/16/13.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#if	TARGET_OS_IPHONE

#import "UIFont+FontAwesome.h"
#import "NSString+FontAwesome.h"

@implementation UIFont (FontAwesome)

/* Returns the FontAwesome iconic font */
+ (UIFont*)iconicFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:kFontAwesomeFamilyName size:size];
}

@end

#endif
