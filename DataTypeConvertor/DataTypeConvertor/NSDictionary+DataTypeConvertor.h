//
//  NSDictionary+DataTypeConvertor.h
//  DataTypeConvertor
//
//  Created by HeminWon on 2017/3/4.
//  Copyright © 2017年 Hm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (DataTypeConvertor)

- (NSArray *)thsArrayForKey:(id)key;
- (NSString *)thsStringForKey:(id)key;
- (NSNumber *)thsNumberForKey:(id)key;
- (NSDictionary *)thsDictionaryForKey:(id)key;

@end
