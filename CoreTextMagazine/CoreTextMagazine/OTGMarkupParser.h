//
//  OTGMarkupParser.h
//  CoreTextMagazine
//
//  Created by Xu Xian on 14-7-27.
//  Copyright (c) 2014年 Xu Xian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <CoreText/CoreText.h>

@interface OTGMarkupParser : NSObject

@property (strong, nonatomic) NSString* font;
@property (strong, nonatomic) UIColor* color;
@property (strong, nonatomic) UIColor* strokeColor;
@property (assign, nonatomic) float strokeWidth;

@property (strong, nonatomic) NSMutableArray* images;

-(NSAttributedString*)attrStringFromMarkup:(NSString*)html;


@end
