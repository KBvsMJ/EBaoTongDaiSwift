//
//  EBTBaseNavigationController.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/5.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit
let IOS_VERSION_7_OR_ABOVE = Float(UIDevice.currentDevice().systemVersion)>=7.0 ?true:false
class EBTBaseNavigationController: UINavigationController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.interactivePopGestureRecognizer!.enabled = true;
        self.interactivePopGestureRecognizer!.delegate = self;
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customLeftBackButton()-> UIBarButtonItem
    {
      var btnImage = UIImage(named: "nav_back")
       if IOS_VERSION_7_OR_ABOVE
       {
         btnImage = btnImage?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        }
        let backButton = UIButton(type: UIButtonType.Custom)
        backButton.frame = CGRectMake(0, 0, (btnImage?.size.width)!, (btnImage?.size.height)!)
        
        backButton.setBackgroundImage(btnImage, forState: UIControlState.Normal)
      backButton.addTarget(self, action: "popViewControllerAnimated:", forControlEvents: UIControlEvents.TouchDragInside)
    
        let backItem = UIBarButtonItem.init(customView: backButton)
        
        return backItem
        
        
    }
   
    override func pushViewController(viewController: UIViewController,animated: Bool)
    {
      super.pushViewController(viewController, animated: animated)
        let result = viewController.navigationItem.leftBarButtonItem == nil && self.viewControllers.count>1
        if result
        {
         viewController.navigationItem.leftBarButtonItem = customLeftBackButton()
        }
        
        
        
        
    }
    
    
}
