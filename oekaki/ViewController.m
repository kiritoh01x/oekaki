//
//  ViewController.m
//  oekaki
//
//  Created by techcamp on 12/09/12.
//  Copyright (c) 2012年 techcamp. All rights reserved.
//

#import "ViewController.h"
#import "drawLine.h"


@interface ViewController()
@property (weak, nonatomic) IBOutlet UIButton *makeLine;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *rankView;

@end

@implementation ViewController
@synthesize makeLine;
@synthesize drawButton;
@synthesize rankView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDrawButton:nil];
    [self setMakeLine:nil];
    [self setRankView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

//線画作成画面へ
- (IBAction)makeLine:(id)sender {
}
//塗り絵画面へ
- (IBAction)drawButton:(id)sender {
}
//ランキング画面へ
- (IBAction)rankView:(id)sender {
}

@end
