//
// Created by agoodattitude on 25/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MenuViewController.h"


@implementation MenuViewController

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Fuck it.");
    NSLog(NSStringFromClass([self.slidingViewController.topViewController class])) ;
    if (indexPath.row == 0 && [NSStringFromClass([self.slidingViewController.topViewController class]) isEqualToString: @"FirstTopViewController"] == NO) {
        NSString *identifier = @"FirstTop";
        UIViewController *newTopViewController = [self.storyboard instantiateViewControllerWithIdentifier:identifier];
        CGRect frame = self.slidingViewController.topViewController.view.frame;
        self.slidingViewController.topViewController = newTopViewController;
        self.slidingViewController.topViewController.view.frame = frame;
    } else if (indexPath.row >= 1 && [NSStringFromClass([self.slidingViewController.topViewController class]) isEqualToString: @"SecondTopViewController"] == NO) {
        NSString *identifier = @"SecondTop";
        UIViewController *newTopViewController = [self.storyboard instantiateViewControllerWithIdentifier:identifier];
        CGRect frame = self.slidingViewController.topViewController.view.frame;
        self.slidingViewController.topViewController = newTopViewController;
        self.slidingViewController.topViewController.view.frame = frame;
    }

    [self.slidingViewController resetTopView];
}

@end