//
//  CircleView.m
//  CustomView
//
//  Created by iXiaobo on 14-9-29.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "CircleView.h"
#import <math.h>
@implementation CircleView

- (id)init
{
    if (self = [super init])
    {
    
    }
    
    return self;
    
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        radius = 15;
        ratio = 0.01;
    }
    
    return self;
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    

    CGContextRef ctx = UIGraphicsGetCurrentContext();
      CGContextAddEllipseInRect(ctx, rect);
       CGContextSetFillColor(ctx, CGColorGetComponents([[UIColor blueColor] CGColor]));
       CGContextFillPath(ctx);
    // Drawing code
//    if (ratio >= 1.0)
//    {
//        ratio = 1.0;
//        
//    }
//    else
//    {
//        ratio += 0.01;
//        
//    }
//    ratio = 1.0;
//    
//    
//    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
//    // Create our arc, with the correct angles
//    [bezierPath addArcWithCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2)
//                          radius:60
//                      startAngle:0
//                        endAngle:2*M_PI/4*ratio
//                       clockwise:YES];
//    // Set the display for the path, and stroke it
//    bezierPath.lineWidth = 120;
//    [[UIColor redColor] setStroke];
//    [bezierPath stroke];
//    
//     UIBezierPath* bezierPath2 = [UIBezierPath bezierPath];
//    [bezierPath2 addArcWithCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2)
//                          radius:60
//                      startAngle:2*M_PI/4
//                        endAngle:(2*M_PI/4+2*M_PI/4*ratio)
//                       clockwise:YES];
//    // Set the display for the path, and stroke it
//    bezierPath2.lineWidth = 120;
//    [[UIColor blueColor] setStroke];
//    [bezierPath2 stroke];
//    
//    UIBezierPath* bezierPath3 = [UIBezierPath bezierPath];
//    [bezierPath3 addArcWithCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2)
//                          radius:60
//                      startAngle:2*M_PI/4*2
//                        endAngle:(2*M_PI/4*2+2*M_PI/4*ratio)
//                       clockwise:YES];
//    // Set the display for the path, and stroke it
//    bezierPath3.lineWidth = 120;
//    [[UIColor brownColor] setStroke];
//    [bezierPath3 stroke];
//    
//    UIBezierPath* bezierPath4 = [UIBezierPath bezierPath];
//    [bezierPath4 addArcWithCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2)
//                          radius:60
//                      startAngle:2*M_PI/4*3
//                        endAngle:(2*M_PI/4*3+2*M_PI/4*ratio)
//                       clockwise:YES];
//    // Set the display for the path, and stroke it
//    bezierPath4.lineWidth = 120;
//    [[UIColor greenColor] setStroke];
//    [bezierPath4 stroke];
//
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextAddEllipseInRect(ctx, rect);
//    CGContextSetFillColor(ctx, CGColorGetComponents([[UIColor blueColor] CGColor]));
//    CGContextFillPath(ctx);
    
//    if (radius > rect.size.width/2.0)
//    {
//        
//        radius = 10;
//    }
//    else
//    {
//        radius += 1;
//        
//    }
//    
////    if (ratio > 1.0)
////    {
////        ratio = 0.0;
////    }
////    else
////    {
////        ratio+=0.01;
////    }
////    
//    
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetRGBStrokeColor(context, 0.0, 0.0, 1.0, 0.5);//线条颜色
//    CGContextSetFillColor(context, CGColorGetComponents( [[UIColor greenColor] CGColor]));
//    CGContextSetLineWidth(context, radius);
//    CGContextAddArc(context, rect.size.width/2, rect.size.height/2, radius, 0, 2*M_PI/4, 0); //添加一个圆
//    CGContextFillPath(context);
//    CGContextDrawPath(context, kCGPathStroke); //绘制路径
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextBeginPath( context );
////    CGContextMoveToPoint( context, center.x, center.y );
////    CGContextAddLineToPoint( context, startingPoint.x, startingPoint.y );
//    CGContextAddArc(context, rect.size.width/2, rect.size.height/2, 100, 0, 2*M_PI*0.3, NO);
//    CGContextClosePath(context);
//    
//    CGContextSetFillColorWithColor( context, [UIColor greenColor].CGColor );
//    CGContextSetStrokeColorWithColor( context, [UIColor orangeColor].CGColor );
//    CGContextSetLineWidth(context, 1 );
//    
//    CGContextDrawPath(context, kCGPathFillStroke );
    
}


@end
