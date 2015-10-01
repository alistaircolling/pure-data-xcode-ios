//
//  AppDelegate.m
//  pd-test2
//
//  Created by Alistair Colling on 30/09/2015.
//  Copyright © 2015 Alistair Colling. All rights reserved.
//

#import "AppDelegate.h"
#import "PdAudioController.h"

@interface AppDelegate ()

@property   (strong, nonatomic) PdAudioController *pd;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.pd = [[PdAudioController alloc] init];
    PdAudioStatus pdInit = [self.pd configureAmbientWithSampleRate:44100 numberChannels:2 mixingEnabled:YES];
    if (pdInit != PdAudioOK){
        NSLog(@"PD failed");
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    self.pd.active = NO;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    self.pd.active = YES;
}


@end
