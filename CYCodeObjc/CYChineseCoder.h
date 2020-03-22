//
//  CYChineseCoder.h
//  CYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import "CYPerson.h"
#import "CYPerson.h"
#import "CYCoderProtocol.h"
#import "CYChinaCoderDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface CYChineseCoder : CYPerson<CYCoderProtocol>

/// Delegate
@property (nonatomic, weak, nullable)   id<CYChinaCoderDelegate> delegate;
/// Age
@property (nonatomic, assign, readonly) NSUInteger age;

- (instancetype)initWithName:(NSString *)aName
                      gender:(CYPersonGender)aGender
                         age: (NSUInteger)aAge;

/// Coding Together
/// @param partner Partner
- (void)pairProgrammingWithPartner:(nullable CYPerson<CYCoderProtocol> *)partner;

@end

NS_ASSUME_NONNULL_END
