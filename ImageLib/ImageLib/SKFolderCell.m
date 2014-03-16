//
//  SKFolderCell.m
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import "SKFolderCell.h"

static const GLfloat Image_Radius = 6;

@implementation SKFolderCell


#pragma mark - Initialization

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)configCell:(NSString *)data
{
    //mask round corner
    self.coverIV.layer.cornerRadius = Image_Radius;
    self.coverIV.layer.masksToBounds = YES;
    
    self.coverIV.image = [UIImage imageNamed:@"cover_placeholder.jpg"];
    self.nameLB.text = data;
    self.sizeLB.text = @"8 images";
}


#pragma mark - Actions

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end
