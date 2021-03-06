//
//  DebugModel.m
//  DebugView
//
//  Created by huangjingjing9 on 2021/3/27.
//

#import "DebugModel.h"

@implementation DebugModel

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ : %@", self.key, self.content];
}

- (id)copyWithZone:(NSZone *)zone {
    DebugModel *model = [[DebugModel alloc] init];
    model.key = self.key;
    model.content = [self.content copy];
    model.canPackup = self.canPackup;
    model.nodeNo = self.nodeNo;
    model.subList = [[NSArray alloc] initWithArray:self.subList copyItems:YES];
    model.degree = self.degree;
    model.keyWidth = self.keyWidth;
    model.contentWidth = self.contentWidth;
    model.cellHeight = self.cellHeight;
    return model;
}

- (void)setOpen:(BOOL)open {
    _open = open;
    
    if (open == NO) {
        if (self.subList && self.subList.count) {
            for (DebugModel *subModel in self.subList) {
                subModel.open = NO;
            }
        }
    }
    
}

@end
