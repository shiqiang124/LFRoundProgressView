#import <UIKit/UIKit.h>
#import "LFRoundProgressView.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) LFRoundProgressView *progressView;
@property (strong, nonatomic) IBOutlet LFRoundProgressView *largeProgressView;
@property (strong, nonatomic) IBOutlet LFRoundProgressView *largestProgressView;


@property (strong, nonatomic) IBOutlet UIProgressView *linearProgressView;

@property (strong, nonatomic) IBOutlet UIStepper *stepper;
@property (strong, nonatomic) IBOutlet UILabel *progressLabel;
@property (strong, nonatomic) IBOutlet UISwitch *continuousSwitch;


@end
