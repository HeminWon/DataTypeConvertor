//
//  DataTypeConvertor.m
//  DataTypeConvertor
//
//  Created by HeminWon on 2017/3/4.
//  Copyright © 2017年 Hm. All rights reserved.
//

#import "DataTypeConvertor.h"

#define DataTypeConvertorCheckType(INSTANCE, TYPE) \
        [INSTANCE isKindOfClass:TYPE] ? INSTANCE : nil

@implementation DataTypeConvertor
#pragma mark - NSArray
+ (NSArray *)arrayWithArray:(NSArray *)array atIndex:(NSUInteger)index {
    if (index >= array.count) {
        return nil;
    }
    return DataTypeConvertorCheckType(array[index], [NSArray class]);
}

+ (NSString *)stringWithArray:(NSArray *)array atIndex:(NSUInteger)index {
    if (index >= array.count) {
        return nil;
    }
    NSString *str = DataTypeConvertorCheckType(array[index], [NSString class]);
    if (str) {
        return str;
    }
    NSNumber *number = DataTypeConvertorCheckType(array[index], [NSNumber class]);
    if (number) {
        return [NSString stringWithFormat:@"%@", number];
    }
    return nil;
}

+ (NSNumber *)numberWithArray:(NSArray *)array atIndex:(NSUInteger)index {
    if (index >= array.count) {
        return nil;
    }
    NSNumber *number = DataTypeConvertorCheckType(array[index], [NSNumber class]);
    if (number) {
        return number;
    }
    NSString *str = DataTypeConvertorCheckType(array[index], [NSString class]);
    if (str) {
        return @(str.integerValue);
    }
    return nil;
}

+ (NSDictionary *)dictWithArray:(NSArray *)array atIndex:(NSUInteger)index {
    if (index >= array.count) {
        return nil;
    }
    return DataTypeConvertorCheckType(array[index], [NSDictionary class]);
}

#pragma mark - NSDictionary
+ (NSArray *)arrayWithDictionary:(NSDictionary *)dict forKey:(id)key {
    return DataTypeConvertorCheckType(dict[key], [NSDictionary class]);
}

+ (NSString *)stringWithDictionary:(NSDictionary *)dict forKey:(id)key {
    NSString *str = DataTypeConvertorCheckType(dict[key], [NSString class]);
    if (str) {
        return str;
    }
    NSNumber *number = DataTypeConvertorCheckType(dict[key], [NSNumber class]);
    if (number) {
        return [NSString stringWithFormat:@"%@", number];
    }
    return nil;
}

+ (NSNumber *)numberWithDictionary:(NSDictionary *)dict forKey:(id)key {
    NSNumber *number = DataTypeConvertorCheckType(dict[key], [NSNumber class]);
    if (number) {
        return number;
    }
    NSString *str = DataTypeConvertorCheckType(dict[key], [NSString class]);
    if (str) {
        return @([str integerValue]);
    }
    return nil;
}

+ (NSDictionary *)dictWithDictionary:(NSDictionary *)dict forKey:(id)key {
    return DataTypeConvertorCheckType(dict[key], [NSDictionary class]);
}

#pragma mark - NSArray && NSDictionary
+ (NSArray *)arrayWithObject:(id)array {
    return DataTypeConvertorCheckType(array, [NSArray class]);
}

+ (NSDictionary *)dictWithObject:(id)dict {
    return DataTypeConvertorCheckType(dict, [NSDictionary class]);
}

@end
