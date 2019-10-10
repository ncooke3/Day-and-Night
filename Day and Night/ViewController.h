//
//  ViewController.h
//  Day and Night
//
//  Created by Nicholas Cooke on 9/14/19.
//  Copyright © 2019 Nicholas Cooke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChooseViewController.h"
#import "DayNightSelectDelegate.h"

@interface ViewController : UIViewController<DayNightSelectDelegate>

@property (strong, nonatomic) CAShapeLayer *circleLayer;
@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UIButton *button;

@end

