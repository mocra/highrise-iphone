//
//  HighriseAppDelegate.h
//  Highrise
//
//  Created by Dr Nic on 1/09/08.
//  Copyright Mocra 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HighriseAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
	IBOutlet UIWindow *window;
	IBOutlet UITabBarController *tabBarController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UITabBarController *tabBarController;

@end
