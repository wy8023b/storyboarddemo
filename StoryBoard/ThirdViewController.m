//
//  ThirdViewController.m
//  StoryBoard
//
//  Created by wangye on 13-7-16.
//  Copyright (c) 2013年 wangye. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)openStoryboard:(id)sender {
    UIStoryboard *secondStoryboard = [UIStoryboard storyboardWithName:@"SecondStoryBoard" bundle:[NSBundle mainBundle]];
    [self presentViewController:[secondStoryboard instantiateInitialViewController] animated:YES completion:^(void){}];
}
@end
