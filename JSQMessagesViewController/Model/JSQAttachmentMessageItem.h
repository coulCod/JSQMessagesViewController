//
//  JSQAttachmentMessageItem.h
//  JSQMessages
//
//  Created by Kirill Kirikov on 3/30/16.
//  Copyright © 2016 Hexed Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSQAttachmentData.h"

@interface JSQAttachmentMessageItem : NSObject <JSQAttachmentData, NSCoding, NSCopying>

@property (copy, nonatomic) NSURL *attachmentURL;
@property (copy, nonatomic) NSString *attachmentType;

- (instancetype) initWithURL:(NSURL *)attachmentURL type:(NSString *)attachmentType;

@end
