//
//  AddressCard.h
//  NSIndexSet
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSArray *book;
}
-(NSIndexSet *) lookupAll: (NSString *) theName;

@end
