//
// Created by agoodattitude on 05/01/2013.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "DrinksSlidingViewController.h"
#import "CheckoutViewController.h"


@implementation DrinksSlidingViewController

- (IBAction)revealCheckout:(id)sender
{
    [self.slidingViewController anchorTopViewTo:ECLeft];
}

/*
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
*/

- (void)viewWillAppear:(BOOL)animated
{
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DrinkBrowse"];
    if (![self.slidingViewController.underRightViewController isKindOfClass:[CheckoutViewController class]]) {
        self.slidingViewController.underRightViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"CheckoutView"];
    }
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];

    [self.slidingViewController setAnchorLeftRevealAmount:240.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
}

@end