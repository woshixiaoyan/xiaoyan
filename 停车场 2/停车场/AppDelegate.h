//
//  AppDelegate.h
//  停车场
//
//  Created by xiaoyan on 16/11/9.
//  Copyright © 2016年 xiaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property(strong,nonatomic)UITabBarController *TabbarController;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

