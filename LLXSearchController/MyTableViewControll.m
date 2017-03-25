//
//  MyTableViewControll.m
//  LLXSearchController
//
//  Created by 林喜 on 3/24/17.
//  Copyright © 2017 林喜. All rights reserved.
//

#import "MyTableViewControll.h"
#import "MyResultsViewController.h"


@interface MyTableViewControll ()
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) UISearchController *searchController;
@end

@implementation MyTableViewControll

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.searchController.searchBar sizeToFit];
    [self.tableView reloadData];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    return cell;
}

- (UISearchController *)searchController{
    if (!_searchController) {
        MyResultsViewController *resultsController = [self.storyboard instantiateViewControllerWithIdentifier:@"MyResultsViewController"];

        _searchController = [[UISearchController alloc]initWithSearchResultsController:resultsController];
        _searchController.searchResultsUpdater = resultsController;
        self.tableView.tableHeaderView = self.searchController.searchBar;
        self.definesPresentationContext = YES;
        
    }
    return _searchController;
}
-(NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = @[@"1",@"2",@"3",@"4"];
    }
    return _dataArray;
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
