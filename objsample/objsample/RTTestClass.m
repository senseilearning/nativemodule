//
//  RTTestClass.m
//  objsample
//
//  Created by sensei on 2020/07/26.
//  Copyright © 2020 senseiphoneX. All rights reserved.
//

#import "RTTestClass.h"

@implementation RTTestClass

-(void)outPutLogTestClass {
    NSLog(@"RTTestClassのログを出すよ！");
}

-(double)consoleWrightWithHeight:(double)h weight:(double)w {
    h *= 0.01;
    double bmi = w / (h*h);
    
    return bmi; // BMIを戻り値として返す
}

@end
