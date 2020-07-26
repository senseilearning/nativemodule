//
//  ViewController.m
//  objsample
//
//  Created by sensei on 2020/07/26.
//  Copyright © 2020 senseiphoneX. All rights reserved.
//

#import "ViewController.h"
#import "RTTestClass.h"

@interface ViewController ()

@end

@implementation ViewController {
    int a;
    double b;
    UInt32 c;
    NSString *d;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"log ViewController");
    
    RTTestClass *rtTestClass = [[RTTestClass alloc] init];
    //③RTTestClassのメソッドを利用する。
    [rtTestClass outPutLogTestClass];
    
    b = [rtTestClass consoleWrightWithHeight:178.0 weight:78.0];
    
    NSLog(@"BMI=%.2f", b);
    
    a = 100;
    NSLog(@"a = %d", a);
    
    c = 32;
    NSLog(@"c = %d", c);
    
    d = @"hoge";
    NSLog(@"d = %@", d);
    
    NSMutableDictionary *mdic = [NSMutableDictionary dictionary];
    [mdic setObject:[NSNumber numberWithInt:c] forKey:@"key"];
    [mdic setObject:@"hoge" forKey:@"hogeData"];
    
    NSLog(@"mdic = %@", mdic);
}

//+ (BOOL)requiresMainQueueSetup
//{
//    return NO;
//}

@end
