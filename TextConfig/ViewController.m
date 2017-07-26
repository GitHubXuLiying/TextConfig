//
//  ViewController.m
//  TextConfig
//
//  Created by xuliying on 2017/4/10.
//  Copyright © 2017年 xly. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+AttributedString.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *testLab = [[UILabel alloc] initWithFrame:self.view.frame];
    testLab.backgroundColor = [UIColor lightGrayColor];
    testLab.text = @"我是大，我是小，我是黄色，我是红色，我是blue";
    testLab.numberOfLines = 0;
    testLab.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:testLab];
    
    [testLab set_DesignatedText:@"大" font:[UIFont systemFontOfSize:20]];
    [testLab set_DesignatedText:@"小" font:[UIFont systemFontOfSize:10]];
    [testLab set_DesignatedText:@"黄" color:[UIColor yellowColor]];
    [testLab set_DesignatedText:@"红" color:[UIColor redColor]];
    [testLab set_DesignatedText:@"blue" color:[UIColor blueColor]];
    [testLab set_TextColor:[UIColor orangeColor] range:NSMakeRange(0, 1)];
    [testLab set_TextFont:[UIFont systemFontOfSize:20] range:NSMakeRange(0, 1)];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
