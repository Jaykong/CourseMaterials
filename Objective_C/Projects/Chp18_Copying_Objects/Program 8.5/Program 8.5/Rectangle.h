//
//  Rectangle.h
//  Program 8.5
//
//  Created by kongyunpeng on 12/22/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
@interface Rectangle : NSObject
@property double width,height;
-(void)setWidth:(double)w andHeight:(double)h;
@property(nonatomic,copy) XYPoint *origin;
@end
