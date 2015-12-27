//
//  Person.m
//  Phase1_Exam
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name {
    return _name;
}
-(void)setAge:(NSInteger)age {
    _age = age;
}
-(NSInteger)age {
    return _age;
}
-(void)setIsMarried:(BOOL)isMarried {
    _isMarried = isMarried;
}
-(BOOL)isMarried {
    return _isMarried;
}

-(void)print {
    NSLog(@"the name is :%@,age%li,isMarried%i",_name,_age,_isMarried);
}
-(instancetype)initWithName:(NSString *)name age:(NSInteger)age isMarried:(BOOL)isMarried {
    self = super.init;
    if (self) {
        _name = name;
        _age = age;
        _isMarried = isMarried;
    }
    return self;
}
@end
