//
//  ViewController.m
//  Button
//
//  Created by 鹏 刘 on 16/5/8.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UILabel *lb;
@property (nonatomic,strong)UIButton *bt;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    _lb = [[UILabel alloc] initWithFrame:CGRectMake(125, 45, 150, 55)];
    _lb.backgroundColor = [UIColor greenColor];

    _bt = [[UIButton alloc] initWithFrame:CGRectMake(160, 145, 70, 45)];
    [_bt setBackgroundImage:[UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];
    [_bt addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchDown];
    
    
    [self.view addSubview:_lb];
    [self.view addSubview:_bt];
}

- (IBAction)click:(id)sender
{
    if (!self.bt.selected) {
        self.lb.text = @"I'm a label!";
    }
    else if ((self.bt.selected = !self.bt.selected)) {
        self.lb.text = @"";
    }
}




@end
