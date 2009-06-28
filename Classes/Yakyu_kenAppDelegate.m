//
//  Yakyu_kenAppDelegate.m
//  Yakyu-ken
//
//  Created by noid on 6/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Yakyu_kenAppDelegate.h"
#import "Yakyu_kenViewController.h"

@implementation Yakyu_kenAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
