//
//  Swizzling.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/12/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc/runtime.h"


// Add category to NSString to log
// info about the string in lowercase
@interface NSString (EOCMyAddition)
-(NSString*)eoc_lowerCaseString;
@end

@implementation NSString (EOCMyAddition)
- (NSString *)eoc_lowerCaseString {
    
    // Here lowercase is looked up
    NSString *lowerCase = [self eoc_lowerCaseString];
    
    NSLog(@"%@ => %@", self, lowerCase);
    return lowerCase;
}

@end


// Create a Swizzling class
@interface MethodSwizzling:NSObject
/* method declaration */
-(void) methodSwizzling;
@end

@implementation MethodSwizzling

-(void) methodSwizzling {

    Method originalMethod = class_getClassMethod([NSString class], @selector(lowercaseString));
    Method swappedMethod = class_getClassMethod([NSString class], @selector(eoc_lowerCaseString));
    
    method_exchangeImplementations(originalMethod, swappedMethod);
}
@end
