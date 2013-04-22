//
//  CDVAppVersion.m
//  betfair
//
//  Created by Ronaldo Gomes on 18/04/13.
//  Copyright (c) 2013 Hypothetical Solutions. All rights reserved.
//

#import "CDVAppInfo.h"

@implementation CDVAppInfo

- (void) version:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options {
    [self writeResponseFor:arguments withDict: options forKey: @"CFBundleShortVersionString"];
}

- (void) build:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options {
    [self writeResponseFor:arguments withDict: options forKey: @"CFBundleVersion"];
}

- (void) customKey:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options {
    [self writeResponseFor:arguments withDict: options forKey: [arguments objectAtIndex:1]];
}

- (NSString *) findPropertyWithKey:(NSString *)key {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey: key];
}

- (void) writeResponseFor:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options forKey:(NSString *)key {
    NSString* callbackId = [arguments objectAtIndex:0];
    NSString *value = [self findPropertyWithKey:key];
    NSLog(@"[%@] %@", key, value);
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:value];
    [self writeJavascript:[pluginResult toSuccessCallbackString:callbackId ]];
}


@end
