//
//  CalculatorViewController.h
//  ansedem
//
//  Created by David Rodriguez on 12/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DosageCalculatorModel.h"

@interface CalculatorViewController : UIViewController <UITextFieldDelegate>

@property (strong,nonatomic) DosageCalculatorModel *calculator;
@property (weak, nonatomic) IBOutlet UILabel *results;
@property (weak, nonatomic) IBOutlet UITextField *kilog;
@property (weak, nonatomic) IBOutlet UITextField *dosis;
@property (nonatomic) BOOL clearField;



- (IBAction)calculateDose:(id)sender;
- (void) refreshUI;

@end
