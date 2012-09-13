//
//  CanvasView.m
//  oekaki
//
//  Created by techcamp on 12/09/12.
//  Copyright (c) 2012年 techcamp. All rights reserved.
//

#import "CanvasView.h"
#import "Line.h"

@implementation CanvasView
@synthesize lines;

-(void)drawRect:(CGRect)rect{
    
    //lene配列から一つの線を取り出す
    for(Line *line in lines){
       //色を設定
        [line.color set];
        //１本の線を書く
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path setLineWidth:line.lineWidth];
        BOOL first = YES;
        for(NSValue* value in line.points){
            if(first){
                //初期位置に移動
                [path moveToPoint:[value CGPointValue]];
                first = NO;
            }
            //次のポイントに移動
            [path moveToPoint:[value CGPointValue]];
        }
        [path stroke];  //線を描画
    }
    
}

-(void)dealloc{
    [lines release];
    [super dealloc];
}

@end
