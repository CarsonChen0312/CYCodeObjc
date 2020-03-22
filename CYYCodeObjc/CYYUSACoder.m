//
//  CYYUSACoder.m
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYYUSACoder.h"

NSString * const CYYPersonNameJames             = @"James";
NSString * const CYYUSACoderNameNotFound        = @"No one says Hello world!";
NSString * const CYYUSACoderNameFormat          = @"%@ says Hello world!";

@implementation CYYUSACoder

- (void)cyy_PlayBasketBallWithPerson:(CYYPerson *)person {
    if ([person.name isEqualToString:CYYPersonNameJames]) {
        NSLog(@"Give me the ball");
    } else {
        NSLog(@"Shot");
    }
}

#pragma mark - CYYCoderProtocol
- (NSString *)sayHelloWorld {
    if (!self.name) {
        return CYYUSACoderNameNotFound;
    }
    return [NSString stringWithFormat:CYYUSACoderNameFormat, self.name];
}

- (CYYCoderLanguages)preferLanguages {
    return CYYCoderLanguageJava;
}

@end
