//
//  main.m
//  Exe18.1
//
//  Created by kongyunpeng on 3/21/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "AddressCard.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         有必要再加mutable copy的方法，因为其实例变量是有可变的版本的
         对于NSString有NSMutableString与之对应
         
         
         [theBook setBook:[NSMutableArray array]];
         外部传来的指针变量将拥有这个book，也就是说实例变量thebook和外部指针变量指向同一个内存
         这样外部的改变会影响实例变量
         声明book属性为copy或者覆写设值方法
         */
        
        AddressBook *theBook = [[AddressBook alloc] init];
        
        theBook.bookName = @"Jay Kong";
        
        
        AddressCard *card = [[AddressCard alloc] init];
        card.name = @"Fina Fu";
        card.email = @"fiona0736@hotmail.com";
        
        
        AddressCard *newCard = [card copy];
        [newCard print];
        
        
        
        theBook.book[0] = card;
        
        
        
        [theBook print];
        
        AddressBook *newBook = [theBook copy];
        
        NSLog(@"-------------------------------\n");
        [newBook print];                                                                                     
        
        
        
        
        
    }
    return 0;
}
