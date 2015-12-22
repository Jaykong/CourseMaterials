//
//  AddressCard.h
//  Program 15.10 AddressCard
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard: NSObject
 @property (copy, nonatomic) NSString *name, *email;
-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *) name;
-(NSString *) email;
-(void) print;
@end
