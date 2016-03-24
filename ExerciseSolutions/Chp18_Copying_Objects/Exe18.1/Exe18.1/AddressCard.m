//
//  AddressCard.m
//  Exe18.1
//
//  Created by kongyunpeng on 3/21/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
-(id)copyWithZone:(NSZone *)zone {
    AddressCard *card = [[[self class] allocWithZone:zone] init];
    if (card) {
        card.name = self.name  ;
        card.email = self.email ;
        return card;
    }
    return nil;
}
-(void)print  {
    NSLog(@"the address card is %@ %@",_name,_email);
}
@end
