//
// Created by agoodattitude on 28/12/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "DrinkCategoryBrowseController.h"


@implementation DrinkCategoryBrowseController {

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"SegueToDrinkBrowse" sender:self];
}

@end