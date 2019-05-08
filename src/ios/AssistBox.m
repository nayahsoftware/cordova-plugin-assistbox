#import "AssistBox.h"

@implementation AssistBox

- (void) pluginInitialize {
    
}

- (void) goToAssistBox:(CDVInvokedUrlCommand*)command {    
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[AssistBoxViewController class]];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"AssistBox" bundle:frameworkBundle];
    AssistBoxViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"assistBoxViewController"];
    //canli
    //vc.token = @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb21wYW55SWQiOjEsImNsYWltRmlsZU5vIjoiMTI5MTI5MTI5IiwiYXBwb2ludG1lbnRJZCI6OTA3LCJmdWxsTmFtZSI6IllJTERJUkFZIFlJTE1BWiIsInVzZXJSb2xlIjoiR1VFU1QiLCJleHAiOjE1NjYyMzExMjMsInBob25lTm8iOiIrOTA1MzIzNjU2NjY5In0._sc1iMcrGoH07QvwuHHj5gGBhJCSi7UoPF2NqWCePA8";
    
    //test - appointment 516
    vc.token =@"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb21wYW55SWQiOjEsImNsYWltRmlsZU5vIjoiMTkyMTY4MTk5OCIsImFwcG9pbnRtZW50SWQiOjUxNiwiZnVsbE5hbWUiOiJZxLFsZMSxcmF5IFnEsWxtYXo1IiwidXNlclJvbGUiOiJHVUVTVCIsImV4cCI6MTU2NjI0NTc0NywicGhvbmVObyI6Iis5MDUzMjM2NTY2NjkifQ.j6C1mf6W5HNCCEUSe8SChdZPzOt_kL2KVRrM6NBn5c0";
    //UINavigationController* navController = getNavigationControllerFromVC(owner);
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;

    UIViewController* navController = (UIViewController*)window.rootViewController;
    [navController presentViewController:vc animated:YES completion:nil];
}
@end
