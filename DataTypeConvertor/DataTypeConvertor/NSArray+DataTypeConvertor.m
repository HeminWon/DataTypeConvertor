//
//  NSArray+DataTypeConvertor.m
//  DataTypeConvertor
//
//  Created by HeminWon on 2017/3/4.
//  Copyright © 2017年 Hm. All rights reserved.
//

#import "NSArray+DataTypeConvertor.h"
#import "DataTypeConvertor.h"

@implementation NSArray (DataTypeConvertor)

- (NSArray *)thsArrayAtIndex:(NSUInteger)index {
    return [DataTypeConvertor arrayWithArray:self atIndex:index];
}
- (NSString *)thsStringAtIndex:(NSUInteger)index {
    return [DataTypeConvertor stringWithArray:self atIndex:index];
}
- (NSNumber *)thsNumberAtIndex:(NSUInteger)index {
    return [DataTypeConvertor numberWithArray:self atIndex:index];
}
- (NSDictionary *)thsDictionaryAtIndex:(NSUInteger)index {
    return [DataTypeConvertor dictWithArray:self atIndex:index];
}

@end
