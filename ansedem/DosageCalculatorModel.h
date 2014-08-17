//
//  DosageCalculatorModel.h
//  ansedem
//
//  Created by David Rodriguez on 12/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DosageCalculatorModel : NSObject{


}

@property (nonatomic) double kilo;
@property (nonatomic) double dose;
@property (nonatomic) double result;

- (id) init;
- (id) initWithDefaultKg:(double)akilo Dose:(double)theDose;

- (double) calculateResult;

@end
