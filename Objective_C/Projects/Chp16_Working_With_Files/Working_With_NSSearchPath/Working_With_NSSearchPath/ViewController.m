//
//  ViewController.m
//  Working_With_NSSearchPath
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(NSString *) saveFilePath
{
    NSArray *dirList = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = dirList[0];
    return [docDir stringByAppendingPathComponent: @"saveFile"];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self saveFilePath];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
