//
//  main.m
//  Program 15.10 AddressCard
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "AddressCard.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        
        [card1 print];
        
        
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        AddressCard *card1 = [[AddressCard alloc] init];
    }
    return 0;
}
