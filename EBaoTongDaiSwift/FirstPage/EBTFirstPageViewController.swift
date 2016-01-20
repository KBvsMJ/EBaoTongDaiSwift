//
//  ViewController.swift
//  EBaoTongDaiSwift
//
//  Created by ebaotong on 16/1/5.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit
import Alamofire
class EBTFirstPageViewController: EBTBaseViewController,SecondViewControllerDelegate,UITextFieldDelegate {

    @IBOutlet weak var TFContent: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        self.TFContent.delegate = self
        
        
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }

    
    @IBAction func btnClick(sender: UIButton)
    {
     
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil);
        let secondCtl = storyBoard.instantiateViewControllerWithIdentifier("SecondViewController")
        
        self.navigationController?.pushViewController(secondCtl, animated: true)
        
        
    }


    func passValueToViewController(value: String) {
        self.TFContent.text = value
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
}

