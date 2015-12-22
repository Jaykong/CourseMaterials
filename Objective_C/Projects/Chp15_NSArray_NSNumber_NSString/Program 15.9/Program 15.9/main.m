//
//  main.m
//  Program 15.9
//
//  Created by kongyunpeng on 12/20/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        NSMutableArray *numbers = [NSMutableArray array];
        int i;
        // Create an array with the numbers 0-9
        for (i = 0; i < 10; ++i )
            numbers[i] = @(i);
        // Sequence through the array and display the values
        for (i = 0; i < 10; ++i )
            NSLog (@"%@", numbers[i]);
        // Look how NSLog can display it with a single %@ format
        NSLog (@"====== Using a single NSLog");
        NSLog (@"%@", numbers);
    }
    return 0;
}
