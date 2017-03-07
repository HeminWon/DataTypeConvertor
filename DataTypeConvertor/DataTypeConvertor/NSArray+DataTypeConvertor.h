//
//  NSArray+DataTypeConvertor.h
//  DataTypeConvertor
//
//  Created by HeminWon on 2017/3/4.
//  Copyright © 2017年 Hm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (DataTypeConvertor)

- (NSArray *)thsArrayAtIndex:(NSUInteger)index;
- (NSString *)thsStringAtIndex:(NSUInteger)index;
- (NSNumber *)thsNumberAtIndex:(NSUInteger)index;
- (NSDictionary *)thsDictionaryAtIndex:(NSUInteger)index;

@end
