//
//  FirstViewController.m
//  NotificationPassValue
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(colorChanged:) name:@"ColorChanged" object:nil];
}
-(void)colorChanged:(NSNotification*)noti {
    UIColor *myClor = [noti.userInfo objectForKey:@"color"];
    self.view.backgroundColor = myClor;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
