//
//  DemoDataModel.m
//  Signal
//
//  Created by Dylan Bourgeois on 27/10/14.
//  Copyright (c) 2014 Open Whisper Systems. All rights reserved.
//

#import "DemoDataModel.h"

enum {kDemoDataModelCase0, kDemoDataModelCase1,kDemoDataModelCase2, kDemoDataModelCase3, kDemoDataModelCase4};

@implementation DemoDataModel

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self loadFakeMessages];
        
        JSQMessagesBubbleImageFactory *bubbleFactory = [[JSQMessagesBubbleImageFactory alloc] init];
        
        self.outgoingBubbleImageData = [bubbleFactory outgoingMessagesBubbleImageWithColor:[UIColor jsq_messageBubbleGreenColor]];
        self.incomingBubbleImageData = [bubbleFactory incomingMessagesBubbleImageWithColor:[UIColor jsq_messageBubbleLightGrayColor]];
    }
    return self;
}

- (void)loadFakeMessages
{
    /**
     *  Load some fake messages for demo.
     *
     *  You should have a mutable array or orderedSet, or something.
     */
    self.messages = [[NSMutableArray alloc] initWithObjects:
                     [[JSQTextMessage alloc] initWithSenderId:kJSQDemoAvatarIdDylan
                                            senderDisplayName:kJSQDemoAvatarDisplayNameDylan
                                                         date:[NSDate distantPast]
                                                         text:@"Welcome to JSQMessages: A messaging UI framework for iOS."],
                     
                     [[JSQTextMessage alloc] initWithSenderId:kJSQDemoAvatarIdDylan
                                            senderDisplayName:kJSQDemoAvatarDisplayNameDylan
                                                         date:[NSDate distantPast]
                                                         text:@"It even has data detectors. You can call me tonight. My cell number is 123-456-7890. My website is www.hexedbits.com."],
                     
                     [[JSQTextMessage alloc] initWithSenderId:kJSQDemoAvatarIdMoxie
                                            senderDisplayName:kJSQDemoAvatarDisplayNameMoxie
                                                         date:[NSDate date]
                                                         text:@"JSQMessagesViewController is nearly an exact replica of the iOS Messages App. And perhaps, better."],
                     
                     [[JSQTextMessage alloc] initWithSenderId:kJSQDemoAvatarIdFred
                                            senderDisplayName:kJSQDemoAvatarDisplayNameFred
                                                         date:[NSDate date]
                                                         text:@"It is unit-tested, free, open-source, and documented."],
                     
                     [[JSQTextMessage alloc] initWithSenderId:kJSQDemoAvatarIdDylan
                                            senderDisplayName:kJSQDemoAvatarDisplayNameDylan
                                                         date:[NSDate date]
                                                         text:@"Now with media messages!"],
                     nil];
}


+(DemoDataModel*)initModel:(NSUInteger)modelNumber
{
    DemoDataModel * _demoModel = [[DemoDataModel alloc] init];
    
    
    switch (modelNumber) {
        case kDemoDataModelCase0:
            _demoModel._sender = @"Dylan Bourgeois";
            _demoModel._snippet = @"OpenSSL takes forever to build dude.";
            break;
        case kDemoDataModelCase1:
            _demoModel._sender = @"Frederic Jacobs";
            _demoModel._snippet = @"Bro, you're such an artist.";
            break;
        case kDemoDataModelCase2:
            _demoModel._sender = @"Romain Ruetschi";
            _demoModel._snippet = @"Let's have a f x = f ( f ( x ) ) beers";
            break;
        case kDemoDataModelCase3:
            _demoModel._sender = @"Stephen Colbert";
            _demoModel._snippet = @"I should run for president again. What do you think ?";
            break;
        case kDemoDataModelCase4:
            _demoModel._sender = @"Johnny Ramone";
            _demoModel._snippet = @"Rock on...";
            break;
            
        default:
            break;
    }
    
    
    return _demoModel;
}

@end
