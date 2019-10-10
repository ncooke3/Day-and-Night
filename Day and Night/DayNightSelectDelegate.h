//
//  DayNightSelectDelegate.h
//  Day and Night
//
//  Created by Nicholas Cooke on 9/15/19.
//  Copyright © 2019 Nicholas Cooke. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DayNightSelectDelegate <NSObject>

- (void)didSelect:(UIColor*)bgColor withCircleColor:(UIColor*)circleColor withLabelText:(NSString*)labelText withButtonColor:(UIColor*)buttonColor;

@end

NS_ASSUME_NONNULL_END
