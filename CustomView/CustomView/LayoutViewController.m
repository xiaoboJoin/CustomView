//
//  LayoutViewController.m
//  CustomView
//
//  Created by iXiaobo on 14-9-29.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "LayoutViewController.h"

@interface LayoutViewController ()

@end

@implementation LayoutViewController
@synthesize myArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    student = [[Student alloc] init];
    [student changeCourseName:@"sss"];
     NSLog(@"初始值:%@", [student valueForKey:@"courseName"]);
    [student addObserver:self forKeyPath:@"courseName" options:(NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew) context:nil];
//    label = [[NSString alloc] init];
//    label = @"hhh";
    
   // [self addObserver:self forKeyPath:@"label" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%@", keyPath);
    NSLog(@"%@", object );
    NSLog(@"%@", [change objectForKey:@"new"]);
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)trigger:(id)sender {
    
//    label = @"nnn";
  //  [student changeCourseName:@"kk"];
    [student setValue:@"化学课" forKey:@"courseName"];
    [student changeCourseName:@"英语课"];
    NSLog(@"直接改变的课程为:%@", [student valueForKey:@"courseName"]);
}
@end
