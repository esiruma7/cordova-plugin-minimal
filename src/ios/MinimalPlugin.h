#import <Cordova/CDVPlugin.h>

@interface MinimalPlugin : CDVPlugin
- (void)echo:(CDVInvokedUrlCommand*)command;
@end