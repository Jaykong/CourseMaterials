//
//  ViewController.m
//  DelegateExample
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)changeColor:(UIColor *)color {
    self.view.backgroundColor = color;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ColorViewController *controller =  segue.destinationViewController;
    controller.delegate = self;
}
@end
