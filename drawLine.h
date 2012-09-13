//
//  drawLine.h
//  oekaki
//
//  Created by techcamp on 12/09/12.
//  Copyright (c) 2012年 techcamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Line;
@interface drawLine : UIViewController{
    
    NSMutableArray *lines;  //線を管理する配列
    Line *line; //１本の線
    UIColor *lineColor; //線色
    float lineWidth;    //線の幅
    
    UISegmentedControl *colorSegmentControl;    //アウトレット用インスタンス変換
}

//ボタンアクション
-(IBAction)changeColor:(id)sender;
-(IBAction)undo:(id)sender;
-(IBAction)clearImage:(id)sender;
-(IBAction)saveToPhotoAlbum:(id)sender;

@property (nonatomic, retain)IBOutlet UISegmentedControl *colorSegmentControl;  //アウトレット用プロパティ
@property (retain) NSMutableArray *lines;
@property (retain) UIColor *lineColor;

@end