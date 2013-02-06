//
//  FAAppDelegate.h
//  FontAwesome-Mac Demo
//
//  Created by Thibaut Jarosz on 06/02/2013.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FAAppDelegateOSX : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSSearchField *searchField;
@property (strong, readonly) NSArray *iconIdentiferArray;
@property (weak) IBOutlet NSArrayController *arrayController;

@end
