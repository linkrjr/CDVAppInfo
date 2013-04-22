//
//  CDVAppVersion.m
//  betfair
//
//  Created by Ronaldo Gomes on 18/04/13.
//  Copyright (c) 2013 Hypothetical Solutions. All rights reserved.
//

#import "CDVAppInfo.h"

@implementation CDVAppInfo

- (void) version:(CDVInvokedUrlCommand*)command {
    [self writeResponseWith:command forKey: @"CFBundleShortVersionString"];
}

- (void) build:(CDVInvokedUrlCommand*)command {
    [self writeResponseWith:command forKey: @"CFBundleVersion"];
}

- (void) customKey:(CDVInvokedUrlCommand*)command {
    [self writeResponseWith:command forKey: [arguments objectAtIndex:0]];
}

- (NSString *) findPropertyWithKey:(NSString *)key {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey: key];
}

- (void) writeResponseWith:(CDVInvokedUrlCommand*)command forKey:(NSString *)key {
    NSString *value = [self findPropertyWithKey:key];
    CDVPluginResult *pluginResult = nil;
    if ([value length] > 0) {
      NSLog(@"[%@] %@", key, value);
      pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:value];      
    } else {
      pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
