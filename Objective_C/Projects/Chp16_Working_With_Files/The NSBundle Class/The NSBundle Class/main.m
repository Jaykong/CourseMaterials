//
//  main.m
//  The NSBundle Class
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      NSString *path = [[NSBundle mainBundle] pathForResource:@"text" ofType:@"txt"];
        if (path) {
            NSString *contentsOfFile = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            NSLog(@"%@",contentsOfFile);
        } else {
            NSLog(@"file not exist");
        }
        
       NSArray *paths = [[NSBundle mainBundle] pathsForResourcesOfType:@"txt" inDirectory:@""];
        NSLog(@"%@",paths);
        
    }
    return 0;
}
