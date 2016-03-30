//
//  JSQAttachmentMessageItem.m
//  JSQMessages
//
//  Created by Kirill Kirikov on 3/30/16.
//  Copyright © 2016 Hexed Bits. All rights reserved.
//

#import "JSQAttachmentMessageItem.h"

@implementation JSQAttachmentMessageItem

- (instancetype) initWithURL:(NSURL *)attachmentURL type:(NSString *)attachmentType {
    self = [super init];
    if (self) {
        _attachmentURL = [attachmentURL copy];
        _attachmentType = [attachmentType copy];
    }
    return self;
}

- (NSUInteger)attachmentHash
{
    return self.hash;
}

#pragma mark - NSObject

- (BOOL)isEqual:(id)object
{
    if (![super isEqual:object]) {
        return NO;
    }
    
    JSQAttachmentMessageItem *attachmentItem = (JSQAttachmentMessageItem *)object;
    
    return [self.attachmentURL isEqual:attachmentItem.attachmentURL]
    && [self.attachmentType isEqualToString:attachmentItem.attachmentType];
}

- (NSUInteger)hash
{
    return super.hash ^ self.attachmentURL.hash ^ self.attachmentType.hash;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: attachmentURL=%@, attachmentType=%@>",
            [self class], self.attachmentURL, self.attachmentType];
}

#pragma mark - NSCoding

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        _attachmentURL = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(attachmentURL))];
        _attachmentType = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(attachmentType))];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.attachmentURL forKey:NSStringFromSelector(@selector(attachmentURL))];
    [aCoder encodeObject:self.attachmentType forKey:NSStringFromSelector(@selector(attachmentType))];
}

#pragma mark - NSCopying

- (instancetype)copyWithZone:(NSZone *)zone
{
    JSQAttachmentMessageItem *copy = [[[self class] allocWithZone:zone] initWithURL:self.attachmentURL
                                                                   type:self.attachmentType];
    return copy;
}


@end
