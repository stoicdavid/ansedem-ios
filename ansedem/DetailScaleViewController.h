//
//  DetailScaleViewController.h
//  ansedem
//
//  Created by David Rodriguez on 16/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailScaleViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong,nonatomic) NSString *scaleName;
@property (nonatomic) int scaleIndex;
@property (nonatomic,strong) NSArray *scaleAssests;
@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
