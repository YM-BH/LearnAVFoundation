//
//  YMSpeechUtil.m
//  01_SpeechDemo
//
//  Created by 白晗 on 2022/5/3.
//

#import "YMSpeechUtil.h"
#import <AVFoundation/AVFoundation.h>

@interface YMSpeechUtil ()

@property (nonatomic, copy) NSString *content;
@property (nonatomic, strong) AVSpeechSynthesizer *synthesizer;

@end

@implementation YMSpeechUtil
+ (instancetype)speechWithContent:(NSString *)content {
    
    return [[self alloc] initWithContent:content];
}


- (instancetype)initWithContent:(NSString *)content {
    if (self = [super init]) {
        
        _synthesizer = [[AVSpeechSynthesizer alloc] init];
        _content = content;
    }
    
    return self;
}

- (void)begin {
    
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:_content];
    // 设置语言
    AVSpeechSynthesisVoice *voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];
    utterance.voice = voice;
    // 速率
    NSLog(@"max:%lf - min:%lf - default:%lf", AVSpeechUtteranceMaximumSpeechRate, AVSpeechUtteranceMinimumSpeechRate, AVSpeechUtteranceDefaultSpeechRate);
    utterance.rate = 0.4;
    // 音调 [0.5 - 2] Default = 1
    utterance.pitchMultiplier = 0.8;
    // 下语句话间隔
    utterance.postUtteranceDelay = 0.1;
    [self.synthesizer speakUtterance:utterance];
}
@end
