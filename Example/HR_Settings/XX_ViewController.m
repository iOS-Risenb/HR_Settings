//
//  XX_ViewController.m
//  HR_Settings
//
//  Created by obgniyum on 12/26/2017.
//  Copyright (c) 2017 obgniyum. All rights reserved.
//

#import "XX_ViewController.h"
#import "HR_Settings.h"

@interface XX_ViewController ()

@end

@implementation XX_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    HR_Settings.HR_Home();
    HR_Settings.HR_URL(@"App-Prefs:root=MUSIC");
//    HR_Settings.HR_URL(@"App-Prefs:root=General&path=About");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
