//
//  ViewController.h
//  ansedem
//
//  Created by David Rodriguez on 11/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *dosisBtn;
@property (weak, nonatomic) IBOutlet UIButton *localizationBtn;
@property (weak, nonatomic) IBOutlet UIButton *webBtn;
@property (weak, nonatomic) IBOutlet UIButton *scaleBtn;
@property (weak, nonatomic) IBOutlet UIButton *infoBtn;

@property (strong, nonatomic) UIDynamicAnimator *animator;

@property (assign, nonatomic) CGPoint endingPointForDosis;
@property (assign, nonatomic) CGPoint endingPointForLocal;
@property (assign, nonatomic) CGPoint endingPointForWeb;
@property (assign, nonatomic) CGPoint endingPointForScale;
@property (assign, nonatomic) CGPoint endingPointForInfo;

@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

