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
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) print;
-(BOOL) isEqual: (AddressCard *) theCard;
@end
