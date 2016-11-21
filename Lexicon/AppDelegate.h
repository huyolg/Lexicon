//
//  AppDelegate.h
//  Lexicon
//
//  Created by 胡永亮 on 2016/11/17.
//  Copyright © 2016年 胡永亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

