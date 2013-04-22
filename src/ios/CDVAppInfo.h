//
//  CDVAppVersion.h
//  betfair
//
//  Created by Ronaldo Gomes on 18/04/13.
//  Copyright (c) 2013 Hypothetical Solutions. All rights reserved.
//

#import <Cordova/CDVPlugin.h>
#import <Cordova/CDVPluginResult.h>

@interface CDVAppInfo : CDVPlugin

- (void) version:(CDVInvokedUrlCommand*)command;
- (void) build:(CDVInvokedUrlCommand*)command;
- (void) customKey:(CDVInvokedUrlCommand*)command;

@end
