//
//  Fraction.m
//  Program 18.3
//
//  Created by kongyunpeng on 12/22/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(void)print {
    NSLog(@"the fraction is %i/%i",_numerator,_denominator);
}
-(void)setTo:(int)n over:(int)d {
    _numerator = n;
    _denominator = d;
}
-(id)copyWithZone:(NSZone *)zone {
    Fraction *frac = [[Fraction allocWithZone:zone] init];
    [frac setTo:_numerator over:_denominator];
    //After allocating a new Fraction object, you copy the receiver’s numerator and denominator variables into it.
    return frac;
}
@end
