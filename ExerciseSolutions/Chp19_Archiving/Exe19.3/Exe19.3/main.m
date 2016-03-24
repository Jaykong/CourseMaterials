//
//  main.m
//  Exe19.3
//
//  Created by kongyunpeng on 3/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"my" ofType:@"plist"];
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:@"my.plist"];
        for (NSString *key in dic) {
            NSLog(@"%@ %@",key,dic[key]);
        }
        
    }
    return 0;
}
