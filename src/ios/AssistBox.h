#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>
#import <AssistBoxLib/AssistBoxViewController.h>
#import <Cordova/CDVPlugin.h>

@interface AssistBox : CDVPlugin
- (void) goToAssistBox:(CDVInvokedUrlCommand*)command;
@end
