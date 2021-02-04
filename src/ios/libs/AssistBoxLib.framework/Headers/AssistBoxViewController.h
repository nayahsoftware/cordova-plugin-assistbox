#import <UIKit/UIKit.h>


@interface AssistBoxViewController : UIViewController
    @property (nonatomic, copy) NSString *token;
    @property (nonatomic, copy) NSString *mobileServiceEndpoint;
    @property (nonatomic, copy) NSString *mobileStorageEndpoint;
    @property (nonatomic, assign) BOOL *hasNavigationStack;
    @property (nonatomic, assign) BOOL *isMainAppNavigationBarHidden;

    -(void)setUIInterfaceOrientation:(UIInterfaceOrientation)orientation;
    
@end
