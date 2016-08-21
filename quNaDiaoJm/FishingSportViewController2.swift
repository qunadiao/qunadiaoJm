//
//  FishingSportViewController2.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/8/21.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class FishingSportViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var FishingSpot = ["娱乐钓鱼场","兄弟山庄钓鱼场","一加一钓鱼场","新科钓鱼场","蕉西水闸","李溪大坝","密西西比河钓场","三峡大坝","京杭大运河","珠江","南亭码头","渔人码头"]
    
    
    //表格区块中有几个单元格
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FishingSpot.count
    }
    
    //表格对应单元格显示的内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath)
        cell.textLabel?.text = FishingSpot[indexPath.row]
        cell.imageView?.image = UIImage(named: "FishIcon.jpg")
        
        return cell
    }

    //隐藏屏幕上方的状态栏
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
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
