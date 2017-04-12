//
//  EOCEmployer.h
//  Effective Two
//
//  Created by Rahul Ranjan on 4/7/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>


// Avoid preprocessor const
#define ANIMATION_DURATION 0.3
// Preffered way
static const NSTimeInterval kAnimationDuration = 0.3;

// Global scope 
extern NSString *const EOCEmployerLoginManagerDidLoginNotification;

@interface EOCEmployer : NSObject
@end
