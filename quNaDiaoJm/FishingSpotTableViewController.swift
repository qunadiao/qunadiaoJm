//
//  FishingSpotTableViewController.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/8/21.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit


class FishingSpotTableViewController: UITableViewController {
    
    
    var FishingSpotName = ["娱乐钓鱼场","兄弟山庄钓鱼场","一加一钓鱼场","新科钓鱼场","蕉西水闸","李溪大坝","密西西比河钓场","三峡大坝","京杭大运河","珠江","南亭码头","渔人码头","夏威夷渔场","爱情公渔","渔夫","三文度假山庄","去哪钓"]
    
    var FishingSpotImage = ["古明地恋.jpeg","古明地觉.jpg","霍青娥.jpg","洩矢诹访子.jpg","雾雨魔理沙.jpeg","西行寺幽幽子.jpg","帕秋莉诺蕾姬.jpg","魂魄妖梦.jpeg","蕾米莉亚斯卡雷特.jpg","蓬莱山辉夜.jpeg","芙兰朵露斯卡雷特.jpg","十六夜咲夜.jpg","八云紫.jpg","博丽灵梦.jpeg","藤原妹红.jpeg","射命丸文.jpeg","东风谷早苗.png"]
    
    var FishingSpotLocation = ["番禺区","海珠区","天河区","南沙区","大学城","番禺区","海珠区","天河区","南沙区","大学城","番禺区","海珠区","天河区","南沙区","大学城","番禺区","海珠区"]
    
    var FishingSpotType = ["天坑","江河","黑坑","斤塘","天坑","江河","黑坑","斤塘","天坑","江河","黑坑","斤塘","天坑","江河","黑坑","斤塘","天坑"]
    
    var FishingSpotDistance = ["离我：1.8km","离我：5.2km","离我：1.0km","离我：4.4km","离我：3.2km","离我：3.3km","离我：7.9km","离我：8.0km","离我：15.5km","离我：18.2km","离我：20.1km","离我：27.7km","离我：30.8km","离我：52.2km","离我：74.5km","离我：77.3km","离我：78.5km"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    /*
    //选择了行之后的操作
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alert = UIAlertController(title: "亲，你选择了我", message: "消息", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: .Cancel , handler: nil)
        
        let 拨打行为的处理 = { (action:UIAlertAction) -> Void in
            let alert = UIAlertController(title: "提示", message: "您拨打的号码暂时无法接通，请稍后再拨", preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(action)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        let dialActon = UIAlertAction(title: "拨打 021-6532 \(indexPath.row)", style: .Default, handler: 拨打行为的处理)
        
        alert.addAction(cancelAction)
        alert.addAction(dialActon)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return FishingSpotName.count
    }

    
    //重用单元格
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SpotCell", forIndexPath: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = FishingSpotName[indexPath.row]
        cell.fishingImage.image = UIImage(named: FishingSpotImage[indexPath.row])
        cell.locationLabel.text = FishingSpotLocation[indexPath.row]
        cell.typeLabel.text = FishingSpotType[indexPath.row]
        cell.distanceLabel.text = FishingSpotDistance[indexPath.row]
       
        cell.mapLabel.text = "地图"
        cell.titleLabel.text = "类型："
        
        
        //图片圆角化的半径设置（内切圆半径）
//        cell.fishingspotImage.layer.cornerRadius = cell.fishingspotImage.frame.size.width/2
        cell.fishingImage.layer.cornerRadius = 20
        cell.fishingImage.clipsToBounds = true
        
        
        return cell
    }
    
    
    /*
    //隐藏状态栏
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    */
 
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showFishingSpotDetail"{
            
            let destVc = segue.destinationViewController as! FishingSpotDetailViewController
            destVc.fishingspotName = FishingSpotImage[(tableView.indexPathForSelectedRow!.row)]
        }
        
        
    }
    */

}
