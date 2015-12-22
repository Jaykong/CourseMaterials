//
//  main.m
//  Program 15.10 AddressCard_@Property
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSMutableString *aName = [NSMutableString stringWithString:@"Julia Kochan"];
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        
        AddressCard *card2 = [[AddressCard alloc] init];
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [aName appendString:@"\'s father"];
        aEmail = @"kongyunpeng2011@sina.com";
        [card1 print];
        [card2 print];
       
    }
    return 0;
}
