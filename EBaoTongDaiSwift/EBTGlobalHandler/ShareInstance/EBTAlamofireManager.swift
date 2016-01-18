//
//  EBTAlamofireManager.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/13.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit
import Alamofire
class EBTAlamofireManager: NSObject {

    var alamofireManager:Manager

    class var shareInstance:EBTAlamofireManager
        {
            struct StaticMyInstance
            {
            
                static var onceToken: dispatch_once_t = 0
                static var instance: EBTAlamofireManager? = nil
                
            }
            
            dispatch_once(&StaticMyInstance.onceToken)
                {
                   
                
                StaticMyInstance.instance = EBTAlamofireManager.init()
                
            }
            return StaticMyInstance.instance!
            
            
    }
    
    override init()
    {
        
    let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        config.timeoutIntervalForRequest = 5
        alamofireManager = Manager.init(configuration: config)
        
        
        
    }
    
    func test()
    {
    let paramerUrl = KEBTHttpServerBaseURL + kEBTAccessTokenBaseURL + EBTGlobalHandler.currentDeviceVendor()
        alamofireManager.request(.GET, paramerUrl, parameters: nil, encoding: ParameterEncoding.URL).responseJSON{
        response in
        
            let  dict = response.result.value as! NSDictionary
             print(dict["data"]!)
            
            
        }

        
       
    }
    

    
    
    
    
    
    
}
