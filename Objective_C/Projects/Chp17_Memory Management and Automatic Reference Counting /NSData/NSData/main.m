//
//  main.m
//  NSData
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSData *data = [NSData dataWithContentsOfFile:@"database1"];
        data = [NSData dataWithContentsOfFile:@"database2"];
        
    }
    return 0;
}
