//
//  XLAlert.h
//  iOS8AlertController
//
//  Created by xingl on 2016/10/11.
//  Copyright © 2016年 yjpal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^confirm)();
typedef void(^cancle)();


@interface XLAlert : NSObject

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirmHandle:(confirm)confirm cancleHandle:(cancle)cancle;

@end
