//
//  SecondVC.m
//  iOS8AlertController
//
//  Created by xingl on 2016/10/11.
//  Copyright © 2016年 yjpal. All rights reserved.
//

#import "SecondVC.h"

#import "XLAlert.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)alert:(id)sender {
    
    [XLAlert showAlertWithTitle:@"tip" message:@"change backgroundColor?" confirmHandle:^{
        self.view.backgroundColor = [UIColor redColor];
    } cancleHandle:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
