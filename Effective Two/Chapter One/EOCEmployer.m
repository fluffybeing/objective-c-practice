//
//  EOCEmployer.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/7/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import "EOCEmployer.h"

// Not exposed to outside and declared on implementation file
// Objective C has global namespace and if static is not
// declared then in other file same variable cannot be declared
static const NSTimeInterval imAnimationDuration = 0.3;

NSString *const EOCEmployerLoginManagerDidLoginNotification = @"Logged In!";

@implementation EOCEmployer
@end
