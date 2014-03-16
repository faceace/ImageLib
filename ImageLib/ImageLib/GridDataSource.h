//
//  GridDataSource.h
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TypeDefinitions.h"

@interface GridDataSource : NSObject <UICollectionViewDataSource>

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

@end
