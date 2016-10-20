//
//  UIColor+RSColor.h
//  RSColorPicker
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

/**
 HBSaturationType describes the saturation of the color.
 
 - HBSaturationTypeDark:   equals a saturation of 0.70
 - HBSaturationTypeBright: equals a saturation of 0.80
 - HBSaturationTypeLight:  equals a saturation of 0.95
 */
typedef NS_ENUM(NSUInteger, HBSaturationType) {
    HBSaturationTypeDark,
    HBSaturationTypeBright,
    HBSaturationTypeLight
};

/**
 HBBrightnessType describes the brightness of the color.
 
 - HBBrightnessTypeDark:   equals a brightness of 0.87
 - HBBrightnessTypeBright: equals a brightness of 0.93
 - HBBrightnessTypeLight:  equals a brightness of 1.0
 */
typedef NS_ENUM(NSUInteger, HBBrightnessType) {
    HBBrightnessTypeDark,
    HBBrightnessTypeBright,
    HBBrightnessTypeLight,
};

/**
 Helpers properties and methods used by the HBColorPicker.
 */
@interface UIColor (RSColor)

/**
 Get the hue of the color.
 */
@property (nonatomic, readonly) CGFloat hue;

/**
 Get the saturation of the color.
 */
@property (nonatomic, readonly) CGFloat saturation;

/**
 Get the brightness of the color.
 */
@property (nonatomic, readonly) CGFloat brightness;

/**
 Get the alpha of the color.
 */
@property (nonatomic, readonly) CGFloat alpha;

/**
 Create a new color by setting the hue.
 Other parameters used for the creation of the color.
 Saturation = HBSaturationTypeBright
 Brightness = HBBrightnessTypeLight
 
 @param hue The hue of the newly created color. (Should be between 0 to 1).
 
 @return UIColor created with the Hue.
 */
+ (instancetype)colorWithHue:(CGFloat)hue;

@end
