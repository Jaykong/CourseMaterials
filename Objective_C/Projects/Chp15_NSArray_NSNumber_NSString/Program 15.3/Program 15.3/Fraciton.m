//
//  Fraciton.m
//  Program 15.3
//
//  Created by kongyunpeng on 12/20/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Fraciton.h"

@implementation Fraciton

-(NSString *) description
{
    return [NSString stringWithFormat: @"%i/%i", _numerator, _denominator];
}

-(Fraciton *)add:(Fraciton *)f {
    Fraciton *result = [[Fraciton alloc] init];
    result.numerator = _numerator * f.denominator + f.numerator * _denominator;
    result.denominator = _denominator * f.denominator;
    return result;
}
@end
