//
//  myTableController.m
//  LoginTableView
//
//  Created by Lion User on 3/20/13.
//  Copyright (c) 2013 Lion User. All rights reserved.
//

#import "myTableController.h"
#import "myCellController.h"

@interface myTableController ()

@end

@implementation myTableController
@synthesize image,data;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    data=[[NSMutableArray alloc]init];
    [data addObject:@"Braian"];
    [data addObject:@"Higuera"];
    [data addObject:@"Román"];
    
    image = [[NSMutableArray alloc]init];
    UIImage *Image1= [UIImage imageNamed:@"1.png"];
    [image addObject:Image1];
    UIImage *Image2= [UIImage imageNamed:@"2.png"];
    [image addObject:Image2];
    UIImage *Image3= [UIImage imageNamed:@"3.png"];
    [image addObject:Image3];
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //MyCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    //cell.myLabel.text = [myArray objectAtIndex:indexPath.row];
    //cell.myCellImage.image =[images objectAtIndex:indexPath.row];
    
    //return cell;
    
    static NSString *CellIdentifier = @"myCell";
    myCellController   *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.labelCell.text = [data objectAtIndex:indexPath.row];
    cell.imageCell.image = [image objectAtIndex:indexPath.row];
    
    
    // Configure the cell...
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     ; *detailViewController = [ alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
