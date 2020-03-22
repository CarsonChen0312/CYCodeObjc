//
//  CYYChineseCoder.h
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYYPerson.h"
#import "CYYPerson.h"
#import "CYYCoderProtocol.h"
#import "CYYChinaCoderDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface CYYChineseCoder : CYYPerson<CYYCoderProtocol>

/// Delegate
@property (nonatomic, weak, nullable)   id<CYYChinaCoderDelegate> delegate;
/// Age
@property (nonatomic, assign, readonly) NSUInteger age;

- (instancetype)initWithName:(NSString *)aName
                      gender:(CYYPersonGender)aGender
                         age: (NSUInteger)aAge;

/// Coding Together
/// @param partner Partner
- (void)pairProgrammingWithPartner:(nullable CYYPerson<CYYCoderProtocol> *)partner;

@end

NS_ASSUME_NONNULL_END
