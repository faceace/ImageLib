//
//  SKImageCell.h
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKImageCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageIV;

- (void)configCell:(NSString *)data;

@end
