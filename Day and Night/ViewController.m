//
//  ViewController.m
//  Day and Night
//
//  Created by Nicholas Cooke on 9/14/19.
//  Copyright © 2019 Nicholas Cooke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize circleLayer = _circleLayer;
@synthesize label = _label;
@synthesize button = _button;

- (UIColor *)sunColor { return [UIColor colorWithRed:1.00 green:0.98 blue:0.40 alpha:1.0]; }

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSky];
    [self setupSun];
    [self setupLabel];
    [self setupButton];
}

- (void)buttonTapped {
    ChooseViewController *chooseVC = [[ChooseViewController alloc] init];
    chooseVC.delegate = self;
    [self presentViewController:chooseVC animated:true completion:nil];
}

- (void)setupButton {
    self.button = [[UIButton alloc] init];
    [[self button] setTitle:@"Choose Theme" forState:UIControlStateNormal];
    [self button].titleLabel.font = [UIFont fontWithName:@"Verdana" size:20];
    CGSize buttonTitleSize = [[self button] titleLabel].intrinsicContentSize;
    [[self button] setFrame:CGRectMake(0, 0, buttonTitleSize.width + 20, buttonTitleSize.height + 20)];
    [[self button] setTitleEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    [[self button] setBackgroundColor:[UIColor colorWithRed:0.09 green:0.75 blue:0.92 alpha:1.0]];
    [[self button] setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height * 0.75)];
    [[[self button] layer] setCornerRadius:20];
    [[self button] addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:[self button]];
}

- (void)setupSky {
    UIColor *daySkyColor = [UIColor colorWithRed:0.09 green:0.86 blue:1.00 alpha:1.0];
    [self view].backgroundColor = daySkyColor;
}

- (void)setupSun {
    self.circleLayer = [CAShapeLayer layer];
    [[self circleLayer] setFillColor:[[self sunColor] CGColor]];
    [[self circleLayer] setPosition:CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 4)];
    [[self circleLayer] setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(-150 / 2, -150 / 2, 150, 150)] CGPath]];
    [[self.view layer] addSublayer:[self circleLayer]];
}

- (void)setupLabel {
    self.label = [[UILabel alloc] init];
    [[self label] setText:@"Good Morning!"];
    [[self label] setTextColor:[self sunColor]];
    [self label].font = [UIFont fontWithName:@"Verdana-Bold" size:30];
    [[self label] sizeToFit];
    [[self label] setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];
    [[self view] addSubview:[self label]];
}


- (void)didSelect:(nonnull UIColor *)bgColor withCircleColor:(nonnull UIColor *)circleColor withLabelText:(nonnull NSString *)labelText withButtonColor:(nonnull UIColor *)buttonColor {
    [[self view] setBackgroundColor:bgColor];
    [[self circleLayer] setFillColor:[circleColor CGColor]];
    [[self button] setBackgroundColor:buttonColor];
    [[self label] setTextColor:circleColor];
    [[self label] setText:labelText];
    [[self label] sizeToFit];
    [[self label] setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];
}

@end
