//
//  JSQMessagesCellAttachmentButton.m
//  JSQMessages
//
//  Created by Kirill Kirikov on 3/30/16.
//  Copyright © 2016 Hexed Bits. All rights reserved.
//

#import "JSQMessagesCellAttachmentButton.h"
#import "UIImage+JSQMessages.h"
#import "NSBundle+JSQMessages.h"

@implementation JSQMessagesCellAttachmentButton

#pragma mark - Initialization

- (void)jsq_configureButton
{
    UIImage *attachmentImage = [[UIImage jsq_attachmentImage] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    [self setTitle:[NSBundle jsq_localizedStringForKey:@"attachment"] forState:UIControlStateNormal];
    [self setImage:attachmentImage forState:UIControlStateNormal];
    [self setTitleColor:self.tintColor forState:UIControlStateNormal];
    __weak typeof(self)weakself = self;
    [self addTarget:weakself action:@selector(didTouchMe) forControlEvents:UIControlEventTouchUpInside];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self jsq_configureButton];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self jsq_configureButton];
}

- (void) setTintColor:(UIColor *)tintColor {
    [super setTintColor:tintColor];
    [self setTitleColor:self.tintColor forState:UIControlStateNormal];
}

- (void) didTouchMe {
    if (self.tapOnAttachmentBlock) {
        self.tapOnAttachmentBlock();
    }
}

@end
