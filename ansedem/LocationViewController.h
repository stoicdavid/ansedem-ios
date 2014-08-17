//
//  LocationViewController.h
//  ansedem
//
//  Created by David Rodriguez on 16/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface LocationViewController : UIViewController <MKMapViewDelegate>

@property (strong,nonatomic) NSString *countryLabName;
@property (nonatomic) int locationIndex;
@property (nonatomic,strong) NSArray *mapLocations;
@property (weak, nonatomic) IBOutlet MKMapView *mapa;


@end
