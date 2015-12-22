//
//  AddressBook.m
//  Program 15.12 AddressBook
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;
// set up the AddressBook’s name and an empty book
-(instancetype) initWithName: (NSString *) name
{
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
    
}
-(instancetype) init
{
    return [self initWithName: @"NoName"];
}
-(void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}
-(NSUInteger) entries
{
    return [book count];
}
-(void) list
{
    NSLog (@"======== Contents of: %@ =========", bookName);
    for ( AddressCard *theCard in book )
        NSLog (@"%-20s %-32s", [theCard.name UTF8String],
               [theCard.email UTF8String]);
    NSLog (@"==================================================");
}



-(void) list2
{
    NSLog (@"======== Contents of: %@ =========", bookName);
    [self.book enumerateObjectsUsingBlock:
     ^(AddressCard *theCard, NSUInteger idx, BOOL *stop) {
         NSLog (@"%-20s %-32s", [theCard.name UTF8String],
                [theCard.email UTF8String]);
         NSLog (@"==================================================");
     }
     ];
}

// lookup address card by name -- assumes an exact match
-(AddressCard *) lookup: (NSString *) theName
{
    for ( AddressCard *nextCard in book )
        if ( [nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame )
            return nextCard;
    return nil;
}
-(void) removeCard: (AddressCard *) theCard
{
    [book removeObjectIdenticalTo: theCard];
}

-(void) sort
{
    [book sortUsingSelector: @selector(compareNames:)];
}
-(NSComparisonResult) compareNames: (id) element
{
    return [bookName compare: [element name]];
}

-(void) sort2
{
    [book sortUsingComparator:
     ^(id obj1, id obj2) {
         return [obj1 compareNames: obj2];
     } ];
}
-(void) sort3
{
    [book sortUsingComparator:
     ^(id obj1, id obj2) {
         return [[obj1 name] compare: [obj2 name]];
     } ];
}
// Compare the two names from the specified address cards

@end
