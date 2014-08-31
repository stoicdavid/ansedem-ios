//
//  ViewController.m
//  ansedem
//
//  Created by David Rodriguez on 11/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationBar+FixedHeightWhenStatusBarHidden.h"

@interface ViewController ()



@end

@implementation ViewController


            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo2_03.png"]];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"logo3_01.png"] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.topItem.title = @"";
    self.navigationController.navigationBar.fixedHeightWhenStatusBarHidden = YES;
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.endingPointForDosis = CGPointMake(80,317.5);
    self.endingPointForLocal = CGPointMake(109.5,141);
    self.endingPointForWeb = CGPointMake(217.5,234);
    self.endingPointForScale = CGPointMake(225.5,378);
    self.endingPointForInfo = CGPointMake(128.5,491);
    
    self.dosisBtn.frame = CGRectMake(0 - 100,
                                     self.endingPointForDosis.y - 200 ,
                                     CGRectGetWidth(self.dosisBtn.frame),
                                     CGRectGetHeight(self.dosisBtn.frame));
    UISnapBehavior *showDosisBtn = [[UISnapBehavior alloc] initWithItem:self.dosisBtn snapToPoint:self.endingPointForDosis];
    showDosisBtn.damping = 1;
    
    
    self.localizationBtn.frame = CGRectMake(0 - 100,
                                            self.endingPointForLocal.y - 200 ,
                                            CGRectGetWidth(self.localizationBtn.frame),
                                            CGRectGetHeight(self.localizationBtn.frame));
    UISnapBehavior *showLocalBtn = [[UISnapBehavior alloc] initWithItem:self.localizationBtn snapToPoint:self.endingPointForLocal];
    showLocalBtn.damping = 0.8;
    
    self.webBtn.frame = CGRectMake(0 - 100,
                                   self.endingPointForWeb.y - 200 ,
                                   CGRectGetWidth(self.webBtn.frame),
                                   CGRectGetHeight(self.webBtn.frame));
    UISnapBehavior *showWebBtn = [[UISnapBehavior alloc] initWithItem:self.webBtn snapToPoint:self.endingPointForWeb];
    showWebBtn.damping = 0.8;
    
    self.scaleBtn.frame = CGRectMake(0 - 100,
                                     self.endingPointForScale.y - 200,
                                     CGRectGetWidth(self.scaleBtn.frame),
                                     CGRectGetHeight(self.scaleBtn.frame));
    UISnapBehavior *showScaleBtn = [[UISnapBehavior alloc] initWithItem:self.scaleBtn snapToPoint:self.endingPointForScale];
    showScaleBtn.damping = 0.8;
    
    self.infoBtn.frame = CGRectMake(0 - 100,
                                    self.endingPointForInfo.y - 200,
                                    CGRectGetWidth(self.infoBtn.frame),
                                    CGRectGetHeight(self.infoBtn.frame));
    UISnapBehavior *showInfoBtn = [[UISnapBehavior alloc] initWithItem:self.infoBtn snapToPoint:self.endingPointForInfo];
    showInfoBtn.damping = 0.8;
    UIDynamicItemBehavior *prueba = [[UIDynamicItemBehavior alloc] initWithItems:@[self.dosisBtn,self.localizationBtn,self.webBtn,self.scaleBtn,self.infoBtn]];
    prueba.elasticity = 1.0f;
    
    [self.animator addBehavior:prueba];
    [self.animator addBehavior:showDosisBtn];
    [self.animator addBehavior:showLocalBtn];
    [self.animator addBehavior:showWebBtn];
    [self.animator addBehavior:showScaleBtn];
    [self.animator addBehavior:showInfoBtn];


    
}

- (void)viewDidAppear:(BOOL)animated{
    
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    // TODO: Uncomment the line below and set the frame of self.contentSubview using the topLayoutGuide
    self.contentView.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
    NSLog(@"%f",self.topLayoutGuide.length);

}


- (BOOL)prefersStatusBarHidden
{
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
