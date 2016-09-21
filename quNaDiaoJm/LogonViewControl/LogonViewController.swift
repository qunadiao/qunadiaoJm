//
//  LogonViewController.swift
//  quNaDiaoJm
//
//  Created by 阿树 on 16/9/12.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class LogonViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    @IBOutlet weak var phonenumber: UITextField!
    @IBOutlet weak var code: UITextField!
    
    
    //键盘点击return回收
    //通过委托来实现放弃第一响应者
    //UITextField Delegate Method
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //通过委托来实现放弃第一响应者(方法2)
    //UITextView Delegate  Method
//    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
//        if (text == "\n") {
//            textView.resignFirstResponder()
//            return false
//        }
//        return true
//    }
//
    override func viewDidLoad() {
        
        phonenumber.delegate = self
        
        code.delegate = self

        super.viewDidLoad()
        
        self.navigationController?.navigationBar.hidden = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
