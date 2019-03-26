//
//  AppDelegate.swift
//  GGbond
//
//  Created by 程薇 on 2018/9/27.
//  Copyright © 2018年 程薇. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        // applicationId 即 App Id，applicationKey 是 App Key
        
        window = UIWindow.init()
        window?.frame = UIScreen.main.bounds
        
        let vc = GBHomeViewController(nibName: nil, bundle: nil)
        vc.tabBarItem = UITabBarItem.init(title: "首页", image: UIImage.init(named: "tab_home"), selectedImage: UIImage.init(named: "tab_home"))
        let navi = UINavigationController(rootViewController: vc)

        let vc2 = GBPersonalCenterViewController(nibName: nil, bundle: nil)
        vc2.tabBarItem = UITabBarItem.init(title: "首页", image: UIImage.init(named: "tab_person_unselected"), selectedImage: UIImage.init(named: "tab_person_unselected"))
        
        let navi2 = UINavigationController(rootViewController: vc2)
        vc2.title = "我的"

        let tabc = GBTabbarViewController(nibName: nil, bundle: nil)
        tabc.viewControllers = [navi,navi2]
        window?.rootViewController = tabc
        
        //获取navBar的全局代理对象
        let allNavBar = UINavigationBar.appearance();
        var backImage : UIImage = UIImage.init(named: "back")!
        backImage = backImage.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        allNavBar.backIndicatorImage = backImage
        allNavBar.backIndicatorTransitionMaskImage = backImage
        allNavBar.setBackgroundImage(UIImage.creatImageWithColor(color: UIColor.white), for: UIBarMetrics.default)
        //获取barButtonItem的全局对象
        let allBarButtonItem = UIBarButtonItem.appearance()
        allBarButtonItem.setBackButtonTitlePositionAdjustment(UIOffsetMake(0, -60), for: UIBarMetrics.default)

        window?.makeKeyAndVisible()
        
        return true
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

