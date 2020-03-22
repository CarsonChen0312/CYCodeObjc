//
//  CYChinaCoderDelegate.h
//  CYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 CarsonChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CYPerson.h"
#import "CYCoderProtocol.h"

// Notification消息使用全局的 NSString 对象进行标识，其名称按如下的方式组合:
// [Name of associated class] + [Did | Will] + [UniquePartOfName] + Notification

// 程序员即将写出一个bug的通知
extern NSString * _Nonnull const CYChinaCoderWillWriteBugsNotification;
// 程序员已经制造了一个bug的通知
extern NSString * _Nonnull const CYChinaCoderDidWriteBugsNotification;

NS_ASSUME_NONNULL_BEGIN

@protocol CYChinaCoderDelegate <NSObject>

- (void)coder:(nonnull CYPerson<CYCoderProtocol> *)coder willWriteBugsWithPartner:(nullable CYPerson<CYCoderProtocol> *)partner;

- (void)coder:(nonnull CYPerson<CYCoderProtocol> *)coder didWriteBugsWithPartner:(nullable CYPerson<CYCoderProtocol> *)partner;

@end

NS_ASSUME_NONNULL_END
