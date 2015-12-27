//
//  ViewController2.m
//  InheritTableViewController
//
//  Created by kongyunpeng on 12/24/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
   
   
    _controller1 = [[ViewController1 alloc] init];
    self.tableView.delegate = _controller1;
    self.tableView.dataSource = _controller1;

    // Do any additional setup after loading the view.
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
