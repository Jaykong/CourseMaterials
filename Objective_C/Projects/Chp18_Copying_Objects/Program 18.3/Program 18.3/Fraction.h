//
//  Fraction.h
//  Program 18.3
//
//  Created by kongyunpeng on 12/22/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject <NSCopying>
@property int numerator, denominator;
-(void)setTo:(int)n over:(int)d;
-(void)print;
@end
