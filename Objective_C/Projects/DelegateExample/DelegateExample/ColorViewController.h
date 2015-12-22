//
//  ColorViewController.h
//  DelegateExample
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ColorViewControllerDelegate;
@interface ColorViewController : UIViewController
@property (nonatomic,strong) id<ColorViewControllerDelegate> delegate;
@end


@protocol ColorViewControllerDelegate

-(void)changeColor:(UIColor *)color;

@end