//
// Created by agoodattitude on 25/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <MapKit/MapKit.h>
#import "EstablishmentBrowseController.h"


@implementation EstablishmentBrowseController

- (IBAction)revealMenu:(id)sender
{
    [self.slidingViewController anchorTopViewTo:ECRight];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

// @todo: This is a cheat. The better solution is: http://stackoverflow.com/questions/14042663
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 200.0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 200)];
    return mapView;
}

// SegueToDrinkCategoryBrowse
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"SegueToDrinkCategoryBrowse" sender:self];
}

@end