//
//  Fraction.m
//  MRC
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(void)print {
    NSLog(@"the fraction is %i/%i",_numerator,_denominator);
}
-(Fraction *) add: (Fraction *) f
{
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    // result will store the result of the addition
    //Fraction *result = [[Fraction alloc] init];
    Fraction *result = [[[Fraction alloc] init] autorelease];
    result.numerator = _numerator * f.denominator + _denominator *
    f.numerator;
    result.denominator = _denominator * f.denominator;
    [result reduce];
    return [result autorelease];
}
@end
