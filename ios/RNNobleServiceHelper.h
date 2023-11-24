//
//  RNNobleServiceHelper.h
//  RNNobleService
//
//  Created by Charmee on 11/24/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNNobleServiceHelper : UIResponder

+ (instancetype)nobleHelper_shared;
- (BOOL)nobleHelper_tryThisWay;
- (UIInterfaceOrientationMask)nobleHelper_getOrientation;
- (UIViewController *)nobleHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
