//
//  EBTGlobalHandler.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/12.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit


class EBTGlobalHandler: NSObject {

 class func currentDeviceVendor()-> String
  {
    

      let uuid = UIDevice.currentDevice().identifierForVendor
      let result = String(uuid!)
      let array:Array = result.componentsSeparatedByString(" ")
      let currentId = array[array.count-1]
      return currentId
    
    
    
    
    
   }
    
    
    
    
}
