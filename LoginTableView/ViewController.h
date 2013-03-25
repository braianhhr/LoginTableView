//
//  ViewController.h
//  LoginTableView
//
//  Created by Lion User on 3/19/13.
//  Copyright (c) 2013 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textEmail;
@property (strong, nonatomic) IBOutlet UITextField *textPassword;
- (IBAction)loginPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *mylabel;
- (IBAction)dismissKeyboar:(id)sender;
@end
