//
//  DetailViewController.h
//  PassValue
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^GetValue)(NSString* text);
@interface DetailViewController : UIViewController<UITextViewDelegate>
@property(nonatomic,strong) GetValue getValue;

//@property (nonatomic,strong) id target;
//@property (nonatomic,assign) SEL selector;
@end
