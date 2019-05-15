#import "AssistBox.h"

@implementation AssistBox

- (void) pluginInitialize {
    
}

- (void) goToAssistBox:(CDVInvokedUrlCommand*)command {
#if TARGET_IPHONE_SIMULATOR
    
#else
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[AssistBoxViewController class]];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"AssistBox" bundle:frameworkBundle];
    AssistBoxViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"assistBoxViewController"];
    
    NSString *tokenArg = [command argumentAtIndex:0];
    if(tokenArg != nil){
        vc.token = tokenArg;
        //UINavigationController* navController = getNavigationControllerFromVC(owner);
        UIWindow *window = [[UIApplication sharedApplication] keyWindow];
        vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        
        UIViewController* navController = (UIViewController*)window.rootViewController;
        [navController presentViewController:vc animated:YES completion:nil];
    } else {
        CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Token is required!"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
#endif
}
@end
