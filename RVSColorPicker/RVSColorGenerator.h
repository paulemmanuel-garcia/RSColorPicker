//
//  RSColorGenerator.h
//  RSColorPicker
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

/**
 HBColorGenerator generates random colors.
 It can exclude some colors from the generation.
 There is a retry to "prevent" collisions
 when a color has already been generated during a round of generation.
 */
NS_SWIFT_NAME(ColorGenerator)
@interface RVSColorGenerator : NSObject

/**
 Generate one color.

 @return UIColor the newly generated color.
 */
+ (UIColor *)color;

/**
 Generate a palettes of colors.

 @param count NSUInteger, number of colors to generate.

 @return NSArray<UIColor *> * The newly generated colors.
 */
+ (NSArray<UIColor *> *)colorsWithCount:(NSUInteger)count NS_SWIFT_NAME(colors(with:));

/**
 Generate a palette of colors where colors are not in the excluded colors.

 @param count        NSUInteger, number of colors to generate.
 @param excludedColors NSArray<UIColor *> * new colors shouldn't be among the excluded colors.

 @return NSArray<UIColor *> * The newly generated colors.
 */
+ (NSArray<UIColor *> *)colorsWithCount:(NSUInteger)count withExcludedColors:(NSArray<UIColor *> * _Nullable)excludedColors NS_SWIFT_NAME(colors(with:excluded:));


/**
 Generate a color where a white text will be readable.

 @return UIColor the newly generated color.
 */
+ (UIColor *)colorForWhiteText;

/**
 Generate a palette of colors where a white text will be readable.

 @param count NSUInteger, number of colors to generate.

 @return NSArray<UIColor *> * The newly generated colors.
 */
+ (NSArray<UIColor *> *)colorsForWhiteTextWithCount:(NSUInteger)count NS_SWIFT_NAME(colorsForWhiteText(whith:));

@end

NS_ASSUME_NONNULL_END
