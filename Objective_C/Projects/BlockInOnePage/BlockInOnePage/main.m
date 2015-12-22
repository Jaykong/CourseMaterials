//
//  main.m
//  BlockInOnePage
//
//  Created by trainer on 12/21/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

int (^aIntBlock)(int a, int b) ;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        aIntBlock = ^(int a, int b) {
            return a + b;
        };
        
        aIntBlock(2,3);
    }
    return 0;
}
