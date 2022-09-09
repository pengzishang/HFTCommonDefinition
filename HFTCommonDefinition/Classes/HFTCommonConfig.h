//
//  HFTCommonConfig.h
//  HFTCommon
//
//  Created by fakepinge on 2019/10/11.
//  Copyright © 2019 com.haofangtong. All rights reserved.
//

#import <Foundation/Foundation.h>

// 是否是定制类app
#define KCustomSkinApplication [HFTCommonConfig isCustomSkinApplication]

NS_ASSUME_NONNULL_BEGIN

@interface HFTCommonConfig : NSObject

// 是否是定制皮肤类应用
+ (BOOL)isCustomSkinApplication;

@end

NS_ASSUME_NONNULL_END
