//
//  OTGMainViewController.m
//  CoreTextMagazine
//
//  Created by Xu Xian on 14-7-7.
//  Copyright (c) 2014年 Xu Xian. All rights reserved.
//

#import "OTGMainViewController.h"

@interface OTGMainViewController ()

@end

@implementation OTGMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
