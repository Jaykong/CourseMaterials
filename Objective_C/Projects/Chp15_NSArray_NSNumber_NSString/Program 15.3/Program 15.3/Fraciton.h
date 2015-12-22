//
//  Fraciton.h
//  Program 15.3
//
//  Created by kongyunpeng on 12/20/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraciton : NSObject
@property int numerator,  denominator;

-(Fraciton *)add:(Fraciton *)f;
@end
