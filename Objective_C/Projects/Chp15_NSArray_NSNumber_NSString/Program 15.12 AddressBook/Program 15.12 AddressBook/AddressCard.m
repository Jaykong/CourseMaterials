//
//  AddressCard.m
//  Program 15.10 AddressCard
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
 @synthesize name, email;



-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    self.name = theName;
    self.email = theEmail;
}

-(NSString *) name
{
    return name;
}
-(NSString *) email
{
    return email;
}
-(void) print
{
    NSLog (@"====================================");
    NSLog (@"| |");
    NSLog (@"| %-31s |", [name UTF8String]);
    NSLog (@"| %-31s |", [email UTF8String]);
    NSLog (@"| |");
   
    NSLog (@"| |");
    NSLog (@"| |");
    NSLog (@"| O O |");
    NSLog (@"====================================");
}
-(BOOL) isEqual: (AddressCard *) theCard
{
    if ([name isEqualToString: theCard.name] == YES &&
        [email isEqualToString: theCard.email] == YES)
        return YES;
    else
        return NO;
}
-(NSComparisonResult) compareNames: (id) element
{
    return [name compare: [element name]];
}
@end
