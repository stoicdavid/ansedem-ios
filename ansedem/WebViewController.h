//
//  WebViewController.h
//  ansedem
//
//  Created by David Rodriguez on 15/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *browser;

- (void)loadRequestFromString:(NSString*)urlString;

@end
