//
//  CYYChineseCoder.m
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYYChineseCoder.h"
#import "CYYChinaCoderDelegate.h"

NSString * const CYYChineseCoderNameNotFound                = @"No one says Hello world!";
NSString * const CYYChineseCoderNameFormat                  = @"%@ says Hello world!";

NSString * const CYYChinaCoderWillWriteBugsNotification     = @"CYYChineseCoderWillWriteBugsNotification";
NSString * const CYYChinaCoderDidWriteBugsNotification      = @"CYYChineseCoderDidWriteBugsNotification";

@interface CYYChineseCoder ()

@property (nonatomic, assign) NSUInteger age;

@end

@implementation CYYChineseCoder

#pragma mark - Life Cycle
- (instancetype)initWithName:(NSString *)aName
                      gender:(CYYPersonGender)aGender
                         age:(NSUInteger)aAge {
    self = [super initWithName:aName gender:aGender];
    if (self) {
        _age = aAge;
    }
    return self;
}

#pragma mark - Public Method
- (void)pairProgrammingWithPartner:(CYYPerson<CYYCoderProtocol> *)partner {
    switch (partner.gender) {
        case CYYPersonGenderMale: {
            NSLog(@"Mother f**ker");
            break;
        }
        case CYYPersonGenderFemale: {
            [[NSNotificationCenter defaultCenter] postNotificationName:CYYChinaCoderWillWriteBugsNotification object:self];
            [self.delegate coder:self willWriteBugsWithPartner:partner];
            NSLog(@"I'll write bugs.....");
            [[NSNotificationCenter defaultCenter] postNotificationName:CYYChinaCoderDidWriteBugsNotification object:self];
            [self.delegate coder:self didWriteBugsWithPartner:partner];
            NSLog(@"I've written bugs.....");
            break;
        }
        case CYYPersonGenderUnknown: {
            break;
        }
        default:
            break;
    }
}

#pragma mark - CYYCoderProtocol
- (NSString *)sayHelloWorld {
    if (!self.name) {
        return CYYChineseCoderNameNotFound;
    } else {
        return [NSString stringWithFormat:CYYChineseCoderNameFormat, self.name];
    }
}

- (CYYCoderLanguages)preferLanguages {
    return CYYCoderLanguageSwift | CYYCoderLanguageObjectiveC | CYYCoderLanguageGolang;
}

@end
