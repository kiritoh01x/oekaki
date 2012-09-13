//
//  Line.m
//  oekaki
//
//  Created by techcamp on 12/09/12.
//  Copyright (c) 2012年 techcamp. All rights reserved.
//

#import "Line.h"

@implementation Line
@synthesize color, points;
@synthesize lineWidth;

-(void)dealloc{
    [color release];
    [points release];
    [super dealloc];
}

@end
