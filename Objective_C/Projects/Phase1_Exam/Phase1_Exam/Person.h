//
//  Person.h
//  Phase1_Exam
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
    BOOL _isMarried;
    
}
-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)setAge:(NSInteger)age;
-(NSInteger)age;
-(void)setIsMarried:(BOOL)isMarried;
-(BOOL)isMarried;
-(void)print;

-(void)wash;
-(void)walk;
-(void)run;
-(void)onFoot;

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age isMarried:(BOOL)isMarried;
@end
