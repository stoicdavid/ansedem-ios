//
//  DetailScaleViewController.h
//  ansedem
//
//  Created by David Rodriguez on 16/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeepInfoViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong,nonatomic) NSString *infoName;
@property (nonatomic) int infoIndex;
@property (nonatomic,strong) NSArray *infoAssests;
@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
