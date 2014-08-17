//
//  CountryAnnotation.h
//  ansedem
//
//  Created by David Rodriguez on 17/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface CountryAnnotation : NSObject <MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;

@end
