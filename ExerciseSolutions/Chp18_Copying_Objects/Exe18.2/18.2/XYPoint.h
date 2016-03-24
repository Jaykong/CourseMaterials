//
//  XYPoint.h
//  18.2
//
//  Created by kongyunpeng on 3/22/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject<NSCopying>
@property(nonatomic,assign) int x, y;
- (instancetype)initWithX:(int)x y:(int)y;
-(void)print;
@end
