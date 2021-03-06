
//
//  Peoper.m
//  Singleton-SpiderMan
//
//  Created by Anchlate Lee on 16/5/1.
//  Copyright © 2016年 Anchlate. All rights reserved.
//

#import "Peoper.h"

@implementation Peoper
static id _instance;

+ (id)allocWithZone:(struct _NSZone *)zone
{
//    if (_instance == nil) { // 防止频繁加锁
//        @synchronized(self) {
//            if (_instance == nil) { // 防止创建多次
//                _instance = [super allocWithZone:zone];
//            }
//        }
//    }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

+ (id)sharePeoper
{
//    if (_instance == nil) { // 防止频繁加锁
//        @synchronized(self) {
//            if (_instance == nil) { // 防止创建多次
//                _instance = [[self alloc] init];
//            }
//        }
//    }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}

@end
