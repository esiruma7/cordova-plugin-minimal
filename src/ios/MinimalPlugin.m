#import "MinimalPlugin.h"

@implementation MinimalPlugin

- (void)echo:(CDVInvokedUrlCommand*)command {
    NSString* message = [command.arguments objectAtIndex:0];
    if (message == nil) {
        message = @"";
    }
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                      messageAs:[NSString stringWithFormat:@"Echo: %@", message]];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end