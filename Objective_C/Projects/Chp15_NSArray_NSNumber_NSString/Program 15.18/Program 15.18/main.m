//
//  main.m
//  Program 15.18
//
//  Created by kongyunpeng on 12/20/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//


#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        NSDictionary *glossary =
        [NSDictionary dictionaryWithObjectsAndKeys:
         @"A class defined so other classes can inherit from it",
         @"abstract class",
         @"To implement all the methods defined in a protocol",
         @"adopt",
         @"Storing an object for later use",
         @"archiving",
         nil
         ];
        
        NSDictionary *glossary = @{
                                   @"abstract class" :
                                       @"A class defined so other classes can inherit from it",
                                   @"adopt" : @"To implement all the methods defined in a protocol",
                                   @"archiving" : @"Storing an object for later use"
                                   };
        // Print all key-value pairs from the dictionary
        for ( NSString *key in glossary )
            NSLog (@"%@: %@", key, [glossary objectForKey: key]);
    }
    
    NSArray *keys = [states allKeys];
    keys = [keys sortedArrayUsingComparator:
            ^(id obj1, id obj2) {
                return [obj1 compare: obj2];
            } ];
    for (NSString *aState in keys)
        NSLog (@"State: %@ Capital: %@", aState, states[aState]);
    
    return 0;
}
