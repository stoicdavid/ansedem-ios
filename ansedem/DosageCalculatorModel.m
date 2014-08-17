//
//  DosageCalculatorModel.m
//  ansedem
//
//  Created by David Rodriguez on 12/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import "DosageCalculatorModel.h"

@implementation DosageCalculatorModel

- (id) init
{
    self = [self initWithDefaultKg:0 Dose:0];
    return self;
}
- (id) initWithDefaultKg:(double)akilo Dose:(double)theDose
{
    self = [super init];
    if(self){
        self.kilo = akilo;
        self.dose = theDose;
    }
    return self;
}

- (double) calculateResult
{
    self.result = self.kilo*self.dose*0.25;
    return self.result;
}



@end
