//
// Created by agoodattitude on 06/01/2013.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "SecondTopViewController.h"


@implementation SecondTopViewController

- (void)viewWillAppear:(BOOL)animated
{
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];

    [self.slidingViewController setAnchorRightRevealAmount:60.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
}

@end