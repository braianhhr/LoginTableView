//
//  MyCell.h
//  LoginTableView
//
//  Created by Lion User on 3/20/13.
//  Copyright (c) 2013 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UITextField *cellText;
@property (strong, nonatomic) IBOutlet UILabel *cellLabel;
@property (strong, nonatomic) IBOutlet UIImageView *cellImage;
- (IBAction)pencilPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *cellDescription;
@property (strong, nonatomic) IBOutlet UITextView *cellD;

@end
