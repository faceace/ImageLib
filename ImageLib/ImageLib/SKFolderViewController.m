//
//  SKFolderViewController.m
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import "SKFolderViewController.h"
#import "ArrayDataSource.h"
#import "SKFolderCell.h"

@interface SKFolderViewController ()

@property (nonatomic, strong) ArrayDataSource *itemsArrayDataSource;

@end



@implementation SKFolderViewController


#pragma mark - Initialization

- (void)initTableDataSource
{
    TableViewCellConfigureBlock configureCell = ^(SKFolderCell *cell, NSString *item) {
        [cell configCell:item];
    };
    
    NSArray *folders = [[NSArray alloc] initWithObjects:@"Folder 1", @"Folder 2", @"Folder 3", @"Folder 4", nil];
    self.itemsArrayDataSource = [[ArrayDataSource alloc] initWithItems:folders
                                                        cellIdentifier:@"cell"
                                                    configureCellBlock:configureCell hasSection:NO needChangeColor:YES];
    
    self.tableView.dataSource = self.itemsArrayDataSource;
}


#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initTableDataSource];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier: @"showimage" sender: self];
}


#pragma mark - Actions

-(IBAction)gotoNext:(id)sender{
    
}


@end
