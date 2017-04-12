//
//  EOCEmployee.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/11/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>


// Enum with different classes type
typedef NS_ENUM(NSUInteger, EOCEmployeeType) {
    EOCEmployeeTypeDeveloper,
    EOCEmployeeTypeDesigner,
    EOCEmployeeTypeFinance,
};


@interface EOCEmployee : NSObject

@property(copy) NSString * frame;
@property NSUInteger salary;

+(EOCEmployee*)employeWithType:(EOCEmployeeType)type;
-(void)doADaysWork;

@end

// These class can be on different files and with their custom
// methods and properties
@interface EOCEmployeeDeveloper : EOCEmployee
@end
@implementation EOCEmployeeDeveloper
@end
@interface EOCEmployeeDesigner : EOCEmployee
@end
@implementation EOCEmployeeDesigner
@end
@interface EOCEmployeeFinance : EOCEmployee
@end
@implementation EOCEmployeeFinance
@end

@implementation EOCEmployee

+(EOCEmployee*)employeWithType:(EOCEmployeeType)type {
    switch (type) {
        case EOCEmployeeTypeDeveloper:
            return [EOCEmployeeDeveloper new];
            break;
        case EOCEmployeeTypeFinance:
            return [EOCEmployeeFinance new];
            break;
        case EOCEmployeeTypeDesigner:
            return [EOCEmployeeDesigner new];
            break;
    }
    return nil;
}

-(void)doADaysWork {
    // sublocass will implement it
}
@end


