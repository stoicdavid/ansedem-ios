//
//  CalculatorViewController.m
//  ansedem
//
//  Created by David Rodriguez on 12/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import "CalculatorViewController.h"
#import "DosageCalculatorModel.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_03.png"]];
    self.calculator = [[DosageCalculatorModel alloc]initWithDefaultKg:self.kilog.text.doubleValue Dose:self.dosis.text.doubleValue];
    [self.kilog setText:@"0"];
    [self.kilog setTextColor:[UIColor lightGrayColor]];
    [self.kilog setTag:100]; //start tag with default 100
    
    [self.dosis setText:@"0"];
    [self.dosis setTextColor:[UIColor lightGrayColor]];
    
    self.kilog.delegate = self;
    self.dosis.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.clearField = YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    self.clearField = NO;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.clearField = NO;
    return self.clearField;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(self.clearField)
    {
        [textField setTextColor:[UIColor blackColor]];
        textField.text = string;
        self.clearField = NO;
    } else {
        textField.text = [textField.text stringByReplacingCharactersInRange:range withString:string];
    }
    return self.clearField;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) refreshUI{
    
    double resultado = self.calculator.calculateResult;
    NSString* myNewString = [NSString stringWithFormat:@"%.2f ml/hr", resultado];
    self.results.text = myNewString;
}

- (IBAction)calculateDose:(id)sender {
    self.calculator.kilo = self.kilog.text.doubleValue;
    self.calculator.dose = self.dosis.text.doubleValue;
    [self refreshUI];
    
}
@end
