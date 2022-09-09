//
//  HFTCommonConfig.m
//  HFTCommon
//
//  Created by fakepinge on 2019/10/11.
//  Copyright © 2019 com.haofangtong. All rights reserved.
//

#import "HFTCommonConfig.h"

// 掌上好房通
NSString *kBundleIdForErpApp;
// 开单豹
NSString *kBundleIdForKdbApp;
// 友邻通(企业版/App Storen版)
NSString *kBundleIdForYltApp;

#pragma mark - 定制app
// 玛雅(房口袋/玛雅好房)
NSString *kBundleIdForFkdApp;
// 我有家
NSString *kBundleIdForWYJApp;
// 家港在线
NSString *kBundleIdForJGZXApp;
// 丰原地产
NSString *kBundleIdForFYDCApp;
// 富利地产
NSString *kBundleIdForFLDCApp;

///* --------------------------- APP bundleId -----------------------------*/
// 掌上好房通
NSString *const kBundleId_zshft       = @"com.haofangtongerp.haofangtongerp";
// 开单豹
NSString *const kBundleId_kdb         = @"com.dingjia.kdb";
// 友邻通 企业版
NSString *const kBundleId_youlingtong = @"com.haofangtongerp.haofangtongerp.ent";
// 友邻通 App Store版
NSString *const kBundleId_ylt         = @"com.haofangtongerp.ylt";
// 房口袋
NSString *const kBundleId_fkd         = @"com.haofangtong.fkd";
// 玛雅好房(房基地)
NSString *const kBundleId_myhf        = @"com.haofangtongerp.myhf";
// 我有家
NSString *const kBundleId_wyj         = @"com.haofangtong.woyoujia";
// 家港在线
NSString *const kBundleId_jgzx        = @"com.haofangtong.jgzx";
// 丰原房产
NSString *const kBundleId_fydc        = @"com.haofangtong.fengyuan";
// 富利地产
NSString *const kBundleId_fldc        = @"com.haofangtong.fulidichan";

@implementation HFTCommonConfig

+ (void)load {
    NSString *APP_BUNDLE_ID = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    // 掌上好房通
    kBundleIdForErpApp = kBundleId_zshft;
    // 开单豹
    kBundleIdForKdbApp = kBundleId_kdb;
    // 友邻通(企业版/App Store版)
    NSArray *ylt_array = @[kBundleId_youlingtong, kBundleId_ylt];
    if ([ylt_array containsObject:APP_BUNDLE_ID]) {
        kBundleIdForYltApp = APP_BUNDLE_ID;
    } else {
        kBundleIdForYltApp = kBundleId_youlingtong;
    }
    // 玛雅(房口袋/玛雅好房)
    NSArray *maya_array = @[kBundleId_fkd, kBundleId_myhf];
    if ([maya_array containsObject:APP_BUNDLE_ID]) {
        kBundleIdForFkdApp = APP_BUNDLE_ID;
    } else {
        kBundleIdForFkdApp = kBundleId_fkd;
    }
    // 我有家
    kBundleIdForWYJApp = kBundleId_wyj;
    // 家港在线
    kBundleIdForJGZXApp = kBundleId_jgzx;
    // 丰原地产
    kBundleIdForFYDCApp = kBundleId_fydc;
    // 富利地产
    kBundleIdForFLDCApp = kBundleId_fldc;
}

+ (BOOL)isCustomSkinApplication {
    NSString *APP_BUNDLE_ID = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    NSArray *customArray = @[kBundleIdForFkdApp, kBundleIdForWYJApp, kBundleIdForJGZXApp, kBundleIdForFYDCApp, kBundleIdForFLDCApp];
    return [customArray containsObject:APP_BUNDLE_ID];
}

@end
