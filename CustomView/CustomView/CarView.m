//
//  CarView.m
//  CustomView
//
//  Created by iXiaobo on 14-9-29.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "CarView.h"




@implementation CarView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(CarView *)instanceCarView
{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"CarView" owner:nil options:nil];
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


- (IBAction)dogClicked:(id)sender
{
    for (UIButton *btn in [self subviews])
    {
        if ([btn isEqual:sender])
        {
            [btn setTintColor:[UIColor orangeColor]];
        }
        else
        {
            [btn setTintColor:[UIColor blackColor]];
        }
        
    }
    
    
}

- (IBAction)catClicked:(id)sender
{
    for (UIButton *btn in [self subviews])
    {
        if ([btn isEqual:sender])
        {
            [btn setTintColor:[UIColor orangeColor]];
        }
        else
        {
            [btn setTintColor:[UIColor blackColor]];
        }
        
    }

}

- (IBAction)petClicked:(id)sender {
    for (UIButton *btn in [self subviews])
    {
        if ([btn isEqual:sender])
        {
            [btn setTintColor:[UIColor orangeColor]];
        }
        else
        {
            [btn setTintColor:[UIColor blackColor]];
        }
        
    }

}

- (IBAction)waterClicked:(id)sender
{
    for (UIButton *btn in [self subviews])
    {
        if ([btn isEqual:sender])
        {
            [btn setTintColor:[UIColor orangeColor]];
        }
        else
        {
            [btn setTintColor:[UIColor blackColor]];
        }
        
    }

}
@end
