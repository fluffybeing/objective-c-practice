//
//  Category.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/17/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>


@interface NSURL (EFTURLWithStringFormat)

+(id)EFTURLWithStringFormat:(NSString *)format, ...;

@end

@implementation NSURL (EFTURLWithStringFormat)

+(id)EFTURLWithStringFormat:(NSString *)format, ... {
    va_list(args);
    va_start(args, format);
    
    NSString *urlString = [[NSString alloc] initWithFormat:format
                                                 arguments:args];
    va_end(args);
    
    return [NSURL URLWithString:urlString];
}

@end
