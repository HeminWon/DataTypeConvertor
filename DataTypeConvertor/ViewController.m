//
//  ViewController.m
//  DataTypeConvertor
//
//  Created by HeminWon on 2017/3/4.
//  Copyright © 2017年 Hm. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+DataTypeConvertor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSNumber *str = @1000;
    NSInteger x = [str integerValue];
    NSInteger x1 = [str intValue];
    NSNumber *num = @([str integerValue]);
    NSNumber *num1 = @([str intValue]);
    NSLog(@"\n%ld\n%ld",x, x1);
    NSLog(@"\n%@\n%@",num, num1);
    NSMutableArray *arr = [@[@10,@"sdfds"] mutableCopy];
    [arr insertObject:str atIndex:0];
    NSString *str7 = [arr objectAtIndex:1];
    NSString *str8 = [arr thsStringAtIndex:1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
