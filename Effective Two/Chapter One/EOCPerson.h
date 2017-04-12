//
//  NSObject+EOCPerson.h
//  Effective Two
//
//  Created by Rahul Ranjan on 4/7/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>

// Use class to import as we don't want
// some one importing EOCPerson to import
// everything about the EOCPlayer
// known as forward declaration

@class EOCEmployer;

@interface EOCPerson: NSObject
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) EOCEmployer *employer;
@end
