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

- (void) version:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;
- (void) build:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;
- (void) customKey:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;

@end
