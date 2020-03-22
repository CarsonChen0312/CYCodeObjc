//
//  CYYChinaCoderDelegate.h
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CYYPerson.h"
#import "CYYCoderProtocol.h"

// Notification消息使用全局的 NSString 对象进行标识，其名称按如下的方式组合:
// [Name of associated class] + [Did | Will] + [UniquePartOfName] + Notification

// 程序员即将写出一个bug的通知
extern NSString * _Nonnull const CYYChinaCoderWillWriteBugsNotification;
// 程序员已经制造了一个bug的通知
extern NSString * _Nonnull const CYYChinaCoderDidWriteBugsNotification;

NS_ASSUME_NONNULL_BEGIN

@protocol CYYChinaCoderDelegate <NSObject>

- (void)coder:(nonnull CYYPerson<CYYCoderProtocol> *)coder willWriteBugsWithPartner:(nullable CYYPerson<CYYCoderProtocol> *)partner;

- (void)coder:(nonnull CYYPerson<CYYCoderProtocol> *)coder didWriteBugsWithPartner:(nullable CYYPerson<CYYCoderProtocol> *)partner;

@end

NS_ASSUME_NONNULL_END
