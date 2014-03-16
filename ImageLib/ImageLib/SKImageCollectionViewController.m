//
//  SKImageCollectionViewController.m
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import "SKImageCollectionViewController.h"
#import "GridDataSource.h"
#import "SKImageCell.h"

@interface SKImageCollectionViewController ()

@property (nonatomic, strong) GridDataSource *itemsArrayDataSource;

@end



@implementation SKImageCollectionViewController


#pragma mark - Initialization

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)initCollectionDataSource
{
    CollectionViewCellConfigureBlock configureCell = ^(SKImageCell *cell, NSString *item) {
        [cell configCell:item];
    };
    
    NSArray *images = [[NSArray alloc] initWithObjects:@"Image1", @"Image2", @"Image3", @"Image4", nil];
    self.itemsArrayDataSource = [[GridDataSource alloc] initWithItems:images
                                                        cellIdentifier:@"grid"
                                                    configureCellBlock:configureCell];
    
    self.collectionView.dataSource = self.itemsArrayDataSource;
}


#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initCollectionDataSource];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Collection view delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}



@end
