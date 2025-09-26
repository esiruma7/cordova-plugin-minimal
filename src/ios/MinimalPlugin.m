#import <Cordova/CDVPlugin.h>

@interface MinimalPlugin : CDVPlugin
- (void)echo:(CDVInvokedUrlCommand*)command;
@end

@implementation MinimalPlugin

- (void)echo:(CDVInvokedUrlCommand*)command {
    NSString* message = [command.arguments objectAtIndex:0];
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
