//
//  XYPoint.m
//  Program 8.5
//
//  Created by kongyunpeng on 12/22/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
-(void)setX:(int)x andY:(int)y {
    _x = x;
    _y = y;
}
-(id)copyWithZone:(NSZone *)zone {
    XYPoint *point = [[[ self class] allocWithZone:zone] init];
    [point setX:_x andY:_y];
    return point;
}
@end
