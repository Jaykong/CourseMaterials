//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by trainer on 12/22/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
@interface Calculator : NSObject
@property (strong, nonatomic) Fraction *operand1;
@property (strong, nonatomic) Fraction *operand2;
@property (strong, nonatomic) Fraction *accumulator;
-(Fraction *) performOperation: (char) op;
-(void) clear;
@end
