//
//  CYYPerson.h
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CYYCoderProtocol.h"

typedef NS_ENUM(NSInteger, CYYPersonGender) {
    CYYPersonGenderMale,
    CYYPersonGenderFemale,
    CYYPersonGenderUnknown
};

NS_ASSUME_NONNULL_BEGIN

@interface CYYPerson : NSObject <CYYCoderProtocol>

/// Name
@property(nonatomic, copy, readonly, nonnull)     NSString        *name;
/// Gender
@property(nonatomic, assign, readonly)            CYYPersonGender gender;

/// Init Method
/// @param aName Person Name
/// @param aGender Person Gender
- (nonnull instancetype)initWithName:(nonnull NSString *)aName
                              gender:(CYYPersonGender)aGender;


@end

NS_ASSUME_NONNULL_END
