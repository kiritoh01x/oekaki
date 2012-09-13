//
//  Line.h
//  oekaki
//
//  Created by techcamp on 12/09/12.
//  Copyright (c) 2012年 techcamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Line : NSObject{
    UIColor *color; //色
    double lineWidth;   //横幅
    NSMutableArray *points; //一つの線内の点
}

@end
