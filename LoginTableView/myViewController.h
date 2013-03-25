//
//  myViewController.h
//  LoginTableView
//
//  Created by Lion User on 3/20/13.
//  Copyright (c) 2013 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCell.h"

@interface myViewController : UIViewController
- (IBAction)logOut:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *myTable;
@property (strong, nonatomic) IBOutlet MyCell *myTableView;
- (IBAction)editPressed:(id)sender;
@property (strong,nonatomic) NSMutableArray *text,*data,*image;

- (IBAction)cancelPressed:(id)sender;
- (IBAction)donePressed:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *mySegmentControl;
@property (strong, nonatomic) IBOutlet UITextField *nameLabel;
@property (strong, nonatomic) IBOutlet UITextView *descriptionLabel;
- (IBAction)changeSegment:(id)sender;
- (IBAction)dismissKeyboar:(id)sender;

@end
