//
//  NSDictionary+DataTypeConvertor.m
//  DataTypeConvertor
//
//  Created by HeminWon on 2017/3/4.
//  Copyright © 2017年 Hm. All rights reserved.
//

#import "NSDictionary+DataTypeConvertor.h"
#import "DataTypeConvertor.h"

@implementation NSDictionary (DataTypeConvertor)

- (NSArray *)thsArrayForKey:(id)key {
    return [DataTypeConvertor arrayWithDictionary:self forKey:key];
}

- (NSString *)thsStringForKey:(id)key {
    return [DataTypeConvertor stringWithDictionary:self forKey:key];
}

- (NSNumber *)thsNumberForKey:(id)key {
    return [DataTypeConvertor numberWithDictionary:self forKey:key];
}

- (NSDictionary *)thsDictionaryForKey:(id)key {
    return [DataTypeConvertor dictWithDictionary:self forKey:key];
}
@end
