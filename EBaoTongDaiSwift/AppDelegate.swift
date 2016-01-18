//
//  AppDelegate.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/5.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
     
        /**  首页
        */
        
        let firstPageStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let firstPageCtl = firstPageStoryBoard.instantiateViewControllerWithIdentifier("EBTFirstPageViewController")
        firstPageCtl.title = "首页"
        let firstPageNav = UINavigationController(rootViewController: firstPageCtl)
        
        /**  投资
         */
        
         let investStoryBoard = UIStoryboard.init(name: "EBTMyInvest", bundle: nil)
        
          let myInvestCtl = investStoryBoard.instantiateViewControllerWithIdentifier("EBTMyInvestViewController")
        myInvestCtl.title = "投资"
          let  myInvestNav = UINavigationController(rootViewController: myInvestCtl)
        
        /**  活动
         */
        let activityStoryBoard = UIStoryboard.init(name: "EBTActivity", bundle: nil)
        let activityCtl = activityStoryBoard.instantiateViewControllerWithIdentifier("EBTActivityViewController")
        activityCtl.title = "活动"
        let activityNav = UINavigationController(rootViewController:activityCtl)
        
        
        /**  财富
         */
        let weathStoryBoard = UIStoryboard.init(name: "EBTWeath", bundle: nil)
        let weathCtl = weathStoryBoard.instantiateViewControllerWithIdentifier("EBTWeathViewController")
        weathCtl.title = "财富"
       let weathNav = UINavigationController(rootViewController:weathCtl)
        
      
        let navArray = [firstPageNav,myInvestNav,activityNav,weathNav]
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = navArray
        tabBarController.selectedIndex = 0

        let selectImageArray = ["tab_button_0_tap","tab_button_1_tap","tab_button_2_tap","tab_button_3_tap"]
        let normalImageArray = ["tab_button_0","tab_button_1","tab_button_2","tab_button_3"]
        let titleArray = ["首页","投资","活动","财富"]
        
        for var i = 0; i < titleArray.count; i++
        {
           let tabBarItem = navArray[i].tabBarItem
            
            var normalImage = UIImage(named: normalImageArray[i])
            normalImage = normalImage?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            
            var selectImage = UIImage(named: selectImageArray[i])
            selectImage = selectImage?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            
            tabBarItem.title = titleArray[i]
            tabBarItem.selectedImage = selectImage
            tabBarItem.image = normalImage
            tabBarItem .setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.redColor(),NSFontAttributeName:UIFont.boldSystemFontOfSize(12)], forState: UIControlState.Selected)

        }
        
        
        //MARK: 设置导航栏背景颜色
        let topColor = UIColor.redColor()
        let topImage = UIImage.imageWithColor(topColor)
        
        let navBar = UINavigationBar.appearance()
        navBar.setBackgroundImage(topImage, forBarMetrics: UIBarMetrics.Default)
         self.window!.rootViewController = tabBarController
         self.window!.makeKeyAndVisible()

        
        
        
        
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

