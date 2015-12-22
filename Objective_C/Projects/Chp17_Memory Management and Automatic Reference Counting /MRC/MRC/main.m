//
//  main.m
//  MRC
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        // Set 1st fraction to 2/3
        [frac1 setNumerator: 2];
        [frac1 setDenominator: 3];
        // Set 2nd fraction to 3/7
        [frac2 setNumerator: 3];
        [frac2 setDenominator: 7];
        // Display the fractions
        NSLog (@"First fraction is:");
        [frac1 print];
        NSLog (@"Second fraction is:");
        [frac2 print];
        [frac1 release];
        [frac2 release];
        
       
       
    }
    return 0;
}
