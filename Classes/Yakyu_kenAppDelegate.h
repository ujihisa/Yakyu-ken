//
//  Yakyu_kenAppDelegate.h
//  Yakyu-ken
//
//  Created by noid on 6/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Yakyu_kenViewController;

@interface Yakyu_kenAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Yakyu_kenViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Yakyu_kenViewController *viewController;

@end

