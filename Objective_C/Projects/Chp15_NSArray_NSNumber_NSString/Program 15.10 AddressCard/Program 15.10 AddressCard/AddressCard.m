//
//  AddressCard.m
//  Program 15.10 AddressCard
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
 //@synthesize name, email;


{
    NSString *name;
    NSString *email;
}


-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    self.name = theName;
    self.email = theEmail;
}
-(void) setName: (NSString *) theName
{
    name = [NSString stringWithString: theName];
}
-(void) setEmail: (NSString *) theEmail
{
    email = [NSString stringWithString: theEmail];
}
//
//-(void) setName: (NSString *) theName
//{
//    if (name != theName)
//        name = [NSString stringWithString: theName];
//}
//-(void) setEmail: (NSString *) theEmail
//{
//    if (email != theEmail)
//        email = [NSString stringWithString: theEmail];
//}
//-(void) setName: (NSString *) theName
//{
//    name = theName;
//}
//-(void) setEmail: (NSString *) theEmail
//{
//    email = theEmail;
//}

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
