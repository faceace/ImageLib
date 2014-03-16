//
//  ArrayDataSource.m
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import "ArrayDataSource.h"
#import "Constants.h"

@interface ArrayDataSource ()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;
@property (nonatomic) BOOL hasSection;
@property (nonatomic) BOOL needChangeColor;

@end


@implementation ArrayDataSource


#pragma mark - Initialization Functions

- (id)init
{
    return nil;
}


- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock
{
    self = [self initWithItems:anItems cellIdentifier:aCellIdentifier configureCellBlock:aConfigureCellBlock hasSection:NO needChangeColor:NO];
    return self;
}

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock hasSection:(BOOL)has needChangeColor:(BOOL)need
{
    self = [super init];
    
    if (self) {
        self.items = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = [aConfigureCellBlock copy];
        self.hasSection = has;
        self.needChangeColor = need;
    }
    
    return self;
}


#pragma mark - UITableViewDataSource Functions

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.hasSection) {
        return self.items[(NSUInteger) indexPath.section][(NSUInteger) indexPath.row];
        //return [[self.items objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    } else {
        return self.items[(NSUInteger) indexPath.row];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (self.hasSection) {
        return self.items.count;
    } else {
        return 1;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.hasSection) {
        return [[self.items objectAtIndex:section] count];
    } else {
        return self.items.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    if ( NSClassFromString (@"UIActivityViewController") ) {
        cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    }

    id item = [self itemAtIndexPath:indexPath];
    
    if (self.needChangeColor) {
        if ((indexPath.section + indexPath.row) % 2 == 0) {
            [cell.contentView setBackgroundColor:[UIColor whiteColor]];
        } else {
            [cell.contentView setBackgroundColor:UIColorFromRGB(0xF5F5F5)];
        }
    }

    self.configureCellBlock(cell, item);
    return cell;
}


@end
