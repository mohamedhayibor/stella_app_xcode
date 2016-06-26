//
//  TableViewCell.m
//  stella-bot
//
//  Created by Mohamed Hayibor on 6/26/16.
//  Copyright © 2016 Mohamed Hayibor. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize creative_type;
@synthesize date_progress;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
