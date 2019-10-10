//
//  ChooseViewController.h
//  Day and Night
//
//  Created by Nicholas Cooke on 9/15/19.
//  Copyright © 2019 Nicholas Cooke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DayNightSelectDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface ChooseViewController : UIViewController

@property (nonatomic, weak) id<DayNightSelectDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
