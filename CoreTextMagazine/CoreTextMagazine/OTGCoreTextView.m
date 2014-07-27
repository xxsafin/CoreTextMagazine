//
//  OTGCoreTextView.m
//  CoreTextMagazine
//
//  Created by Xu Xian on 14-7-27.
//  Copyright (c) 2014年 Xu Xian. All rights reserved.
//

#import "OTGCoreTextView.h"

#import <CoreText/CoreText.h>

@implementation OTGCoreTextView

-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, self.bounds);
    
    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:@"Hello Core Text" ];
    
    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef frameRef = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, attString.length), path, NULL);
    
    CTFrameDraw(frameRef, context);
    
    CFRelease(frameRef);
    CFRelease(path);
    CFRelease(frameSetter);
}

@end
