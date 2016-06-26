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

#import "ChatModelData.h"

#import "NSUserDefaults+ChatSettings.h"


@implementation ChatModelData

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        if ([NSUserDefaults emptyMessagesSetting]) {
            self.messages = [NSMutableArray new];
        }
        else {
            [self loadFakeMessages];
        }
        
        
        /**
         *  Create avatar images once.
         *
         *  Be sure to create your avatars one time and reuse them for good performance.
         *
         *  If you are not using avatars, ignore this.
         */
      
        
        
        self.users = @{
                       kJSQChatAvatarIdStella : kJSQChatAvatarDisplayNameStella,
                        kJSQChatAvatarIdIvana : kJSQChatAvatarDisplayNameIvana,
                        
                        };
        
        
        /**
         *  Create message bubble images objects.
         *
         *  Be sure to create your bubble images one time and reuse them for good performance.
         *
         */
        JSQMessagesBubbleImageFactory *bubbleFactory = [[JSQMessagesBubbleImageFactory alloc] init];
        
        self.outgoingBubbleImageData = [bubbleFactory outgoingMessagesBubbleImageWithColor:[UIColor jsq_messageBubbleLightGrayColor]];
        self.incomingBubbleImageData = [bubbleFactory incomingMessagesBubbleImageWithColor:[UIColor jsq_messageBubbleGreenColor]];
    }
    
    return self;
}

- (void)loadFakeMessages
{
    /**
     *  Load some fake messages for Chat.
     *
     *  You should have a mutable array or orderedSet, or something.
     */
    self.messages = [[NSMutableArray alloc] initWithObjects:
                     
                     [[JSQMessage alloc] initWithSenderId:kJSQChatAvatarIdIvana
                                          senderDisplayName:kJSQChatAvatarDisplayNameIvana
                                                       date:[NSDate distantPast]
                                                       text:NSLocalizedString(@"Hey Ivana! What can i design for you today ?", nil)],nil];
    
    
    
   
    [self addPhotoMediaMessage];
   
}
-(void) loadNewMessage
{
    
}


- (void)addPhotoMediaMessage
{
    JSQPhotoMediaItem *photoItem = [[JSQPhotoMediaItem alloc] initWithImage:[UIImage imageNamed:@"icon"]];
    JSQMessage *photoMessage = [JSQMessage messageWithSenderId:kJSQChatAvatarIdStella
                                                   displayName:kJSQChatAvatarDisplayNameStella
                                                         media:photoItem];
    [self.messages addObject:photoMessage];
}



@end
