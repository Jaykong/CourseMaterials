//
//  main.m
//  Program 16.9_ HTML contents from a Web address
//
//  Created by kongyunpeng on 12/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path = @"https://github.com/Jaykong/CourseMaterials/tree/master/ExerciseSolutions";
        NSURL *url = [NSURL URLWithString:path];
        NSString *contentsStr  = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
       // NSLog(@"%@",contentsStr);
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfURL:url];
        NSLog(@"%@",dic);
        NSArray *arr = [NSArray arrayWithContentsOfURL:url];
        NSLog(@"%@",arr);
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSLog(@"%@",data);
    }
    return 0;
}
