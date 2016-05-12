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
@property (nonatomic,strong)UIImageView *iv;
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
    
    _iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 400)];
    
    UIImage *img1 = [UIImage imageNamed:@"dog 1"];
    UIImage *img2 = [UIImage imageNamed:@"dog 2"];
    UIImage *img3 = [UIImage imageNamed:@"dog 3"];
    UIImage *img4 = [UIImage imageNamed:@"dog 4"];
    UIImage *img5 = [UIImage imageNamed:@"dog 5"];
    
    _iv.animationImages = [NSArray arrayWithObjects:img1,img2,img3,img4,img5, nil];
    _iv.animationDuration = 9;
    _iv.animationRepeatCount = 2;
    [_iv startAnimating];
    
    _iv.userInteractionEnabled = YES;
    UITapGestureRecognizer *tgr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tagImageView:)];
    [_iv addGestureRecognizer:tgr];
    
    
    [self.view addSubview:_lb];
    [self.view addSubview:_bt];
    [self.view addSubview:_iv];
}

- (IBAction)click:(id)sender
{
    self.bt.selected = !self.bt.selected;
    
    if (self.bt.selected == YES) {
        self.lb.text = @"I'm a label!";
    }
    else {
        self.lb.text = @"";
    }
}

- (IBAction)tagImageView:(id)sender
{
    _iv.transform = CGAffineTransformMakeScale(0.5,0.5);
}



@end
