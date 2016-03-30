//
//  JSQAttachmentData.h
//  JSQMessages
//
//  Created by Kirill Kirikov on 3/30/16.
//  Copyright © 2016 Hexed Bits. All rights reserved.
//

@protocol JSQAttachmentData <NSObject>
@property (copy, nonatomic, readonly) NSURL *attachmentURL;
@property (copy, nonatomic, readonly) NSString *attachmentType;
- (NSUInteger)attachmentHash;
@end