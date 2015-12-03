//
//  DataManager.m
//  BestTravel
//
//  Created by dujing.com on 15/12/3.
//  Copyright © 2015年 Travel. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

static DataManager * manager = nil;

+ (DataManager *)sharedData
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[DataManager alloc] init];
    });
    return manager;
}

- (void)sharedDataWithURL:(NSString *)urlstr andBlock:(myBlock)block
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlstr parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        
        block(responseObject);
        
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        block(nil);
        
    }];
}


@end
