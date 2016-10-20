//
//  RSColorGenerator.m
//  RSColorPicker
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

#import "RVSColorGenerator.h"


#import "UIColor+RVSColor.h"

const CGFloat hueMax = 360.0;

typedef BOOL (^HueCreationConditionBlock)(UIColor *color);

@implementation RVSColorGenerator

+ (UIColor *)color {
    float hue = arc4random_uniform(hueMax);
    return [UIColor colorWithHue:(hue / hueMax)];
}

+ (UIColor *)colorForWhiteText {
    return [self colorsForWhiteTextWithCount:1].firstObject;
}

+ (NSArray<UIColor *> *)colorsWithCount:(NSUInteger)count {
    return [self colorsWithCount:count withExcludedColors:nil];
}

+ (NSArray<UIColor *> *)colorsWithCount:(NSUInteger)count withExcludedColors:(NSArray<UIColor *> *)excludedColors {
    NSSet<UIColor *> *excludedHues =  [NSSet setWithArray:excludedColors];
    
    return [self generateHuesWithCount:count andCreationBlock:^BOOL(UIColor *color) {
        return [excludedHues containsObject:color];
    }];
}

// OnWhiteWrite -> (53, 70)
// OnWhiteWrite function
+ (NSArray<UIColor *> *)colorsForWhiteTextWithCount:(NSUInteger)count {
    NSRange excludedColors = NSMakeRange(53, 71);
    return [self generateHuesWithCount:count andCreationBlock:^BOOL(UIColor *color) {
        return NSLocationInRange(color.hue * 360, excludedColors);
    }];
}

+ (NSArray<UIColor *> *)generateHuesWithCount:(NSUInteger)count andCreationBlock:(HueCreationConditionBlock)creationBlock {
    NSMutableArray<UIColor *> *colors = [NSMutableArray arrayWithCapacity:count];
    NSMutableSet<UIColor *> *existingHues = [NSMutableSet new];
    
    for (NSUInteger i = 0; i < count; ++i) {
        int retry = 3;
        float hue = arc4random_uniform(hueMax);
        UIColor *generatedColor = [UIColor colorWithHue:(hue / hueMax)];
        
        BOOL cBlock = creationBlock(generatedColor);
        BOOL exiHue = [existingHues containsObject:generatedColor] && retry;
        while (cBlock || exiHue) {
            
            hue = arc4random_uniform(hueMax);
            generatedColor = [UIColor colorWithHue:(hue / hueMax)];
            
            cBlock = creationBlock(generatedColor);
            exiHue = [existingHues containsObject:generatedColor] && retry;
            
            if (exiHue) {
                retry -= 1;
            }
        }
        
        [existingHues addObject:generatedColor];
        [colors addObject:[UIColor colorWithHue:(hue / hueMax)]];
        
        // Reset
        if (i == 359) {
            [existingHues removeAllObjects];
        }
    }
    
    return colors;
}

@end
