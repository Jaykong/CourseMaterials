//
//  AddressCard.h
//  Program 15.10 AddressCard
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard: NSObject
 @property (assign, nonatomic) NSString *name, *email;
-(void) assignName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) print;
@end
