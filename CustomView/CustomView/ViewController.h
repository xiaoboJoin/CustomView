//
//  ViewController.h
//  CustomView
//
//  Created by iXiaobo on 14-9-26.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircleView.h"
@interface ViewController : UIViewController
{
    CircleView *circleView;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
- (IBAction)change:(id)sender;

@end
