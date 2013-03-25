//
//  myViewController.m
//  LoginTableView
//
//  Created by Lion User on 3/20/13.
//  Copyright (c) 2013 Lion User. All rights reserved.
//

#import "myViewController.h"
#import "ViewController.h"
#import "MyCell.h"

@interface myViewController ()

@end

@implementation myViewController
@synthesize myTableView,data,text,image,myTable;
@synthesize mySegmentControl,nameLabel,descriptionLabel;
NSString *data1 = @"Braian";NSString *data2 = @"Ana";NSString *data3 = @"Lili";
NSString *text1 = @"Description";NSString *text2 = @"Description";NSString *text3 = @"Description";

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
        data = [NSMutableArray new];
    [data addObject:data1];
    [data addObject:data2];
    [data addObject:data3];
    
    text = [NSMutableArray new];
    [text addObject:text1];
    [text addObject:text2];
    [text addObject:text3];
    
    image = [NSMutableArray new];
    UIImage *Image1= [UIImage imageNamed:@"1.png"];
    [image addObject:Image1];
    UIImage *Image2= [UIImage imageNamed:@"2.png"];
    [image addObject:Image2];
    UIImage *Image3= [UIImage imageNamed:@"3.png"];
    [image addObject:Image3];
    
    [mySegmentControl setTitle:[data objectAtIndex:0] forSegmentAtIndex:0];
    [mySegmentControl setTitle:[data objectAtIndex:1] forSegmentAtIndex:1];
    [mySegmentControl setTitle:[data objectAtIndex:2] forSegmentAtIndex:2];
    [nameLabel setText:[data objectAtIndex:mySegmentControl.selectedSegmentIndex]];
    [descriptionLabel setText:[text objectAtIndex:mySegmentControl.selectedSegmentIndex]];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.cellLabel.text = [data objectAtIndex:indexPath.row];
    cell.cellImage.image = [image objectAtIndex:indexPath.row];
    cell.cellD.text = [text objectAtIndex:indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CGSize maxSize = CGSizeMake(200, 200);
    CGSize cellSize = [[text objectAtIndex:indexPath.row]
                       sizeWithFont:[UIFont systemFontOfSize:15]
                       constrainedToSize:maxSize
                       lineBreakMode:NSLineBreakByWordWrapping];
    return cellSize.height+40;
}

- (IBAction)logOut:(id)sender {
    ViewController *login = [self.storyboard instantiateViewControllerWithIdentifier:@"loginView"];
    login.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:login animated:YES completion:nil];
}


- (IBAction)editPressed:(id)sender {
    [mySegmentControl setTitle:[data objectAtIndex:0] forSegmentAtIndex:0];
    [mySegmentControl setTitle:[data objectAtIndex:1] forSegmentAtIndex:1];
    [mySegmentControl setTitle:[data objectAtIndex:2] forSegmentAtIndex:2];
    [nameLabel setText:[data objectAtIndex:mySegmentControl.selectedSegmentIndex]];
    [descriptionLabel setText:[text objectAtIndex:mySegmentControl.selectedSegmentIndex]];
    myViewController *login = [[myViewController alloc] init];
    login = [self.storyboard instantiateViewControllerWithIdentifier:@"EditView"];
    login.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:login animated:YES completion:nil];
}
- (IBAction)cancelPressed:(id)sender {
    [nameLabel resignFirstResponder];
    [descriptionLabel resignFirstResponder];
    myViewController *login = [[myViewController alloc] init];
    login = [self.storyboard instantiateViewControllerWithIdentifier:@"myTableView"];
    login.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:login animated:YES completion:nil];
}

- (IBAction)donePressed:(id)sender {
    [nameLabel resignFirstResponder];
    [descriptionLabel resignFirstResponder];
    
    switch (mySegmentControl.selectedSegmentIndex) {
        case 0:
            data1 = nameLabel.text;
            text1 = descriptionLabel.text;
            break;
        case 1:
            data2 = nameLabel.text;
            text2 = descriptionLabel.text;
            break;
        case 2:
            data3 = nameLabel.text;
            text3 = descriptionLabel.text;
            break;
        default:
            break;
    }
    myViewController *login = [[myViewController alloc] init];
    login = [self.storyboard instantiateViewControllerWithIdentifier:@"myTableView"];
    login.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:login animated:YES completion:nil];
}

- (IBAction)changeSegment:(id)sender {
    [nameLabel setText:[data objectAtIndex:mySegmentControl.selectedSegmentIndex]];
    [descriptionLabel setText:[text objectAtIndex:mySegmentControl.selectedSegmentIndex]];
}

- (IBAction)dismissKeyboar:(id)sender{
    [nameLabel resignFirstResponder];
    [descriptionLabel resignFirstResponder];
}

@end
