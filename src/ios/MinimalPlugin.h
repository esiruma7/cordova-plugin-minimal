#import <Cordova/CDV.h>

@interface MinimalPlugin : CDVPlugin
- (void)echo:(CDVInvokedUrlCommand*)command;
@end
