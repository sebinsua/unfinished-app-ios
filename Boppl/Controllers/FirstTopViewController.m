//
// Created by agoodattitude on 25/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "FirstTopViewController.h"


@implementation FirstTopViewController

- (void)viewWillAppear:(BOOL)animated
{
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
}

@end