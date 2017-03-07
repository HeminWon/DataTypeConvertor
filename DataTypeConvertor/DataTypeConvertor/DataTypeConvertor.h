//
//  DataTypeConvertor.h
//  DataTypeConvertor
//
//  Created by HeminWon on 2017/3/4.
//  Copyright © 2017年 Hm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataTypeConvertor : NSObject

+ (NSArray *)arrayWithArray:(NSArray *)array atIndex:(NSUInteger)index;
+ (NSString *)stringWithArray:(NSArray *)array atIndex:(NSUInteger)index;
+ (NSNumber *)numberWithArray:(NSArray *)array atIndex:(NSUInteger)index;
+ (NSDictionary *)dictWithArray:(NSArray *)array atIndex:(NSUInteger)index;

+ (NSArray *)arrayWithDictionary:(NSDictionary *)dict forKey:(id)key;
+ (NSString *)stringWithDictionary:(NSDictionary *)dict forKey:(id)key;
+ (NSNumber *)numberWithDictionary:(NSDictionary *)dict forKey:(id)key;
+ (NSDictionary *)dictWithDictionary:(NSDictionary *)dict forKey:(id)key;

+ (NSArray *)arrayWithObject:(id)array;
+ (NSDictionary *)dictWithObject:(id)dict;

@end
