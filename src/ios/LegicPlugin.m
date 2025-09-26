#import "LegicPlugin.h"

@implementation LegicPlugin

- (void)echo:(CDVInvokedUrlCommand*)command {
    NSString* msg = [command.arguments objectAtIndex:0];
    if (!msg) {
        msg = @"No message";
    }

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                 messageAsString:[NSString stringWithFormat:@"Echo: %@", msg]];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
