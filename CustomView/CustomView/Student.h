//
//  Student.h
//  CustomView
//
//  Created by iXiaobo on 14-9-29.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *name;
    NSInteger courseName;
}
-(void)changeCourseName:(NSString*) newCourseName;

@end
