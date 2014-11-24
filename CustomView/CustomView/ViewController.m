//
//  ViewController.m
//  CustomView
//
//  Created by iXiaobo on 14-9-26.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "CarView.h"
#import <QuartzCore/QuartzCore.h>
#import "CircleView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    CustomView *firstView = [CustomView instanceCustomView];
//    NSLog(@"firstView:%@",firstView);
//    
//    [self.view addSubview:firstView];
//    [firstView setFrame:CGRectMake(0, 200, 220, 44)];
//    
//    CustomView *secondView = [CustomView instanceCustomView];
//    NSLog(@"secondView:%@",secondView);
//    
//    [self.view addSubview:secondView];
//    
//    [secondView setFrame:CGRectMake(0, 100, 320, 44)];
//    
//    CarView *carView = [CarView instanceCarView];
//    [carView setFrame:CGRectMake(0, 300, 220, 44)];
//    [self.view addSubview:carView];
//    
//    CarView *carView2 = [CarView instanceCarView];
//    [carView2 setFrame:CGRectMake(0, 400, 320, 44)];
//    [self.view addSubview:carView2];
    
    circleView = [[CircleView alloc] initWithFrame:CGRectMake(0, 100, 300, 300)];
    circleView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:circleView];
    
//    self.myImage.layer.masksToBounds = YES;
//    self.myImage.layer.cornerRadius = 50;
    
    
}
-(UIImage*) circleImage:(UIImage*) image withParam:(CGFloat) inset {
    UIGraphicsBeginImageContext(image.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGRect rect = CGRectMake(inset, inset, image.size.width - inset * 2.0f, image.size.height - inset * 2.0f);
    CGContextAddEllipseInRect(context, rect);
    CGContextClip(context);
    
    [image drawInRect:rect];
    CGContextAddEllipseInRect(context, rect);
    CGContextStrokePath(context);
    UIImage *newimg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newimg;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)change:(id)sender {
    
    NSInteger count = 30;
    while (count--)
    {
        [circleView drawRect:CGRectMake(0, 0, 50, 50)];
       
        [circleView setNeedsDisplay];
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.005]];
        
    }
    
 //   [circleView drawRect:CGRectMake(0, 0, 50, 50)];
    
    
//    [UIView animateWithDuration:1.0 animations:^{
//        [circleView setNeedsDisplay];
//    } completion:^(BOOL finished){
//        [self change:nil];
//    }];
    
    
    
    
    
    
}
@end
