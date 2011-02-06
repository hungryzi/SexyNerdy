//
//  SexyNerdyAppDelegate.h
//  SexyNerdy
//
//  Created by Huong Vu on 2/6/11.
//  Copyright 2011 National University of Singapore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SexyNerdyViewController;

@interface SexyNerdyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SexyNerdyViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SexyNerdyViewController *viewController;

@end

