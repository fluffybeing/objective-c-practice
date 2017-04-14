//
//  Introspection.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/13/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc/runtime.h"

@interface Introspection : NSObject
@end

@implementation Introspection

-(void)intropectDictionary {
    NSMutableDictionary *dict = [NSMutableDictionary new];
    [dict isMemberOfClass:[NSDictionary class]]; // NO
    [dict isMemberOfClass:[NSMutableDictionary class]]; // YES
    [dict isKindOfClass:[NSDictionary class]]; // YES
    [dict isKindOfClass:[NSArray class]]; // NO
}

@end
