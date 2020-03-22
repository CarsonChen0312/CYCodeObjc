//
//  CYChineseCoder.m
//  CYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYChineseCoder.h"
#import "CYChinaCoderDelegate.h"

NSString * const CYChineseCoderNameNotFound                = @"No one says Hello world!";
NSString * const CYChineseCoderNameFormat                  = @"%@ says Hello world!";

NSString * const CYChinaCoderWillWriteBugsNotification     = @"CYChineseCoderWillWriteBugsNotification";
NSString * const CYChinaCoderDidWriteBugsNotification      = @"CYChineseCoderDidWriteBugsNotification";

@interface CYChineseCoder ()

@property (nonatomic, assign) NSUInteger age;

@end

@implementation CYChineseCoder

#pragma mark - Life Cycle
- (instancetype)initWithName:(NSString *)aName
                      gender:(CYPersonGender)aGender
                         age:(NSUInteger)aAge {
    self = [super initWithName:aName gender:aGender];
    if (self) {
        _age = aAge;
    }
    return self;
}

#pragma mark - Public Method
- (void)pairProgrammingWithPartner:(CYPerson<CYCoderProtocol> *)partner {
    switch (partner.gender) {
        case CYPersonGenderMale: {
            NSLog(@"Mother f**ker");
            break;
        }
        case CYPersonGenderFemale: {
            [[NSNotificationCenter defaultCenter] postNotificationName:CYChinaCoderWillWriteBugsNotification object:self];
            [self.delegate coder:self willWriteBugsWithPartner:partner];
            NSLog(@"I'll write bugs.....");
            [[NSNotificationCenter defaultCenter] postNotificationName:CYChinaCoderDidWriteBugsNotification object:self];
            [self.delegate coder:self didWriteBugsWithPartner:partner];
            NSLog(@"I've written bugs.....");
            break;
        }
        case CYPersonGenderUnknown: {
            break;
        }
        default:
            break;
    }
}

#pragma mark - CYCoderProtocol
- (NSString *)sayHelloWorld {
    if (!self.name) {
        return CYChineseCoderNameNotFound;
    } else {
        return [NSString stringWithFormat:CYChineseCoderNameFormat, self.name];
    }
}

- (CYCoderLanguages)preferLanguages {
    return CYCoderLanguageSwift | CYCoderLanguageObjectiveC | CYCoderLanguageGolang;
}

@end
