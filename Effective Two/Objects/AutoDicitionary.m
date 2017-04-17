//
//  AutoDicitionary.m
//  Effective Two
//
//  Created by Rahul Ranjan on 4/13/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <CoreFoundation/CoreFoundation.h>

@interface AutoDictionary : NSObject
@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) NSNumber *number;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) id opaqueObject;

@property (nonatomic, strong) NSMutableDictionary *backingStore;

id autoDictionaryGetter(id self, SEL _cmd);
void autoDictionarySetter(id self, SEL _cmd, id value);

@end

@implementation AutoDictionary

@dynamic string, number, date, opaqueObject;

-(id)init {
    if ((self = [super init])) {
        _backingStore = [NSMutableDictionary new];
    }
    return self;
}

+(BOOL)resolveInstanceMethod:(SEL)selector {
    NSString *selectorString = NSStringFromSelector(selector);
    
    if ([selectorString hasPrefix:@"set"]) {
//        class_addMethod(self,
//                        selector,
//                        (IMP)autoDictionarySetter,
//                        "v@:@");
    } else {
        class_addMethod(self,
                        selector,
                        (IMP)autoDictionaryGetter,
                        "@@:");
    }
    
    return YES;
}

id autoDictionaryGetter(id self, SEL _cmd) {
    AutoDictionary *typeSelf = (AutoDictionary*)self;
    NSMutableDictionary *backingStore = typeSelf.backingStore;
    
    NSString *key = NSStringFromSelector(_cmd);
    
    return [backingStore objectForKey:key];
}

@end
