//
//  DebugNetViewCell.h
//  DebugView
//
//  Created by huangjingjing9 on 2021/3/27.
//

#import <UIKit/UIKit.h>

@class DebugModel;
@interface DebugNetViewCell : UITableViewCell

@property (nonatomic, strong) DebugModel *model;

+ (instancetype)debugNetViewCellWithTableView:(UITableView *)tableView;

@property (nonatomic, assign, getter=isOpen) BOOL open;
@end
