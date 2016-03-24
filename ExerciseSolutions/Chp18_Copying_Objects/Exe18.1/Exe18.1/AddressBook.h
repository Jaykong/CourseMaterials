//
//  AddressBook.h
//  Exe18.1
//
//  Created by kongyunpeng on 3/21/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressBook : NSObject<NSCopying>
@property(nonatomic,copy) NSString *bookName;
@property(nonatomic,strong) NSMutableArray *book;
-(void)print ;
@end
