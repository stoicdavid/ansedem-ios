//
//  LabCalloutView.m
//  ansedem
//
//  Created by David Rodriguez on 31/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import "LabCalloutView.h"

@implementation LabCalloutView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
            label.backgroundColor = [UIColor clearColor];
            label.font = [UIFont systemFontOfSize:17.0];
            label.translatesAutoresizingMaskIntoConstraints = NO;
            label;
        });
        [self addSubview:self.titleLabel];
        
        self.subtitleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
            label.backgroundColor = [UIColor clearColor];
            label.font = [UIFont systemFontOfSize:12.0];
            label.textColor = [UIColor darkGrayColor];
            label.translatesAutoresizingMaskIntoConstraints = NO;
            label;
        });
        [self addSubview:self.subtitleLabel];
        
        self.address2 = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
            label.backgroundColor = [UIColor clearColor];
            label.font = [UIFont systemFontOfSize:12.0];
            label.textColor = [UIColor darkGrayColor];
            label.translatesAutoresizingMaskIntoConstraints = NO;
            label;
        });
        [self addSubview:self.address2];
        
        self.address3 = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
            label.backgroundColor = [UIColor clearColor];
            label.font = [UIFont systemFontOfSize:12.0];
            label.textColor = [UIColor darkGrayColor];
            label.translatesAutoresizingMaskIntoConstraints = NO;
            label;
        });
        [self addSubview:self.address3];
        
        self.phone = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
            label.backgroundColor = [UIColor clearColor];
            label.font = [UIFont systemFontOfSize:12.0];
            label.textColor = [UIColor darkGrayColor];
            label.translatesAutoresizingMaskIntoConstraints = NO;
            label;
        });
        [self addSubview:self.phone];
        
        self.email = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
            label.backgroundColor = [UIColor clearColor];
            label.font = [UIFont systemFontOfSize:12.0];
            label.textColor = [UIColor darkGrayColor];
            label.translatesAutoresizingMaskIntoConstraints = NO;
            label;
        });
        [self addSubview:self.email];
        
        NSDictionary *viewMetrics = @{@"bigLabelHeight": @(21.0),
                                      @"smallLabelHeight": @(15.0),
                                      @"labelWidth": @(216.0),
                                      @"horizontalPadding": @(13.0),
                                      @"verticalPadding": @(3.0),
                                      @"verticalSpacing": @(0.0)};
        id titleLabel = self.titleLabel;
        id subtitleLabel = self.subtitleLabel;
        id address2 = self.address2;
        id address3 = self.address3;
        id phone = self.phone;
        id email = self.email;
        NSDictionary *views = NSDictionaryOfVariableBindings(titleLabel, subtitleLabel, address2,address3,phone,email);
        
        NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-verticalPadding-[titleLabel(bigLabelHeight)]-verticalSpacing-[subtitleLabel(smallLabelHeight)]-verticalSpacing-[address2(smallLabelHeight)]-verticalSpacing-[address3(smallLabelHeight)]-verticalSpacing-[phone(smallLabelHeight)]-verticalSpacing-[email(smallLabelHeight)]-verticalPadding-|"
                                                                               options:0
                                                                               metrics:viewMetrics
                                                                                 views:views];
        [self addConstraints:verticalConstraints];
        
        NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"|-horizontalPadding-[titleLabel(labelWidth)]-horizontalPadding-|"
                                                                                 options:0
                                                                                 metrics:viewMetrics
                                                                                   views:views];
        horizontalConstraints = [horizontalConstraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-horizontalPadding-[subtitleLabel(labelWidth)]-horizontalPadding-|"
                                options:0
                                metrics:viewMetrics
                                  views:views]];
        horizontalConstraints = [horizontalConstraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-horizontalPadding-[address2(labelWidth)]-horizontalPadding-|"
                                options:0
                                metrics:viewMetrics
                                views:views]];
        [self addConstraints:horizontalConstraints];
        
        horizontalConstraints = [horizontalConstraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-horizontalPadding-[address3(labelWidth)]-horizontalPadding-|"
                                options:0
                                metrics:viewMetrics
                                  views:views]];
        [self addConstraints:horizontalConstraints];
        
        horizontalConstraints = [horizontalConstraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-horizontalPadding-[phone(labelWidth)]-horizontalPadding-|"
                                                                                                                             options:0
                                                                                                                             metrics:viewMetrics
                                                                                                                               views:views]];
        
        [self addConstraints:horizontalConstraints];
        
        horizontalConstraints = [horizontalConstraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-horizontalPadding-[email(labelWidth)]-horizontalPadding-|"
                                                                                                                             options:0
                                                                                                                             metrics:viewMetrics
                                                                                                                               views:views]];
        [self addConstraints:horizontalConstraints];
        
        self.layer.anchorPoint = CGPointMake(0.5, 1.0);
        self.layer.backgroundColor = [UIColor whiteColor].CGColor;
        self.layer.borderColor = [UIColor colorWithRed:0.890 green:0.875 blue:0.843 alpha:1.000].CGColor;
        self.layer.borderWidth = 0.5;
        self.layer.cornerRadius = 8.0;
        self.layer.masksToBounds = YES;
    }
    return self;
}


@end
