//
//  ViewController.m
//  PassValue
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int (^aIntBlock) (int a,int b);
    
    
    aIntBlock = ^(int a,int b) {
        return a + b;
    };
    
    //aIntBlock(1,2);
    NSArray *arr = @[@"c",@"d",@"a",@"b"];
   [ arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if (obj1 > obj2) {
            return NSOrderedAscending;
        } else {
            return NSOrderedDescending;
        }
   }];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(valueChanged:) name:@"TextValue" object:nil];
    
   
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)valueChanged:(NSNotification *)noti {
    _showText.text = [noti.userInfo objectForKey:@"Text"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    DetailViewController *controller =  segue.destinationViewController;
    
  controller.getValue = ^(NSString* text) {
      
        _showText.text = text;
    };
    
    
   // controller.target = self;
   // controller.selector = @selector(changeText:);
}
//-(void)changeText:(NSString *)text {
//    _showText.text = text;
//}
@end
