//
//  LoadViewController.swift
//  quNaDiaoJm
//
//  Created by 阿树 on 16/9/11.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class LoadViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate  {

    
    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loading: UIButton!
    
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

    override func viewDidLoad() {
        //设置圆角按钮
        loading.layer.cornerRadius = 8
        
        //隐藏导航栏
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Top, barMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true
        
        User.delegate = self
        
        password.delegate = self
        
        
                super.viewDidLoad()

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
