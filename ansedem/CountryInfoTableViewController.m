//
//  CountryLabLocationTableViewController.m
//  ansedem
//
//  Created by David Rodriguez on 16/8/14.
//  Copyright (c) 2014 Fiets. All rights reserved.
//

#import "CountryInfoTableViewController.h"
#import "DeepInfoViewController.h"

@interface CountryInfoTableViewController ()

@end

@implementation CountryInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_03.png"]];
    //self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"fondo_05.png"]];
    [self.tableView setBackgroundView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondo_05.png"]]];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.countryLabs = @[@"Argentina",@"Brasil",@"Chile",@"Colombia",@"México",@"Perú"];
    self.infoPDFNames = @[@"Argentina-info.pdf", @"Argentina-info.pdf",@"Argentina-info.pdf", @"Argentina-info.pdf",@"Argentina-info.pdf", @"Argentina-info.pdf"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.countryLabs.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"aCountryLabCell" forIndexPath:indexPath];
    

    // Configure the cell...
    cell.backgroundColor = [UIColor clearColor];
    UILabel *labLabel = (UILabel *)[cell viewWithTag:101];
    labLabel.text = @"Hospira";
    
    UILabel *countryLabel = (UILabel *)[cell viewWithTag:102];
    countryLabel.text = self.countryLabs[indexPath.row];
    
    return cell;
}


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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"infoCellPressed"]){
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        NSString *infoName = self.infoPDFNames[indexPath.row];
        
        DeepInfoViewController *divc = [segue destinationViewController];
        divc.infoName = infoName;
        divc.infoIndex = (int)indexPath.row;
    }
}


@end
