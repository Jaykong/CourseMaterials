//
//  DetailViewController.m
//  PassValue
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

-(void)textViewDidEndEditing:(UITextView *)textView {
    _getValue(textView.text);
   // NSNotificationCenter *center =  [NSNotificationCenter defaultCenter];
   // [center postNotificationName:@"TextValue" object:self userInfo:[NSDictionary dictionaryWithObjectsAndKeys:textView.text,@"Text", nil]];
   
   // [_target performSelector:@selector(selector) withObject:self ];
}
@end
