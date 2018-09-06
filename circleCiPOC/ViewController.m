//
//  ViewController.m
//  circleCiPOC
//
//  Created by Jerry Shi on 2018-09-06.
//  Copyright © 2018 Jerry Shi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)createLabel {
    float width = 200;
    float height = 100;
    float x_pos = 100;
    float y_pos = 150;
    CGRect labelLocation = CGRectMake(x_pos, y_pos, width, height);
    self.label = [[UILabel alloc]initWithFrame:labelLocation];
    self.label.text = @"Text";
    self.label.textAlignment = UITextAlignmentCenter;
    self.label.textColor = [UIColor blackColor];
    self.label.backgroundColor = [UIColor clearColor];
    self.label.center = CGPointMake(self.view.center.x, 150);
    [self.view addSubview:self.label];
}

- (void)createTextField {
    float width = 200;
    float height = 30;
    float x_pos = 100;
    float y_pos = 300;
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(x_pos, y_pos, width, height)];
    self.textField.textColor = [UIColor darkGrayColor];
    self.textField.font = [UIFont fontWithName:@"Helvetica" size:17];
    self.textField.backgroundColor=[UIColor whiteColor];
    self.textField.placeholder=@"Enter text here";
    self.textField.center = CGPointMake(self.view.center.x, 300);
    [self.textField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:self.textField];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.]
    [self createLabel];
    [self createTextField];
    
    //create button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [button sizeToFit];
    button.center = CGPointMake(self.view.center.x, 350);
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonPressed:(UIButton *)button {
    self.label.text = self.textField.text;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
