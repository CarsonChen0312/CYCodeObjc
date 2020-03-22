//
//  CYPerson.m
//  CYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYPerson.h"

@interface CYPerson ()

@property(nonatomic, copy, nonnull)     NSString        *name;
@property(nonatomic, assign)            CYPersonGender gender;

@end

@implementation CYPerson

- (instancetype)initWithName:(NSString *)aName
                      gender:(CYPersonGender)aGender {
    self = [super init];
    if (self) {
        self.name = aName;
        self.gender = aGender;
    }
    return self;
}

#pragma mark - CYCoderLanguages
- (NSString *)sayHelloWorld {
    return @"Hello, World!";
}

- (CYCoderLanguages)preferLanguages {
    return CYCoderLanguageSwift;
}

@end
