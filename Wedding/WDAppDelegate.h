//
//  WDAppDelegate.h
//  Wedding
//
//  Created by Andrei on 2/5/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
