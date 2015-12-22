//
//  main.m
//  Program 15.3
//
//  Created by kongyunpeng on 12/20/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

//Program 15.3
#import <Foundation/Foundation.h>
#import "Fraciton.h"
int main (int argc, char * argv[])
{
    @autoreleasepool {
        NSString *str = @"Programming is fun";
        NSLog (@"%@", str);
        
        NSNumber *intNumber = @100;
       
        NSLog (@"%@", intNumber);
        Fraciton *f1 = [[Fraciton alloc] init];
        f1.numerator = 1;
        f1.denominator = 2;
         NSLog(@"%@",f1);
        
        Fraciton *f2 = [[Fraciton alloc] init];
        f2.numerator = 3;
        f2.denominator = 4;
        
        //NSLog(@"%@ add %@ = %@",f1,f2,sum);
        
        Fraciton *sum = [f1 add:f2];
        NSLog (@"The sum of %@ and %@ is %@", f1, f2, sum);
       
       // The sum of 1/2 and 1/4 is 3/4
    }
    return 0;
}



