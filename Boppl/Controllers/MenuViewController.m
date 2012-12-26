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

    [self.slidingViewController setAnchorRightRevealAmount:60.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   if (indexPath.row == 0) {
        NSString *identifier = @"FirstTop";

        UIViewController *newTopViewController = [self.storyboard instantiateViewControllerWithIdentifier:identifier];

        CGRect frame = self.slidingViewController.topViewController.view.frame;
        self.slidingViewController.topViewController = newTopViewController;
        self.slidingViewController.topViewController.view.frame = frame;
        [self.slidingViewController resetTopView];
    }

}

@end