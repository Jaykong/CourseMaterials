//
//  Fraction.m
//  6.5.3
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Fraction.h"
@interface Fraction()



@end

@implementation Fraction
-(void)print {
    if ( _numerator == 0) {
        NSLog(@"the fraction value is 0");
    }
    else if (_denominator == 1) {
        NSLog(@"the fraction value is %d",_numerator);
    } else {
        NSLog(@"the fraction value is %d/%d",_numerator,_denominator);
    }
    
}

-(void) inPutNumerator: (int) n
{
    NSLog(@"input the numerator.");
    scanf("%i", &n);   //（这里有警告）
    _numerator = n;
}

-(void) inPutDenominator: (int) d
{
    NSLog(@"input the denominator.");
    scanf("%i", &d);   //（这里有警告）
    _denominator = d;
}



@end
