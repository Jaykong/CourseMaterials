//
//  ThirdViewController.m
//  NotificationPassValue
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(colorChanged:) name:@"ColorChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ColorChanged" object:nil userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],@"color", nil]];
}
-(void)colorChanged:(NSNotification*)noti {
   UIColor *myClor = [noti.userInfo objectForKey:@"color"];
    self.view.backgroundColor = myClor;
    
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
