//
//  XLAlert.m
//  iOS8AlertController
//
//  Created by xingl on 2016/10/11.
//  Copyright © 2016年 yjpal. All rights reserved.
//

#import "XLAlert.h"


@implementation XLAlert

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirmHandle:(confirm)confirm cancleHandle:(cancle)cancle {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (cancle) {
            cancle();
        }
    }];
    
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (confirm) {
            confirm();
        }
    }];
    
    [alert addAction:cancleAction];
    [alert addAction:confirmAction];
    
    [[XLAlert currentViewController] presentViewController:alert animated:YES completion:nil];
    
}


+ (UIViewController *)currentViewController {
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    
    UIViewController *presentedVC = [[window rootViewController] presentedViewController];
    
    if (presentedVC) {
        //模态
        return presentedVC;
        
    } else {
        //导航
        return window.rootViewController;
    }
    
}
























@end
