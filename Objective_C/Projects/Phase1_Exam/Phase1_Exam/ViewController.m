//
//  ViewController.m
//  Phase1_Exam
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NextViewController *controller = segue.destinationViewController;
    controller.setShowLbl = ^(NSString *text) {
        _showLbl.text = text;
    };
    
}
@end
