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
-(void) assignName: (NSString *) theName andEmail: (NSString *) theEmail
{
    name = theName;
    email = theEmail;
}
-(AddressCard *) copyWithZone: (NSZone *) zone
{
    AddressCard *newCard = [[AddressCard allocWithZone: zone] init];
    [newCard assignName: name andEmail: email];
    return newCard;
}

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    name = theName;
    email = theEmail;
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
@end
