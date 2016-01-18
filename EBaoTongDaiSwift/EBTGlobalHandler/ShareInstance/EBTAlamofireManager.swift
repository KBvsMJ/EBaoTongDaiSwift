//
//  EBTAlamofireManager.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/13.
//  Copyright © 2016年 com.csst. All rights reserved.
//



import UIKit
import Alamofire
typealias SuccessCompleteHandler = (responseObject: AnyObject!)->Void
typealias FailureCompleteHandler = (error:AnyObject!)->Void
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
        config.timeoutIntervalForRequest = 2
        alamofireManager = Manager.init(configuration: config)
        
        
        
    }
    
       
    func requestGetHttpMethod(httpURL paramerURL: String,paramter param:AnyObject!, success:SuccessCompleteHandler,failure: FailureCompleteHandler)
    {
    
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
       // Manager.sharedInstance.session.configuration.HTTPAdditionalHeaders = ["accessToken":""];
     let url = KEBTHttpServerBaseURL + paramerURL
        
        alamofireManager.request(.GET, url, parameters: param as? [String : AnyObject], encoding: ParameterEncoding.URL, headers: [:]).responseJSON{
        response in
            
          print(response.result.error)
        switch response.result
        {
        case .Success:
            
            success(responseObject: response.result.value)
            
            break
          
            
            
        case .Failure:
            failure(error: response.result.error)
            
            break
        }
        
             UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        }
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
}
