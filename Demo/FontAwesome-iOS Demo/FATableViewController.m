//
//  FATableViewController.m
//  FontAwesome-iOS Demo
//
//  Created by Rune Madsen on 2013-01-09.
//  Copyright (c) 2013 Rune Madsen. All rights reserved.
//  runmad.com
//

#import "FATableViewController.h"
#import "NSString+FontAwesome.h"
#import "UIFont+FontAwesome.h"
#import "FATableViewCell.h"

@interface FATableViewController ()

@end

@implementation FATableViewController

@synthesize iconIdentiferArray;
@synthesize iconSearchArray;
@synthesize searchBar;
@synthesize searchDisplayController;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.title = NSLocalizedString(@"Icon List", nil);
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 44)];
    self.searchBar.autocorrectionType = UITextAutocorrectionTypeNo;
    self.searchBar.showsScopeBar = YES;
    self.searchBar.delegate = self;
    self.tableView.tableHeaderView = self.searchBar;
	
	self.searchDisplayController = [[UISearchDisplayController alloc] initWithSearchBar:self.searchBar contentsController: self];
    self.searchDisplayController.delegate = self;
    self.searchDisplayController.searchResultsDataSource = self;
    self.searchDisplayController.searchResultsDelegate = self;

    if ([self.navigationController.navigationBar respondsToSelector:@selector(barTintColor)]) {
        [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
    } else {
        [self.navigationController.navigationBar setTintColor:[UIColor orangeColor]];
    }
	
	[self.tableView registerClass:[FATableViewCell class] forCellReuseIdentifier:@"Cell"];
	[self.navigationItem setTitle:[NSString stringWithFormat:@"%d Font Awesome icons", [self.iconIdentiferArray count]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [self.iconSearchArray count];
    } else {
        return [self.iconIdentiferArray count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    FATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", [NSString fontAwesomeIconStringForIconIdentifier:[self.iconSearchArray objectAtIndex:indexPath.row]], [self.iconSearchArray objectAtIndex:indexPath.row]];
    } else {
        cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", [NSString fontAwesomeIconStringForIconIdentifier:[self.iconIdentiferArray objectAtIndex:indexPath.row]], [self.iconIdentiferArray objectAtIndex:indexPath.row]];
    }

    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:cell.textLabel.text];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:16.0f] range:NSMakeRange(1, [cell.textLabel.text length] - 1)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontAwesomeFontOfSize:22.0f] range:NSMakeRange(0, 1)];
    [cell.textLabel setAttributedText:attributedString];

    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Search

- (void)searchDisplayController:(UISearchDisplayController *)controller didLoadSearchResultsTableView:(UITableView *)tableView {
	[tableView registerClass:[FATableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString {
    self.iconSearchArray = nil;
    NSMutableArray *tmpArray = [NSMutableArray array];
    for (int i = 0; [self.iconIdentiferArray count] > i; i++) {
        NSString *iconName = [self.iconIdentiferArray objectAtIndex:i];
        NSRange result = [iconName rangeOfString:searchString options:NSCaseInsensitiveSearch];
        if (result.location != NSNotFound) {
            [tmpArray addObject:iconName];
        }
    }
    self.iconSearchArray  = [NSArray arrayWithArray:tmpArray];
    return YES;
}

- (NSArray*)iconIdentiferArray {
    return [NSString fontAwesomeAvailableIcons];
}

@end
