//
//  AddressCard.h
//  Exe18.1
//
//  Created by kongyunpeng on 3/21/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCopying>
@property(nonatomic,copy) NSString *name, *email;
-(void)print;
@end
