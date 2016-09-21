//
//  LoadViewController.swift
//  quNaDiaoJm
//
//  Created by 阿树 on 16/9/11.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class LoadViewController: UIViewController {

    
    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loading: UIButton!
    
    override func viewDidLoad() {
        User.layer.borderColor = UIColor.whiteColor().CGColor
        password.layer.borderColor = UIColor.whiteColor().CGColor
        
        loading.layer.cornerRadius = 8
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
