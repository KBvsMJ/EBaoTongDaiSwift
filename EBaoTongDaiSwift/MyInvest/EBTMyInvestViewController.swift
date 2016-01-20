//
//  EBTMyInvestViewController.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/5.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit

class EBTMyInvestViewController: EBTBaseViewController,UITableViewDataSource,UITableViewDelegate {

    
    var dataArray:NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataArray = NSMutableArray.init(capacity: 10)
        for index in 0...10
        {
         dataArray.addObject("test\(index)")
        }
      //dataArray = ["1","2"]
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MyInvestCell", forIndexPath: indexPath) as! MyInvestCell
        cell.lblContent.text = dataArray.objectAtIndex(indexPath.row) as? String
        
        return cell
        
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
}
