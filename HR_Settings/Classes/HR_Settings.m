//
//  HR_Settings.m
//  HR_Settings
//
//  Created by Obgniyum on 2017/12/26.
//

#import "HR_Settings.h"

@implementation HR_Settings

+ (HR_Settings *(^)(NSString *urlStr))HR_URL {
    return ^(NSString *str) {
        return [HR_Settings openSetting:str]();
    };
}

+ (HR_Settings *(^)(void))HR_Home {
    NSString *urlStr = @"App-Prefs:root=General";
    return [HR_Settings openSetting:urlStr];
}

+ (HR_Settings *(^)(void))HR_Bluetooth {
    NSString *urlStr = @"App-Prefs:root=Bluetooth";
    return [HR_Settings openSetting:urlStr];
}

+ (HR_Settings *(^)(void))HR_Camera {
    NSString *urlStr = @"App-Prefs:root=Photos";
    return [HR_Settings openSetting:urlStr];
}

+ (HR_Settings *(^)(void))openSetting:(NSString *)urlStr {
    return ^(void){
        if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlStr]]) {
            NSString *version = [UIDevice currentDevice].systemVersion;
            if (version.doubleValue >= 10.0) {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr] options:@{} completionHandler:nil];
            } else {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
            }
        } else {
            NSLog(@"URL is invalid");
        }
        return [[self alloc] init];
    };
}

@end
