//
//  ArrayDataSource.h
//  ImageLib
//
//  Created by Yan Li on 16/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TypeDefinitions.h"


@interface ArrayDataSource : NSObject <UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock hasSection:(BOOL)has needChangeColor:(BOOL)need;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
