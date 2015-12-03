//
//  DataManager.h
//  BestTravel
//
//  Created by dujing.com on 15/12/3.
//  Copyright © 2015年 Travel. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^myBlock)(id block);

@interface DataManager : NSObject

@property (nonatomic, strong)myBlock block;

+ (DataManager *)sharedData;

- (void)sharedDataWithURL:(NSString *)urlstr andBlock:(myBlock)block;

@end
