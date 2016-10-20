//
//  UIColor+RSColor.m
//  RSColorPicker
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

#import "UIColor+RVSColor.h"

@implementation UIColor (RVSColor)

- (CGFloat)hue {
    CGFloat hue;
    [self getHue:&hue saturation:nil brightness:nil alpha:nil];
    return hue;
}

- (CGFloat)saturation {
    CGFloat saturation;
    [self getHue:nil saturation:&saturation brightness:nil alpha:nil];
    return saturation;
}

- (CGFloat)brightness {
    CGFloat brightness;
    [self getHue:nil saturation:nil brightness:&brightness alpha:nil];
    return brightness;
}

- (CGFloat)alpha {
    CGFloat alpha;
    [self getHue:nil saturation:nil brightness:nil alpha:&alpha];
    return alpha;
}

+ (instancetype)colorWithHue:(CGFloat)hue {
    return [UIColor colorWithHue:hue saturation:[self staturationForType:HBSaturationTypeBright] brightness:[self brightnessForType:HBBrightnessTypeLight] alpha:1.0];
}

+ (CGFloat)staturationForType:(HBSaturationType)type {
    switch (type) {
        case HBSaturationTypeDark:
            return 0.70;
        case HBSaturationTypeBright:
            return 0.8;
        case HBSaturationTypeLight:
            return 0.95;
    }
}

+ (CGFloat)brightnessForType:(HBBrightnessType)type {
    switch (type) {
        case HBBrightnessTypeDark:
            return 0.87;
        case HBBrightnessTypeBright:
            return 0.93;
        case HBBrightnessTypeLight:
            return 1.0;
    }
}

@end
