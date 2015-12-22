//
//  main.m
//  Program 15.12 AddressBook
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc]
                               initWithName: @"Linda’s Address Book"];
        NSLog (@"Entries in address book after creation: %li",
               [myBook entries]);
        // Now set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        NSLog (@"Entries in address book after adding cards: %li",
               [myBook entries]);
        // List all the entries in the book now
        [myBook list];
        
        // Look up a person by name
        NSLog (@"Stephen Kochan");
      AddressCard  *myCard = [myBook lookup: @"stephen kochan"];
        if (myCard != nil)
            [myCard print];
        
        else
            NSLog (@"Not found!");
        // Try another lookup
        NSLog (@"Haibo Zhang");
        myCard = [myBook lookup: @"Haibo Zhang"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
    }
    return 0;
}

/*
 Program 15.12 Output
 Entries in address book after creation: 0
 Entries in address book after adding cards: 4
 ======== Contents of: Linda’s Address Book =========
 Julia Kochan jewls337@axlc.com
 Tony Iannino tony.iannino@techfitness.com
 Stephen Kochan steve@classroomM.com
 Jamie Baker jbaker@classroomM.com
 ====================================================
 */
