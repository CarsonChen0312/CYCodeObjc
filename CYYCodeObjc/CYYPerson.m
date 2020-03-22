//
//  CYYPerson.m
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYYPerson.h"

@interface CYYPerson ()

@property(nonatomic, copy, nonnull)     NSString        *name;
@property(nonatomic, assign)            CYYPersonGender gender;

@end

@implementation CYYPerson

- (instancetype)initWithName:(NSString *)aName
                      gender:(CYYPersonGender)aGender {
    self = [super init];
    if (self) {
        self.name = aName;
        self.gender = aGender;
    }
    return self;
}

#pragma mark - CYYCoderLanguages
- (NSString *)sayHelloWorld {
    return @"Hello, World!";
}

- (CYYCoderLanguages)preferLanguages {
    return CYYCoderLanguageSwift;
}

@end
