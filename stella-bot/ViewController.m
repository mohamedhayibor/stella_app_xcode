//
//  ViewController.m
//  stella-bot
//
//  Created by Mohamed Hayibor on 6/25/16.
//  Copyright © 2016 Mohamed Hayibor. All rights reserved.
//

#import "ViewController.h"
#import "BackgroundLayer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
   
       // Create the colors
    CAGradientLayer *bgLayer = [BackgroundLayer customGradient];
    bgLayer.frame = self.view.bounds;
    [self.view.layer insertSublayer:bgLayer atIndex:0];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
