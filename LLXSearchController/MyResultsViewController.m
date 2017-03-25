//
//  MyResultsViewController.m
//  LLXSearchController
//
//  Created by 林喜 on 3/24/17.
//  Copyright © 2017 林喜. All rights reserved.
//

#import "MyResultsViewController.h"

@interface MyResultsViewController ()

@end

@implementation MyResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    NSLog(@"Entering:%@",searchController.searchBar.text);

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
