//
//  BurningFatViewController.m
//  HeartBeats
//
//  Created by jt3 on 15/3/19.
//  Copyright (c) 2015年 Christian Roman. All rights reserved.
//

#import "BurningFatViewController.h"


@interface BurningFatViewController ()

@end

@implementation BurningFatViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title=NSLocalizedString(@"cellTitle4", @"");
    self.view.backgroundColor = [UIColor blackColor];
    
    ZTypewriteEffectLabel *myLbl = [[ZTypewriteEffectLabel alloc] initWithFrame:CGRectMake(5, 0, ViewWidth-10, ViewHeight)];
    myLbl.tag = 10;
    myLbl.backgroundColor = [UIColor clearColor];
    myLbl.numberOfLines = 0;
    
    myLbl.text = NSLocalizedString(@"burningFatMainText", @"");
    
    myLbl.textColor = self.view.backgroundColor;
    
    
    myLbl.typewriteEffectColor = [UIColor greenColor];
    myLbl.hasSound = YES;
    myLbl.typewriteTimeInterval = 0.03;
    myLbl.typewriteEffectBlock = ^{
        
        
        
    };
    
    [self.view addSubview:myLbl];
    
    
    /** Z
     *	1秒后开始打印输出
     */
    [self performSelector:@selector(startOutPut) withObject:nil afterDelay:1];
}

-(void)startOutPut
{
    ZTypewriteEffectLabel *myLbl = (ZTypewriteEffectLabel *)[self.view viewWithTag:10];
    [myLbl startTypewrite];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
