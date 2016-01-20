//
//  SecondViewController.swift
//  EBaoTongDaiSwift
//
//  Created by MJ on 16/1/20.
//  Copyright © 2016年 com.csst. All rights reserved.
//

import UIKit


protocol SecondViewControllerDelegate:NSObjectProtocol
{
   
    func passValueToViewController(value: String);
    
    
}

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    
    
    
    @IBOutlet weak var TFContent: UITextField!
    
    var delegate: SecondViewControllerDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    self.TFContent.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnClick(sender: UIButton)
    {
        
        if  ((delegate != nil)&&(delegate.respondsToSelector("passValueToViewController:")))
        {
            delegate.passValueToViewController(self.TFContent.text!);
        
        }
        self.navigationController!.popViewControllerAnimated(true)
        
        
        
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }


}
