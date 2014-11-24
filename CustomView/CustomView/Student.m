//
//  Student.m
//  CustomView
//
//  Created by iXiaobo on 14-9-29.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "Student.h"

@implementation Student


-(void)changeCourseName:(NSString*) newCourseName
{
    courseName = 1;
   // NSLog(@"courseName:%@",courseName);
    
    //courseName = newCourseName;
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    
}

- (void)timerAction:(NSTimer *)timer
{
    courseName += 1;
    
    [self setValue:[NSNumber numberWithInt:courseName] forKey:@"courseName"];
    
}

@end
