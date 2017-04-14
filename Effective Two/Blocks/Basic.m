//
//  Basic.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/14/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Basic : NSObject
@end

@implementation Basic

// define a block
void(^basicBlock)() = ^{};

// block with a parameter
int(^addBlock)(int a, int b) = ^(int a, int b) {
    return a + b;
};


// __block
-(void)blockVariable {
    NSArray *array = @[@0, @1, @2, @3, @4, @5];
    __block NSInteger count = 0;
    [array enumerateObjectsUsingBlock:
     ^(NSNumber *number, NSUInteger idx, BOOL *stop) {
         if ([number compare:@2] == NSOrderedAscending) {
             count++;
         }
     }];
}

@end
