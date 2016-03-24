//
//  main.m
//  Exe19.1
//
//  Created by kongyunpeng on 3/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *mutableArr = [NSMutableArray array];
      
        for (int i = 2; i <= 50 ;++i) {
              BOOL isPrime = YES;
            if (i % 2 == 0 && i != 2) {
                continue;
            }
            for (int j = 2 ; j <= i ; ++j ) {
                if (i % j == 0) {
                   // isPrime = NO;
                    break;
                }
                
            }
            if (isPrime) {
                [mutableArr addObject:@(i)];
                NSLog(@"%@",@(i));
            }
            
        }
        

        [mutableArr writeToFile:@"primes.pl" atomically:YES];
        
        NSArray *readArr = [NSArray arrayWithContentsOfFile:@"primes.pl"];
        
        for (NSNumber *number in readArr) {
            NSLog(@"number is %@",number);
        }
    }
    return 0;
}
