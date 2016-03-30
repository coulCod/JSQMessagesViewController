//
//  JSQMessagesCellAttachmentButton.h
//  JSQMessages
//
//  Created by Kirill Kirikov on 3/30/16.
//  Copyright © 2016 Hexed Bits. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TapOnAttachmentBlock)();

@interface JSQMessagesCellAttachmentButton : UIButton
@property (nonatomic, copy) TapOnAttachmentBlock tapOnAttachmentBlock;
@end
