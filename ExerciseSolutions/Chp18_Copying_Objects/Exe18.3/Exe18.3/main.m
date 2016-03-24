//
//  main.m
//  Exe18.3
//
//  Created by kongyunpeng on 3/22/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dic = @{@"age":@10,@"name":@"Jaykong"};
        NSDictionary *copyDic =  [dic copy];
        NSDictionary *mutableDic = [dic mutableCopy];
        NSLog(@"dic address:%d %p %p",_objc_rootRetainCount(dic),&dic,dic);
        NSLog(@"copyDic dic address:%d %p %p",_objc_rootRetainCount(copyDic),&copyDic,copyDic);
        NSLog(@"mutableDic dic address:%d %p %p",_objc_rootRetainCount(mutableDic),&mutableDic,mutableDic);
        
        /*
         结论：
         copy是浅复制
         而mutable copy是深复制
         
         分析：
         第一个输出参数_objc_rootRetainCount代表引用计数次数
         copy和原值相同说明其他们引用同一个对象
         
         第二个参数&dic是指输出指针所在的地址
         其中%p是指输出指针的地址
         三个值均不相同，说明他们的指针位置均不重复，指针是被复制了
         
         第三个参数是指对象所在的内存地址
         copy后的与原值相同说明实际的对象并未被复制是一个浅复制
         mutable copy后的与原值不同说明实际对象被复制是一个深拷贝
         
         
         */
        
        
    }
    return 0;
}
