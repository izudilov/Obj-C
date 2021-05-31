//
//  SceneDelegate.m
//  ZI-2
//
//  Created by user179996 on 31.05.2021.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    NSLog(@"App - willConnectToSession");
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    NSLog(@"App - DidDisconnect");
}

- (void)sceneWillEnterForeground:(UIScene *)scene {
    NSLog(@"App - WillEnterForeground");
}


- (void)sceneWillResignActive:(UIScene *)scene {
    NSLog(@"App - WillResignActive");
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    NSLog(@"App - DidEnterBackground");
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    NSLog(@"App - DidBecomeActive");
}


@end
