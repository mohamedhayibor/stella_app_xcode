//
//  TableViewCell.h
//  stella-bot
//
//  Created by Mohamed Hayibor on 6/26/16.
//  Copyright © 2016 Mohamed Hayibor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *creative_type;
@property (weak, nonatomic) IBOutlet UILabel *date_progress;

@end
