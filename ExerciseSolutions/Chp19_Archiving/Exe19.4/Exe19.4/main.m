//
//  main.m
//  Exe19.4
//
//  Created by kongyunpeng on 3/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "AddressCard.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressBook *addressBook = [[AddressBook alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
          AddressCard *card1 = [[AddressCard alloc] init];
        card1.name = @"jay kong";
        card1.email = @"kongyunpeng2011@sina.com";
        
        card2.name = @"gregory";
        card2.email = @"gregory2011@163.com";
        
        [addressBook.book addObject:card2];
        [addressBook.book addObject:card1];
        [ NSKeyedArchiver archiveRootObject: addressBook toFile:@"AddressBook.arch" ];
        
     
        NSProcessInfo *processInfo = [[NSProcessInfo alloc] init];
        NSArray *args = processInfo.arguments;
        NSString *lookupName = args[1];
        
        
     AddressBook *copyBook = [NSKeyedUnarchiver unarchiveObjectWithFile:@"AddressBook.arch" ];
        for (AddressCard *card in copyBook.book ){
           
            if ([card.name isEqualToString:lookupName]) {
                NSLog(@"the card %@ 's email is %@",card.name,card.email);
            }
        }
    }
    return 0;
}
