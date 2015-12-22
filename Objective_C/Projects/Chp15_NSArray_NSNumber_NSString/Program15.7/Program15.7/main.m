//
//  main.m
//  Program15.7
//
//  Created by kongyunpeng on 12/20/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//



#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    int i;
    @autoreleasepool {
        // Create an array to contain the month names
        NSArray *monthNames = [NSArray arrayWithObjects:
                               @"January", @"February", @"March", @"April",
                               @"May", @"June", @"July", @"August", @"September",
                               @"October", @"November", @"December", nil];
        // Now list all the elements in the array
        NSLog (@"Month Name");
        NSLog (@"===== ====");
        for (i = 0; i < 12; ++i)
            NSLog (@" %2i %@", i + 1, [monthNames objectAtIndex: i]);
    }
    return 0;
}


/*
 Program 15.7 Output
 Month Name
 ===== ====
 1 January
 2 February
 3 March
 4 April
 5 May
 6 June
 7 July
 8 August
 9 September
 10 October
 11 November
 12 December
 */
