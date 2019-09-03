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
    NSString *mobileServiceEndpoint = [command argumentAtIndex:1];
    NSString *mobileStorageEndpoint = [command argumentAtIndex:2];
    if(tokenArg != nil && mobileServiceEndpoint != nil && mobileStorageEndpoint != nil){
        vc.token = tokenArg;
        vc.mobileServiceEndpoint = mobileServiceEndpoint;
        vc.mobileStorageEndpoint = mobileStorageEndpoint;
        vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        
        UIWindow *window = [[UIApplication sharedApplication] keyWindow];
        
        if(self.viewController.navigationController){
            vc.isMainAppNavigationBarHidden = self.viewController.navigationController.isNavigationBarHidden;
            if(!self.viewController.navigationController.isNavigationBarHidden){
                    self.viewController.navigationController.navigationBar.hidden = true;
            }
            vc.hasNavigationStack = YES;
            [self.viewController.navigationController pushViewController:vc animated:NO];
        } else {
            UIViewController* navController = (UIViewController*)window.rootViewController;
            vc.hasNavigationStack = NO;
            [navController presentViewController:vc animated:NO completion:nil];
        }
    } else {
        CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Token is required!"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
#endif
}
@end
