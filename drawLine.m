//
//  ViewController.m
//  aaa
//
//  Created by techcamp on 12/09/12.
//  Copyright (c) 2012年 techcamp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//線を格納する配列を生成
    lines = [[NSMutableArray alloc] init];
    
    //背景色を白に変更
    self.view.backgroundColor = [UIColor whiteColor];
    //デフォルトの線の色を黒に
    lineColor = [UIColor blackColor];
    //線幅を５に設定
    lineWidth = 5.0;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    ((CanvasView *)(self.view)).lines = self.lines;
    
    //ひとつの線を格納するオブジェクトを生成
    line = [[Line alloc] init];
    line.color = lineColor;
    line.lineWidth = lineWidth;
    line.points = [[NSMutableArray alloc] init];
    //線を配列[lines]に格納
    [lines addObject:line];
    [line release];
    //現在のポイントを軌跡に追加
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    [line.points addObject:[NSValue valueWithCGPoint:point]];
    
    //viewを書き換える
    [self.view setNeedsDisplay];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    //現在のポイントを線に追加
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    [line.points addObject:[NSValue valueWithCGPoint:point]];
    
    //viewを書き換える
    [self.view setNeedsDisplay];
}

-(IBAction)clearImage:(id)sender{
    [lines removeAllObjects];
    [self.view setNeedsDisplay];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
