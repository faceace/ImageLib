//
//  SKFolderCell.h
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKFolderCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLB;
@property (weak, nonatomic) IBOutlet UIImageView *coverIV;
@property (weak, nonatomic) IBOutlet UILabel *sizeLB;

- (void)configCell:(NSString *)data;

@end
