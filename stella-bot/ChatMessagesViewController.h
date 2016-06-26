//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//


// Import all the things
#import "JSQMessages.h"

#import "ChatModelData.h"
#import "NSUserDefaults+ChatSettings.h"


@class ChatMessagesViewController;

@protocol JSQChatViewControllerDelegate <NSObject>

- (void)didDismissJSQChatViewController:(ChatMessagesViewController *)vc;

@end




@interface ChatMessagesViewController : JSQMessagesViewController <UIActionSheetDelegate, JSQMessagesComposerTextViewPasteDelegate>

@property (weak, nonatomic) id<JSQChatViewControllerDelegate> delegateModal;

@property (strong, nonatomic) ChatModelData *ChatData;

- (void)receiveMessagePressed:(UIBarButtonItem *)sender;
@property (weak,nonatomic) NSString *flag_image;
- (void)closePressed:(UIBarButtonItem *)sender;
@property (weak,nonatomic) NSString *response_string;
@end
