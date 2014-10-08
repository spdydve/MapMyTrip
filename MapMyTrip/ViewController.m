//
//  ViewController.m
//  MapMyTrip
//
//  Created by David Kennedy on 10/7/14.
//  Copyright (c) 2014 David Kennedy. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@end

@implementation ViewController {
    GMSMapView *mapView_;
}


- (void)viewDidLoad {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;

    
//    //Controls whether the My Location dot and accuracy circle is enabled.
//    self.mapView.myLocationEnabled = YES;
//    //Controls the type of map tiles that should be displayed.
//    self.mapView.mapType = kGMSTypeNormal;
//    //Shows the compass button on the map
//    self.mapView.settings.compassButton = YES;
//    //Shows the my location button on the map
//    self.mapView.settings.myLocationButton = YES;
//    //Sets the view controller to be the GMSMapView delegate
//    self.mapView.delegate = self;
//    // - See more at: http:vikrambahl.com/google-maps-ios-xcode-storyboards/#sthash.YvpgnZlY.dpuf
    
}

@end
