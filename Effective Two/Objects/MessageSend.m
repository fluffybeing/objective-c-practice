//
//  MessageSend.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/15/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

@interface MessageSend : NSObject
-(void)messageSend;
@end

@implementation MessageSend


// For this to work
// set ENABLE_STRICT_OBJC_MSGSEND flag in Build Setting to NO
-(void)messageSend {
    NSString *query = @"Effective Objective-C";
    
    NSURL *url = objc_msgSend([NSURL class],
                                 @selector(URLWithString:),
                                 query);
    NSLog(@"%@", url);
}

@end
