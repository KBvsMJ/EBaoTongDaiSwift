//
//  EBTTabBarController.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/5.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit

class EBTTabBarController: UITabBarController,UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
     UIApplication.sharedApplication().statusBarHidden = false
        
    }
    
    
    
}
