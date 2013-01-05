//
// Created by agoodattitude on 25/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//

#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h"

@interface EstablishmentBrowseController : UIViewController <UITableViewDataSource, UITableViewDelegate, MKMapViewDelegate> {
    IBOutlet MKMapView* mapView;
    IBOutlet UITableView* establishmentsTable;
}

@property (nonatomic, retain) MKMapView* mapView;
@property (nonatomic, retain) UITableView* establishmentsTable;

- (IBAction)revealMenu:(id)sender;

@end