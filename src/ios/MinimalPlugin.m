#import "MinimalPlugin.h"

@implementation MinimalPlugin

- (void)echo:(CDVInvokedUrlCommand*)command {
    NSString* msg = [command.arguments objectAtIndex:0];
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
