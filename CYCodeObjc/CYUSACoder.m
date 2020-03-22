//
//  CYUSACoder.m
//  CYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYUSACoder.h"

NSString * const CYPersonNameJames             = @"James";
NSString * const CYUSACoderNameNotFound        = @"No one says Hello world!";
NSString * const CYUSACoderNameFormat          = @"%@ says Hello world!";

@implementation CYUSACoder

- (void)CY_PlayBasketBallWithPerson:(CYPerson *)person {
    if ([person.name isEqualToString:CYPersonNameJames]) {
        NSLog(@"Give me the ball");
    } else {
        NSLog(@"Shot");
    }
}

#pragma mark - CYCoderProtocol
- (NSString *)sayHelloWorld {
    if (!self.name) {
        return CYUSACoderNameNotFound;
    }
    return [NSString stringWithFormat:CYUSACoderNameFormat, self.name];
}

- (CYCoderLanguages)preferLanguages {
    return CYCoderLanguageJava;
}

@end
