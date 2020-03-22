//
//  CYCoderProtocol.h
//  CYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, CYCoderLanguages) {
    CYCoderLanguageNone        = 0,
    CYCoderLanguageSwift       = 1 << 0,
    CYCoderLanguageObjectiveC  = 1 << 1,
    CYCoderLanguageC           = 1 << 2,
    CYCoderLanguageJava        = 1 << 3,
    CYCoderLanguageKotlin      = 1 << 4,
    CYCoderLanguageGolang      = 1 << 5,
    CYCoderLanguagePHP         = 1 << 6,
    CYCoderLanguagePython      = 1 << 7
};

NS_ASSUME_NONNULL_BEGIN

@protocol CYCoderProtocol <NSObject>

@required
- (nonnull NSString *)sayHelloWorld;

@optional
- (CYCoderLanguages)preferLanguages;

@end

NS_ASSUME_NONNULL_END
