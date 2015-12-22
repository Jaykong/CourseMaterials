//
//  main.m
//  Program 18.3
//
//  Created by kongyunpeng on 12/22/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "NewFraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2;
        [f1 setTo: 2 over: 5];
        f2 = [f1 copy];
        [f2 setTo: 1 over: 3];
        [f1 print];
        [f2 print];
        
       
        NewFraction *nFra1 = [[NewFraction alloc] init];
        NewFraction *nf2;
        [nFra1 setTo:2 over:4];
       
        nf2 = [nFra1 copy];
         [nf2 setTo:1 over:5];
        [nFra1 print];
        [nf2 print];
    }
    return 0;
}
