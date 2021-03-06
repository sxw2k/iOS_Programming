//
//  AppDelegate.swift
//  Homepwner
//
//  Created by chenyf on 16/3/6.
//  Copyright © 2016年 chenyf. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        // 创建一个 ItemStore 实例
        let itemStore = ItemStore()
        
        // 嵌入导航控制器后就需要把该导航控制器设置为 window 的根控制器
        //let itemsController = window!.rootViewController as! ItemsViewController
        
        let nav = window!.rootViewController as! UINavigationController
        let itemsController = nav.topViewController as! ItemsViewController
        // ItemsViewController 有一个叫做 itemStore 的属性
        itemsController.itemStore = itemStore
        
        // 等价于
//        let itm: ItemsViewController = window!.rootViewController as! ItemsViewController
//        self.window?.rootViewController = itm
//        itm.itemStore = ItemStore()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

