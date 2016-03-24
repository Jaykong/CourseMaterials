//
//  AddressCard.m
//  Exe19.4
//
//  Created by kongyunpeng on 3/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
- (instancetype)initWithCoder:(NSCoder *)coder
{
   _name = [coder decodeObjectForKey:@"AddressCardName"];
    _email = [coder decodeObjectForKey:@"AddressCardEmail"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:_name forKey:@"AddressCardName"];
    [coder encodeObject:_email forKey:@"AddressCardEmail"];
    
}
@end
