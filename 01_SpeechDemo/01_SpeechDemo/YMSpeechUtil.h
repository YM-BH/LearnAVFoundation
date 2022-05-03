//
//  YMSpeechUtil.h
//  01_SpeechDemo
//
//  Created by 白晗 on 2022/5/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YMSpeechUtil : NSObject

+ (instancetype)speechWithContent:(NSString *)content;

- (void)begin;

@end

NS_ASSUME_NONNULL_END
