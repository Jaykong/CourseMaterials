//
//  AddressBook.m
//  Exe19.4
//
//  Created by kongyunpeng on 3/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

- (instancetype)init
{
    self = [super init];
    if (self) {
        _book = [NSMutableArray array];
    }
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder {
 _bookName = [aDecoder decodeObjectForKey:@"AddressBookBookName"];
    _book =   [aDecoder decodeObjectForKey:@"AddressBookBook"];
    return self;
}
-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_bookName forKey:@"AddressBookBookName"];
    [aCoder encodeObject:_book forKey:@"AddressBookBook"];
    
}
@end
