//
//  AddressCard.m
//  NSIndexSet
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
-(NSIndexSet *) lookupAll: (NSString *) theName
{
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
                          ^(id obj, NSUInteger idx, BOOL *stop)
                          {
                              if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame)
                                  return YES; // found a match, keep going
                              else
                                  return NO; // keep looking
                          } ];
    // Return the result
    return result;
}
-(AddressCard *) lookup: (NSString *) theName
{
    NSUInteger result = [book indexOfObjectPassingTest:
                         ^ (id obj, NSUInteger idx, BOOL *stop)
                         {
                             if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame) {
                                 return YES;
                             }
                             
                             else
                                 return NO; // keep looking
                         } ];
    // See if we found a match
    if (result != NSNotFound) // there should only be one element
        return book[result];
    else
        return nil;
}


@end
