//
//  GridDataSource.m
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import "GridDataSource.h"

@interface GridDataSource ()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) CollectionViewCellConfigureBlock configureCellBlock;

@end


@implementation GridDataSource


#pragma mark - Initialization Functions

- (id)init
{
    return nil;
}

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock
{
    self = [super init];
    
    if (self) {
        self.items = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = [aConfigureCellBlock copy];
    }
    
    return self;
}


#pragma mark - UICollectionViewDataSource Functions

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = nil;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    id item = [self.items objectAtIndex:indexPath.row];
    
    self.configureCellBlock(cell, item);
    return cell;
}


@end
