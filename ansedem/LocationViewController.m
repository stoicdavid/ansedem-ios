//
//  LocationViewController.m
//  ansedem
//
//  Created by David Rodriguez on 16/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import "LocationViewController.h"
#import "CountryAnnotation.h"
#import "LabCalloutView.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_03.png"]];
    self.navigationController.navigationBar.topItem.title = @"";
    
    self.mapLocations = @[@{@"name":@"Hospira Argentina",
                            @"lat":@-34.516024,
                            @"long":@-58.474874,
                            @"address":@"Bartolome Cruz 1818",
                            @"address2":@"Piso 5 Vicente López,",
                            @"address3":@"Buenos Aires",
                            @"phone":@"+54 11 4003 0100",
                            @"email":@"ansedem.ar@hospira.com"},
                          @{@"name":@"Hospira Brasil",
                            @"lat":@-23.604661,
                            @"long":@-46.692461,
                            @"address":@"Av. Luis Carlos Berrini 901-1",
                            @"address2":@"Andar Bairro Cidade Moncoes CEP 04571-010",
                            @"address3":@"Sao Paulo, Brasil",
                            @"phone":@"+55 11 5508 3100",
                            @"email":@"ansedem.br@hospira.com"},
                          @{@"name":@"Hospira Chile",
                            @"lat":@-33.414357,
                            @"long":@-70.594025,
                            @"address":@"Isidora Goyenechea 3477",
                            @"address2":@"oficina 71 Piso 9",
                            @"address3":@"Las Condes Santiago",
                            @"phone":@"+56 22 873 9400",
                            @"email":@"ansedem.cl@hospira.com"},
                          @{@"name":@"Hospira Colombia",
                            @"lat":@4.661659,
                            @"long":@-74.056753,
                            @"address":@"Calle 76-1135",
                            @"address2":@"Piso 6 Bogotá,",
                            @"address3":@"Colombia",
                            @"phone":@"+57 13 376 6500",
                            @"email":@"ansedem.co@hospira.com"},
                          @{@"name":@"Hospira México",
                            @"lat":@19.364703,
                            @"long":@-99.266810,
                            @"address":@"Av. Prolongación Paseo de la Reforma 1015",
                            @"address2":@"Torre 'A' piso 20-1",
                            @"address3":@"Delegación Álvaro Obregón",
                            @"phone":@"+52 55 3067 4376",
                            @"email":@"ansedem.mx@hospira.com"},
                          @{@"name":@"Hospira Perú",
                            @"lat":@-12.098144,
                            @"long":@-77.027233,
                            @"address":@"Av. República de Colombia 791,",
                            @"address2":@"Edificio Plaza República Torre I Piso 8",
                            @"address3":@"San Isidro. Lima, Perú.",
                            @"phone":@"+51 615 6300",
                            @"email":@"ansedem.pe@hospira.com"}
                          
                          ];
    self.mapa.delegate=self;
    CLLocationCoordinate2D startCenter =
        CLLocationCoordinate2DMake([self.mapLocations[self.locationIndex][@"lat"] doubleValue],
                                   [self.mapLocations[self.locationIndex][@"long"] doubleValue]);
    
    CLLocationDistance regionWidth = 500;
    CLLocationDistance regionHeight = 500;
    
    CountryAnnotation *annotation = [[CountryAnnotation alloc]init];
    annotation.coordinate = startCenter;
    annotation.title = self.mapLocations[self.locationIndex][@"name"];
    annotation.subtitle = self.mapLocations[self.locationIndex][@"address"];
    [self.mapa addAnnotation:annotation];
    
    
    MKCoordinateRegion startRegion = MKCoordinateRegionMakeWithDistance(startCenter, regionWidth, regionHeight);
    self.mapa.showsUserLocation =NO;
    [self.mapa setCenterCoordinate:startCenter
                          animated:YES];
    [self.mapa setRegion:startRegion
                animated:YES];
    
    

    
    CLLocationManager *locationManager = [[CLLocationManager alloc]init];

    
    
    
    
    //[locationManager requestWhenInUseAuthorization];
    //[locationManager startUpdatingLocation];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
   
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{

    MKAnnotationView *view = [self.mapa dequeueReusableAnnotationViewWithIdentifier:@"annoView"];
    
    if([annotation isKindOfClass:[MKUserLocation class]]){
        return nil;
    }
    
    if(!view){
        view = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"annoView"];
    }
    view.image = [UIImage imageNamed:@"pin_03.png"];
    view.canShowCallout = NO;
    view.centerOffset = CGPointMake(-5, -20);
    view.selected = YES;
    
    LabCalloutView *bubble = [[LabCalloutView alloc]initWithFrame:CGRectMake(0, 0, 242, 101)];
    bubble.titleLabel.text = view.annotation.title;
    bubble.subtitleLabel.text = view.annotation.subtitle;
    bubble.address2.text = self.mapLocations[self.locationIndex][@"address2"];
    bubble.address3.text = self.mapLocations[self.locationIndex][@"address3"];
    bubble.phone.text = self.mapLocations[self.locationIndex][@"phone"];
    bubble.email.text = self.mapLocations[self.locationIndex][@"email"];
    
    bubble.center = CGPointMake(CGRectGetWidth(view.bounds) / 2.0, 0.0);
    [view addSubview:bubble];
    
    return view;
}

- (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view {
    for (UIView *subview in view.subviews) {
        if (![subview isKindOfClass:[LabCalloutView class]]) {
            continue;
        }
        
        [subview removeFromSuperview];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
