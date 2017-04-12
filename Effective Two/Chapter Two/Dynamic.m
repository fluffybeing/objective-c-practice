//
//  Person.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/7/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *firstName;
// Property Attributes
// Atomicity: by default lock
// Read/Write: __unsafe
// Memory: assign (scalar types) strong(ownership)
// Method Names
@property (nonatomic, readwrite, copy) NSString *lastName;
@end

@implementation Person
// control the name of instace variable created
// using property synthesis
@synthesize firstName = _myFirstName;
// dynamic keyword let you define your
// own accessors
@dynamic lastName;

// lazy initialisation
-(NSString *)lastName {
    if (! self.lastName) {
        self.lastName = @"Smith";
    }
    return self.lastName;
}
@end
