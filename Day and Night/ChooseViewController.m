//
//  ChooseViewController.m
//  Day and Night
//
//  Created by Nicholas Cooke on 9/15/19.
//  Copyright © 2019 Nicholas Cooke. All rights reserved.
//

#import "ChooseViewController.h"

@interface ChooseViewController ()

@end

@implementation ChooseViewController

- (CGSize)buttonSize { return CGSizeMake(135, 122); }

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBackground];
    [self setupLabel];
    [self setupDayButton];
    [self setupNightButton];
}

- (void)setupBackground {
    [[self view] setBackgroundColor:[UIColor colorWithRed:0.19 green:0.20 blue:0.42 alpha:1.0]];
}

- (void)setupDayButton {
    UIButton *dayButton = [[UIButton alloc] init];
    [dayButton setTitle:@"Day" forState:UIControlStateNormal];
    dayButton.titleLabel.font = [UIFont fontWithName:@"Verdana" size:18];
    [dayButton setFrame:CGRectMake(0, 0, [self buttonSize].width, [self buttonSize].height)];
    [dayButton setTitleEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    [dayButton setBackgroundColor:[UIColor colorWithRed:1.00 green:0.69 blue:0.25 alpha:1.0]];
    [dayButton setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];
    dayButton.clipsToBounds = YES;
    dayButton.layer.masksToBounds = YES;
    [[dayButton layer] setCornerRadius:9];
    [dayButton addTarget:self action:@selector(dayButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:dayButton];
}

- (void)dayButtonTapped {
    UIColor *lightBlueColor = [UIColor colorWithRed:0.49 green:0.84 blue:0.87 alpha:1.0];
    UIColor *orangeColor = [UIColor colorWithRed:0.94 green:0.58 blue:0.17 alpha:1.0];
    [[self delegate] didSelect:lightBlueColor withCircleColor:orangeColor withLabelText:@"Good Afternoon!" withButtonColor:orangeColor];
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)setupNightButton {
    UIButton *nightButton = [[UIButton alloc] init];
    [nightButton setTitle:@"Night" forState:UIControlStateNormal];
    nightButton.titleLabel.font = [UIFont fontWithName:@"Verdana" size:18];
    [nightButton setFrame:CGRectMake(0, 0, [self buttonSize].width, [self buttonSize].height)];
    [nightButton setTitleEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    [nightButton setBackgroundColor:[UIColor colorWithRed:0.49 green:0.37 blue:1.00 alpha:1.0]];
    [nightButton setCenter:CGPointMake(self.view.frame.size.width / 2, 600)];
    nightButton.clipsToBounds = YES;
    nightButton.layer.masksToBounds = YES;
    [[nightButton layer] setCornerRadius:9];
    [nightButton addTarget:self action:@selector(nightButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:nightButton];
}

- (void)nightButtonTapped {
    UIColor *nightSkyColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    UIColor *grayMoonColor = [UIColor colorWithRed:0.93 green:0.94 blue:0.95 alpha:1.0];
    UIColor *purpleColor = [UIColor colorWithRed:0.49 green:0.37 blue:1.00 alpha:1.0];
    [[self delegate] didSelect:nightSkyColor withCircleColor:grayMoonColor withLabelText:@"Good Evening!" withButtonColor:purpleColor];
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)setupLabel {
    UILabel *goodMorningLabel = [[UILabel alloc] init];
    [goodMorningLabel setText:@"Choose Day or Night!"];
    [goodMorningLabel setTextColor:[UIColor whiteColor]];
    goodMorningLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:22];
    [goodMorningLabel sizeToFit];
    [goodMorningLabel setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 4)];
    [[self view] addSubview:goodMorningLabel];
}


@end
