//
//  ViewController.m
//  01_SpeechDemo
//
//  Created by 白晗 on 2022/5/3.
//

#import "ViewController.h"
#import "YMSpeechUtil.h"

@interface ViewController ()
@property (nonatomic, strong) YMSpeechUtil *speech;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.speech = [YMSpeechUtil speechWithContent:self.contentLabel.text];
    
}
- (IBAction)speak {
    [self.speech begin];
}


@end
