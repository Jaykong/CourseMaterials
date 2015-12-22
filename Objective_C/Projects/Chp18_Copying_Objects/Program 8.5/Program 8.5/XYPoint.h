//
//  XYPoint.h
//  Program 8.5
//
//  Created by kongyunpeng on 12/22/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject <NSCopying>
@property int x,y;
-(void)setX:(int)x andY:(int)y;
@end
