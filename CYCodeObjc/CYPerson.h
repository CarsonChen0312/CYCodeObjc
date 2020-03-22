//
//  CYPerson.h
//  CYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CYCoderProtocol.h"

typedef NS_ENUM(NSInteger, CYPersonGender) {
    CYPersonGenderMale,
    CYPersonGenderFemale,
    CYPersonGenderUnknown
};

NS_ASSUME_NONNULL_BEGIN

@interface CYPerson : NSObject <CYCoderProtocol>

/// Name
@property(nonatomic, copy, readonly, nonnull)     NSString        *name;
/// Gender
@property(nonatomic, assign, readonly)            CYPersonGender gender;

/// Init Method
/// @param aName Person Name
/// @param aGender Person Gender
- (nonnull instancetype)initWithName:(nonnull NSString *)aName
                              gender:(CYPersonGender)aGender;


@end

NS_ASSUME_NONNULL_END
