//
//  MyCell.m
//  LoginTableView
//
//  Created by Lion User on 3/20/13.
//  Copyright (c) 2013 Lion User. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell
@synthesize cellDescription;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    [cellDescription setFrame:CGRectMake(cellDescription.frame.origin.x, cellDescription.frame.origin.y, cellDescription.frame.size.width, 19*cellDescription.text.length/20)];
    // Configure the view for the selected state
}

- (IBAction)pencilPressed:(id)sender {
    //if(cellDescription.text.length > 22){
        [cellDescription setFrame:CGRectMake(cellDescription.frame.origin.x, cellDescription.frame.origin.y, cellDescription.frame.size.width, 19*cellDescription.text.length/20)];
    //}
    //[cellDescription sizeToFit];
}
@end
