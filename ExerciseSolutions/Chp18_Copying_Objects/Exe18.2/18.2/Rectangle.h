//
//  Rectangel.h
//  18.2
//
//  Created by kongyunpeng on 3/22/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYPoint;
@interface Rectangle : NSObject<NSCopying>
@property(nonatomic,assign) int width,height;
@property(nonatomic,copy) XYPoint *origin;
-(instancetype)initWithWidth:(int)w height:(int)h origin:(XYPoint *)origin ;
-(void)print;
@end
