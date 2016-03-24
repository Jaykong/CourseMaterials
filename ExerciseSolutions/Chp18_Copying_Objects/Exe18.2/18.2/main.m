//
//  main.m
//  18.2
//
//  Created by kongyunpeng on 3/22/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "Rectangle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         
         因为实例变量width,height 是值类型
         XYPoint所属的实例变量也是值类型，所以没有必要实现mutable copy
         值类型赋值就是复制一个副本，并没有相应的mutable之说。
         反过来说，如果值类型可以做mutable copy，那么对值类型的赋值就不是复制一个副本了
         
         */
        
        XYPoint *origin = [[XYPoint alloc] initWithX:10 y:12];
        Rectangle *rect = [[Rectangle alloc ]initWithWidth:10 height:10 origin:origin];
        [rect print];
        Rectangle *newRect = [rect copy];
        [newRect print];
        
        [origin setX:15];
        [origin setY:20];
        [rect print];
        
        
        
        
        
        
    }
    return 0;
}
