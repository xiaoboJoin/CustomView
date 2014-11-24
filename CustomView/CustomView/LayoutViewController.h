//
//  LayoutViewController.h
//  CustomView
//
//  Created by iXiaobo on 14-9-29.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface LayoutViewController : UIViewController
{
    NSString *label;
    
    NSMutableArray *myArray;
    Student *student;
    
    
}

@property(strong,nonatomic)NSMutableArray *myArray;
@property (weak, nonatomic) IBOutlet UIScrollView *_myScrollView;
- (IBAction)trigger:(id)sender;

@end
