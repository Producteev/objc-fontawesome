//
//  FAAppDelegate.m
//  FontAwesome-Mac Demo
//
//  Created by Thibaut Jarosz on 06/02/2013.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#import "FAAppDelegateOSX.h"
#import "NSString+FontAwesome.h"
#import "NSFont+FontAwesome.h"

@interface FAAppDelegateOSX () <NSTableViewDelegate,NSTableViewDataSource>

@end

@implementation FAAppDelegateOSX

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (NSArray *)iconIdentiferArray
{
    static NSArray *iconIdentiferArray = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        iconIdentiferArray = [[[NSString fontAwesomeIconIdentifierToEnumDictionary] allKeys] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    });
    
    return iconIdentiferArray;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    static NSString *CellID = @"CellID";
    
    NSString *iconIdentifier = [_arrayController.arrangedObjects objectAtIndex:row];
    NSString *stringValue = [NSString stringWithFormat:@"%@ %@", [NSString fontAwesomeIconStringForIconIdentifier:iconIdentifier], iconIdentifier];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:stringValue];
    [attributedString addAttribute:NSFontAttributeName value:[NSFont systemFontOfSize:16] range:NSMakeRange(1, stringValue.length - 1)];
    [attributedString addAttribute:NSFontAttributeName value:[NSFont iconicFontOfSize:16] range:NSMakeRange(0, 1)];
    
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:CellID owner:self];
    cellView.textField.attributedStringValue = attributedString;
    return cellView;
}

@end
