//
//  CYYCoderProtocol.h
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, CYYCoderLanguages) {
    CYYCoderLanguageNone        = 0,
    CYYCoderLanguageSwift       = 1 << 0,
    CYYCoderLanguageObjectiveC  = 1 << 1,
    CYYCoderLanguageC           = 1 << 2,
    CYYCoderLanguageJava        = 1 << 3,
    CYYCoderLanguageKotlin      = 1 << 4,
    CYYCoderLanguageGolang      = 1 << 5,
    CYYCoderLanguagePHP         = 1 << 6,
    CYYCoderLanguagePython      = 1 << 7
};

NS_ASSUME_NONNULL_BEGIN

@protocol CYYCoderProtocol <NSObject>

@required
- (nonnull NSString *)sayHelloWorld;

@optional
- (CYYCoderLanguages)preferLanguages;

@end

NS_ASSUME_NONNULL_END
