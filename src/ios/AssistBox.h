#if TARGET_IPHONE_SIMULATOR
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>
#else
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>
#import <AssistBoxLib/AssistBoxViewController.h>
#import <Cordova/CDVPlugin.h>
#endif

@interface AssistBox : CDVPlugin
- (void) goToAssistBox:(CDVInvokedUrlCommand*)command;
@end
