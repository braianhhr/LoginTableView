//
//  ViewController.m
//  LoginTableView
//
//  Created by Lion User on 3/19/13.
//  Copyright (c) 2013 Lion User. All rights reserved.
//

#import "ViewController.h"
#import "myViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textEmail,textPassword,mylabel;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [textEmail resignFirstResponder];
    [textPassword resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{    
    if (textField==textEmail) {
        [textPassword becomeFirstResponder];
    }else if(textField==textPassword){
        if([textEmail.text isEqualToString:@"test"]  && [textPassword.text isEqualToString:@"test"]){
            
            [textEmail resignFirstResponder];
            [textPassword resignFirstResponder];
            
            myViewController *login = [[myViewController alloc] init];
            login = [self.storyboard instantiateViewControllerWithIdentifier:@"myTableView"];
            login.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
            [self presentViewController:login animated:YES completion:nil];
            
            //Set user defalts
            [[NSUserDefaults standardUserDefaults] setObject:textEmail.text forKey:@"example@mail.com"];
            [[NSUserDefaults standardUserDefaults] setObject:textPassword.text forKey:@"******"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            //NSLog(@"hello test");
        }
    }
    return YES;
}

- (IBAction)dismissKeyboar:(id)sender{
    [textEmail resignFirstResponder];
    [textPassword resignFirstResponder];
}

- (IBAction)loginPressed:(id)sender {
    [textEmail resignFirstResponder];
    [textPassword resignFirstResponder];
    
    myViewController *login = [[myViewController alloc] init];
    login = [self.storyboard instantiateViewControllerWithIdentifier:@"myTableView"];
    login.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:login animated:YES completion:nil];
}
@end
