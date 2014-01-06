//
//  ViewController.m
//  LFRoundProgressViewExample
//
//  Created by Daniel Amitay on 2/6/12.
//  Copyright (c) 2012 Daniel Amitay. All rights reserved.
//
//  modified by shiqiang on 14/1/6.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSTimer *timer;
@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //1.default round
    self.progressView = [[LFRoundProgressView alloc] initWithFrame:CGRectMake(140.0f, 60.0f, 40.0f, 40.0f)];
    [self.view addSubview:self.progressView];
    
    //2.annular & LineCapStyle
    self.largeProgressView.annularLineCapStyle = kCGLineCapRound;
    self.largeProgressView.annularLineWith = 4.f;
    self.largeProgressView.percentLabelFont = [UIFont boldSystemFontOfSize:10.f];
    self.largeProgressView.percentLabelTextColor = [[UIColor alloc] initWithWhite:0.1f alpha:.8f];
    
    
    //3.annular
    self.largestProgressView.annular = NO;
    self.largestProgressView.percentShow = NO;

    
    [self startAnimation];
}

- (void)progressChange
{
    NSArray *progressViews = @[self.linearProgressView,
                               self.progressView,
                               self.largeProgressView,
                               self.largestProgressView];
    for (LFRoundProgressView *progressView in progressViews) {
        CGFloat progress = ![self.timer isValid] ? self.stepper.value / 10.0f : progressView.progress + 0.01f;
        progressView.progress = progress;
        
        
        if (progressView.progress >= 1.0f && [self.timer isValid]) {
            progressView.progress = 0.f;
        }
        
        self.progressLabel.text = [NSString stringWithFormat:@"%.2f", progressView.progress];
    }
}

- (void)startAnimation
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.03
                                                  target:self
                                                selector:@selector(progressChange)
                                                userInfo:nil
                                                 repeats:YES];
    self.continuousSwitch.on = YES;
}

- (void)stopAnimation
{
    [self.timer invalidate];
    self.timer = nil;
    self.continuousSwitch.on = NO;
}

- (IBAction)toggleAnimation:(id)sender
{
    if (self.continuousSwitch.on) {
        [self startAnimation];
    } else {
        [self stopAnimation];
    }
}


- (IBAction)step:(id)sender
{
    [self stopAnimation];
    [self progressChange];
}

@end
