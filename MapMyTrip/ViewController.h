//
//  ViewController.h
//  MapMyTrip
//
//  Created by David Kennedy on 10/7/14.
//  Copyright (c) 2014 David Kennedy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController : UIViewController // <GMSMapViewDelegate>
@property (strong, nonatomic) IBOutlet GMSMapView *mapView;


@end

