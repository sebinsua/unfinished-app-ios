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

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad
{
    CGRect frame = CGRectMake(45.0, 5.0, self.view.bounds.size.width - 50.0, 44.0);

    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:frame];
    [[searchBar.subviews objectAtIndex:0] removeFromSuperview];
    searchBar.backgroundColor = [UIColor clearColor];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(revealMenu:) forControlEvents:UIControlEventTouchDown];
    [button setTitle:@"H" forState:UIControlStateNormal];
    button.frame = CGRectMake(10.0, 10.0, 30.0, 35.0);

    [self.view addSubview:button];
    [self.view addSubview:searchBar];

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