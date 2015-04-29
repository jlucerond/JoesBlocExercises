//
//  AppDelegate.m
//  Sandbox
//
//  Created by Joe Lucero on 4/22/15.
//  Copyright (c) 2015 Joe Lucero. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    NSArray *myToDoList = [NSArray arrayWithObjects:@"clean", @"eat", @"take out the trash", @"workout", nil];
//    
//    NSLog(@"I have %ld things to do today!", myToDoList.count);
//    
//    for (NSInteger i = 0; i < myToDoList.count; i++){
//        NSLog(@"I need to %@", myToDoList[i]);
//    }
    
    NSMutableArray *myMutableList = [@[@"clean", @"eat", @"take out the trash", @"workout"] mutableCopy];
    
//    for (NSInteger i = 0; i < myMutableList.count; i++){
//        NSLog(@"I need to %@", myMutableList[i]);
//    }
//    NSLog(@" ");
    
    [myMutableList sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSString *string1 = (NSString *)obj1;
        NSString *string2 = (NSString *)obj2;
        
        NSLog(@"%@", string1);
        NSLog(@"%@", string2);
        
        if (string1.length > string2.length){
            return NSOrderedAscending;
        }
        else if (string1.length < string2.length){
            return NSOrderedDescending;
        }
        return NSOrderedSame;
        
    }];
   
    //problem for mark- why won't this work properly??
    
    for (NSInteger i = 0; i < myMutableList.count; i++){
        NSLog(@"I need to %@", myMutableList[i]);
    }
    
//    NSMutableArray *myLottoNumbers = [@[@(21), @(23), @(2), @(13), @(5), @(50)] mutableCopy];
//    NSSortDescriptor *lottoDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:true];
//    [myLottoNumbers sortUsingDescriptors:@[lottoDescriptor]];
//    
//    for (NSInteger i = 0; i < myLottoNumbers.count; i++){
//        //question for Mark- what's up with the language here, specifically, the longValue??
//        NSLog(@"%ld", [myLottoNumbers[i] longValue]);
//    }
    
//    NSMutableArray *myLottoNumbers = [@[@(21), @(23), @(2), @(13), @(5), @(50)] mutableCopy];
//
//    [myLottoNumbers sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        NSNumber *numberA = (NSNumber *)obj1;
//        NSNumber *numberB = (NSNumber *)obj2;
//        
//        NSLog(@"%@", numberA);
//        NSLog(@"%@", numberB);
//        
//        int intValueA = [numberA intValue];
//        int intValueB = [numberB intValue];
//        
//        if (intValueA > intValueB){
//            return NSOrderedDescending;
//        }
//        else if (intValueA < intValueB){
//            return NSOrderedAscending;
//        }
//        return NSOrderedSame;
//    }];
//    
//    for (int i = 0; i < myLottoNumbers.count; i++){
//        //question for Mark- what's up with the language here, specifically, the longValue??
//        NSLog(@"%ld", [myLottoNumbers[i] longValue]);
//    }
    
    return YES;
    
}

- (void)checkChildHeight: (NSInteger)childHeight{
    NSInteger minHeight = 120;

    NSString *message = (childHeight >= minHeight) ? @"enjoy the ride" : @"nope";
    NSLog(@"%@", message);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void) chant {
    // my first method in objective C
    NSLog(@"Lions and Tigers and Bears, Oh My!");
}

@end
