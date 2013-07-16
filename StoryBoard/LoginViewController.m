//
//  LoginViewController.m
//  StoryBoard
//
//  Created by wangye on 13-7-16.
//  Copyright (c) 2013年 wangye. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
- (void)LoginIn:(id)sender;
@end

@implementation LoginViewController

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
    // Do any additional setup after loading the view from its nib.
    [UIApplication sharedApplication].statusBarHidden = YES;
    self.view.frame = [[UIScreen mainScreen] bounds];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGPoint btnOrgin = CGPointMake(self.view.frame.size.width/2-60.0f, self.view.frame.size.height/2-30.0f);
    CGSize btnSize = CGSizeMake(120.0f, 60.0f);
    CGRect rect = {btnOrgin,btnSize};
    btn.frame = rect;
    //NSLog(@"%f %f %f %f",rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);
    btn.center = self.view.center;
    //NSLog(@"%f %f",self.view.center.x,self.view.center.y);
    [btn setTitle:@"LoginIn" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(LoginIn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)LoginIn:(id)sender
{
    @try {
        /*
         if ([sender isKindOfClass:[UIButton class]]) {
         UIAlertView *alert =[ [UIAlertView alloc] initWithTitle:@"Login In" message:@"Login..." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
         [alert show];
          }
         */
        UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"MainStoryBoard" bundle:[NSBundle mainBundle]];
        [self presentViewController:[ mainStoryBoard instantiateInitialViewController] animated:YES completion:^(void){}];
    }
    @catch (NSException *exception) {
        NSLog(@"%@",[exception description]);
    }
    @finally {
    }
}

@end
