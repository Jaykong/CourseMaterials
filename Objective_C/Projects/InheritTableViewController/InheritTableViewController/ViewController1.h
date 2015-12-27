//
//  ViewController1.h
//  InheritTableViewController
//
//  Created by kongyunpeng on 12/24/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController1 : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
