//
//  MyLog.m
//  AwesomeProject
//
//  Created by sensei on 2020/07/26.
//

#import "MyLog.h"

@implementation MyLog

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(callFunc:(NSString *)param dict:(NSDictionary*)dict findEvents:(RCTResponseSenderBlock)callback)
{
  NSLog(@"param:  %@", param);
  NSLog(@"dict: %@", dict);
  
  callback(@[ [NSNull null], @{ @"hoge": @"va2" } ]);
}

RCT_EXPORT_METHOD(hoge:(NSString *)param)
{
  NSLog(@"param:  %@", param);
}

RCT_EXPORT_METHOD(moge:(NSString *)param
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject)
{

  NSLog(@"param: 99999");
  NSLog(@"param:  %@", param);

  if ([param isEqualToString:@"aaa"]) {
    NSLog(@"param: 99998");
    resolve(param);
  } else {
    NSLog(@"param: 99997");
  }
}


@end
