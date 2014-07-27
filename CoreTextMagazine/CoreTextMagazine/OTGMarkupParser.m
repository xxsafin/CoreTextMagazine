//
//  OTGMarkupParser.m
//  CoreTextMagazine
//
//  Created by Xu Xian on 14-7-27.
//  Copyright (c) 2014年 Xu Xian. All rights reserved.
//

#import "OTGMarkupParser.h"

@implementation OTGMarkupParser

-(id)init{
    self = [super init];
    if(self){
        self.font = @"Arial";
        self.color = [UIColor blackColor];
        self.strokeColor = [UIColor whiteColor];
        self.strokeWidth = 0.0;
        self.images = [NSMutableArray array];
    }
    return self;
}

-(NSAttributedString *)attrStringFromMarkup:(NSString *)html{
    NSMutableAttributedString* aString = [[NSMutableAttributedString alloc] initWithString:@""];
    
    NSRegularExpression* regex = [[NSRegularExpression alloc] initWithPattern:@"(.*?)(<[^>]+>|\\Z)" options:NSRegularExpressionCaseInsensitive|NSRegularExpressionDotMatchesLineSeparators error:nil];
    
    NSArray* chunks = [regex matchesInString:html options:0 range:NSMakeRange(0, html.length)];
    
    [chunks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //deal with markup strings
        
    }];
}

@end
