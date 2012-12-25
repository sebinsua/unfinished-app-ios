//
// Created by agoodattitude on 25/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MenuViewController.h"


@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.slidingViewController setAnchorRightRevealAmount:280.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
}

@end