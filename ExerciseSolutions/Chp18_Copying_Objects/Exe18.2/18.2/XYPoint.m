//
//  XYPoint.m
//  18.2
//
//  Created by kongyunpeng on 3/22/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
-(id)copyWithZone:(NSZone *)zone {
   XYPoint *p = [[[self class]allocWithZone:zone] init];
    p.x = self.x;
    p.y = self.y;
    
    return p;
}

- (instancetype)initWithX:(int)x y:(int)y
{
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
    }
    return self;
}

-(void)print {
    NSLog(@"the point is (%i,%i)",_x,_y);
}
@end
