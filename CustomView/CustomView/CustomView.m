//
//  CustomView.m
//  CustomView
//
//  Created by iXiaobo on 14-9-26.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


+(CustomView *)instanceCustomView
{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:nil options:nil];
    return [nibView objectAtIndex:0];
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        //you init
        NSLog(@"initWithCoder:%@",aDecoder);
    }
    return self;
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
   // Drawing code
    self.backgroundColor = [UIColor greenColor];
    
}


- (IBAction)firstBtnClicked:(id)sender
{
    NSLog(@"button:%@",sender);
    
}

- (IBAction)secondBtnClicked:(id)sender {
    NSLog(@"button:%@",sender);
}

- (IBAction)thirdBtnClicked:(id)sender {
    NSLog(@"button:%@",sender);
}

- (IBAction)forthBtnClicked:(id)sender {
    NSLog(@"button:%@",sender);
}
@end
