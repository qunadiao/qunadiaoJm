//
//  MineViewController.swift
//  quNaDiaoJm
//
//  Created by 张航 on 16/7/9.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class MineViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var tableView: UITableView!
    
    var allnames:Dictionary<Int, [String]>?
    
    var  imageName:Dictionary<Int, [String]>?
    

    override func loadView() {
        super.loadView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初始化数据
        self.allnames =  [
            0:[String]([
                "快乐的小鱼儿"]),
            1:[String]([
                "相册",
                "收藏",
                "积分"]),
            2:[String]([
                "版本"]),
            3:[String]([
                "设置"])
        ]
        
        print(self.allnames)
        
        self.imageName = [
            1:[String](["album.png", "collet.png" , "score.png"]),
         2:[String](["edition.png"]),
         3:[String](["setting.png"])]
        
        //创建表视图
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Grouped)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        //创建一个重用的单元格
        self.tableView!.registerClass(UITableViewCell.self,
                                      forCellReuseIdentifier: "SwiftCell")
        self.view.addSubview(self.tableView!)
        
    }
    
    
    
    //在本例中，有4个分区
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4;
    }
    
    //返回表格行数（也就是返回控件数）
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let data = self.allnames?[section]
        return data!.count
    }
    
    
    
    // UITableViewDataSource协议中的方法，该方法的返回值决定指定分区的头部
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int)
//        -> String? {
//            return
//    }
    
    // UITableViewDataSource协议中的方法，该方法的返回值决定指定分区的尾部
//    func tableView(tableView:UITableView, titleForFooterInSection
//        section:Int)->String?
//    {
//        let data = self.allnames?[section]
//        return "有\(data!.count)个控件"
//    }
    
    //创建各单元显示内容(创建参数indexPath指定的单元）
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell
    {
        //为了提供表格显示性能，已创建完成的单元需重复使用
        let identify:String = "SwiftCell"
        //同一形式的单元格重复使用，在声明时已注册
//        let cell = tableView.dequeueReusableCellWithIdentifier(
//            identify, forIndexPath: indexPath) as UITableViewCell
//        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        
        
        //单元格分区indexPath.section
        let secno = indexPath.section
        let data = self.allnames?[secno]
        let image1 = imageName![secno]
        
        //第一区为个人资料
        if secno == 0{
            let adcell = UITableViewCell(style: UITableViewCellStyle.Subtitle,
                                         reuseIdentifier: "SwiftCell")
            adcell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            
            let image = UIImage(named:"lingmeng.png")
            adcell.imageView?.image = image
            adcell.textLabel?.text = data![indexPath.row]
            
            print(adcell.textLabel?.text)
            adcell.detailTextLabel!.text = "钓钓号：7878787878"
            
            
            
            return adcell;
        }
        else{
            let cell = tableView.dequeueReusableCellWithIdentifier(identify, forIndexPath: indexPath)
                as UITableViewCell
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            
            let image = UIImage(named: "\(image1![indexPath.row])")
            cell.imageView?.image = image
            cell.textLabel?.text = data![indexPath.row]
            
            return cell
        }
    }
    
    // UITableViewDelegate 方法，处理列表项的选中事件
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        
        let itemString = self.allnames![indexPath.section]![indexPath.row]
        
        let alertController = UIAlertController(title: "提示!",
                                                message: "你选中了【\(itemString)】",
                                                preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "确定", style: .Cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.presentViewController(alertController, animated: true, completion: nil)
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
