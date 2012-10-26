//
//  ShapesView.m
//  Shapes
//
//  Created by HEYMES Lucas on 26/10/12.
//  Copyright (c) 2012 Heymès Lucas. All rights reserved.
//

#import "ShapesView.h"

@implementation ShapesView


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.*/
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    // Fill
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.5);
    CGContextSetLineWidth(context, 5.0);
    CGContextMoveToPoint(context, 20.0, 30.0);
    
    CGContextAddLineToPoint(context, 300, 430);
    CGContextAddLineToPoint(context, 20, 430);
    CGContextAddLineToPoint(context, 20, 30);
    
    CGContextAddLineToPoint(context, 300, 30);
    CGContextAddLineToPoint(context, 20, 430);
    CGContextFillPath(context);
    
    // Lines
    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context2, 1.0, 0.0, 0.0, 1.0);
    CGContextSetLineWidth(context2, 5.0);
    CGContextMoveToPoint(context2, 20.0, 30.0);
    
    CGContextAddLineToPoint(context2, 300, 430);
    CGContextAddLineToPoint(context2, 20, 430);
    CGContextAddLineToPoint(context2, 20, 30);
    
    CGContextAddLineToPoint(context2, 300, 30);
    CGContextAddLineToPoint(context2, 20, 430);
    CGContextStrokePath(context2);
    
    // CGPoint Structured lines
    CGPoint myPoints[6] = {
        CGPointMake(10.0, 90),
        CGPointMake(70, 10),
        CGPointMake(130, 150),
        CGPointMake(10, 60),
        CGPointMake(250, 90),
        CGPointMake(310, 20)
    };
    
    CGContextRef context3 = UIGraphicsGetCurrentContext();
    CGContextAddLines(context3, myPoints, 6);
    CGContextSetRGBStrokeColor(context3, 0, 0, 1, 0.8);
    CGContextStrokePath(context3);
    
    
    // Save
    CGContextSetRGBStrokeColor(context3, 1, 1, 1, 1);
    CGContextStrokeRect(context3, CGRectMake(150, 40, 80, 80));
    
    CGContextSaveGState(context3);
    CGContextSetRGBFillColor(context3, 0, 1, 1, 0.5);
    CGContextSetShadow(context3, CGSizeMake(2, -8), 3);
    CGContextFillEllipseInRect(context3, CGRectMake(30, 100, 250, 150));
    CGContextStrokeRect(context3, CGRectMake(200, 130, 80, 80));

    CGContextRestoreGState(context3);

    CGContextShowTextAtPoint(context3, 50, 50, "Hello!", 24);

};

@end
