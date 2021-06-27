//
//  NSString+Extension.m
//  DebugView
//
//  Created by huangjingjing9 on 2021/3/27.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (CGSize)sizeWithConstrainedToSize:(CGSize)size font:(UIFont *)font {
    
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.lineBreakMode = NSLineBreakByCharWrapping;
    style.alignment = NSTextAlignmentLeft;
    return [self boundingRectWithSize:size options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName: font,NSParagraphStyleAttributeName:style} context:nil].size;
}
@end
