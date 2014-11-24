//
//  CarView.h
//  CustomView
//
//  Created by iXiaobo on 14-9-29.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarView : UIView
@property (weak, nonatomic) IBOutlet UIButton *dogBtn;
@property (weak, nonatomic) IBOutlet UIButton *carBtn;
@property (weak, nonatomic) IBOutlet UIButton *petBtn;
@property (weak, nonatomic) IBOutlet UIButton *waterBtn;
- (IBAction)dogClicked:(id)sender;
- (IBAction)catClicked:(id)sender;
- (IBAction)petClicked:(id)sender;
- (IBAction)waterClicked:(id)sender;
+(CarView *)instanceCarView;

@end
