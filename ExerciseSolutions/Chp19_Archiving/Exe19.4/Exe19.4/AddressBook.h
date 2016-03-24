//
//  AddressBook.h
//  Exe19.4
//
//  Created by kongyunpeng on 3/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressBook : NSObject <NSCoding>
@property(nonatomic,copy)NSString *bookName;
@property(nonatomic,strong)NSMutableArray *book;
@end
