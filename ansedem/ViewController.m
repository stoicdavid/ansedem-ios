//
//  ViewController.m
//  ansedem
//
//  Created by David Rodriguez on 11/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_03.png"]];

    self.navigationController.navigationBar.topItem.title = @"";

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
