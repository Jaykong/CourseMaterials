//
//  Rectangel.m
//  18.2
//
//  Created by kongyunpeng on 3/22/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"
@implementation Rectangle
-(id)copyWithZone:(NSZone *)zone {
   Rectangle *rect = [[self class]allocWithZone:zone];
    rect.width = self.width;
    rect.height = self.height;
    rect.origin = self.origin;
    return  rect;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        //_origin = [[XYPoint alloc]init];
    }
    return self;
}

-(instancetype)initWithWidth:(int)w height:(int)h origin:(XYPoint *)origin {
    self = [super init];
    if (self) {
        self.width = w;
        self.height = h;
        
        self.origin = origin;
    }
    return self;
}

-(void)print {
    NSLog(@"the Rectangel is (%i,%i,%i,%i)",_origin.x,_origin.y,_width,_height);
}
@end
