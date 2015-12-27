//
//  NextViewController.h
//  Phase1_Exam
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>
//void (^setShowLbl) (NSString *)text
@interface NextViewController : UIViewController<UITextViewDelegate>

@property (nonatomic,copy) void (^setShowLbl) (NSString *text)  ;
@end
