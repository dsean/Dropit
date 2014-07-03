//
//  DropitBehavior.h
//  Dropit
//
//  Created by 楊 德忻 on 2014/7/3.
//  Copyright (c) 2014年 楊 德忻. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior
- (void)addItem:(id<UIDynamicItem>)item;
- (void)removeItem:(id<UIDynamicItem>)item;
@end
