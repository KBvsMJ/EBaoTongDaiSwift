//
//  ViewController.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/5.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit
import Alamofire
class EBTFirstPageViewController: EBTBaseViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        let paramerUrl = KEBTHttpServerBaseURL + kEBTAccessTokenBaseURL + EBTGlobalHandler.currentDeviceVendor()
//      
       
//        Alamofire.request(.GET, paramerUrl, parameters: [:])
//            .responseJSON { response in
//                
//                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
//                }
//        }
        
     EBTAlamofireManager.shareInstance.test()
        
        
//        Alamofire.request(.GET, paramerUrl, parameters: [:]).responseData{
//        
//          response in print(response.result.value!)
//        }
    

//        Alamofire.request(.GET, paramerUrl).responseString{
//           response in
//            print("Success: \(response.result.isSuccess)")
//            print("Response String: \(response.result.value!)")
//        }
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }


}

