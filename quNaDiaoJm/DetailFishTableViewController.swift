//
//  DetailFishTableViewController.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/8/22.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class DetailFishTableViewController: UITableViewController {

    var fishingspot:FishingSpot!
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func detailButton(sender: AnyObject) {
        
        //右上角按钮点击事件
        let alert = UIAlertController(title: "提示", message: "", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: .Cancel , handler: nil)
        
        let 举报行为的处理 = { (action:UIAlertAction) -> Void in
            let alert = UIAlertController(title: "", message: "您已成功举报该钓场！感谢您的支持！", preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(action)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        let jubaoActon = UIAlertAction(title: "举报", style: .Default, handler: 举报行为的处理)
        
        let collectAction = UIAlertAction(title: "收藏渔场", style: .Default, handler: nil)
        
        alert.addAction(cancelAction)
        alert.addAction(collectAction)
        alert.addAction(jubaoActon)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage (named: fishingspot.image)
        //隐藏图片超出控件的部分
        imageView.clipsToBounds = true
        
        
        //隐藏多余的分割线
        let view = UIView()
        view.backgroundColor = UIColor.clearColor()
        tableView.tableFooterView = view

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if section == 0{
            return 1
        }else{
            return 3
        }
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let text = ["放鱼时间","放鱼种类","钓场简介"]
        
        if indexPath.section == 0{
        
            let cell = tableView.dequeueReusableCellWithIdentifier("DetailCell", forIndexPath: indexPath) as! DetailTableViewCell
        
            cell.alabel.text = fishingspot.name
            cell.blabel.text = "¥100/天"
            cell.alocation.text = fishingspot.location
            cell.atitle.text = "类型："
            cell.atype.text = fishingspot.type
        
            //对按钮进行操作
            var pbimage = UIImage(named: "contact.png")
            pbimage = pbimage?.scaleImage(0.4)
            cell.photoButton.setImage(pbimage, forState: .Normal)
            cell.photoButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
            
            var dhimage = UIImage(named:"location.png")
            dhimage = dhimage?.scaleImage(0.4)
            cell.dhButton.setImage(dhimage, forState: .Normal)
            cell.dhButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
            
            var mapimage = UIImage(named: "distance.png")
            mapimage = mapimage?.scaleImage(0.4)
            cell.mapButton.setImage(mapimage, forState: .Normal)
            cell.mapButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
            
            return cell
        
        }
        else{
            
            let adcell = tableView.dequeueReusableCellWithIdentifier("ADetailCell", forIndexPath: indexPath) as! EasyFishingSpotTableViewCell
            
            adcell.contentlabel.text = text[indexPath.row]
            adcell.textlabel.text = text[indexPath.row]
            
            return adcell
        }
        
        
    }
   

    //设置cell高度
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 124
        }else{
            return 71
        }
    }
    
    
    //调整section之间的距离
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10.0
    }
    
    
    
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    

}

extension UIImage {
    /**
     *  重设图片大小
     */
    func reSizeImage(reSize:CGSize)->UIImage {
        //UIGraphicsBeginImageContext(reSize);
        UIGraphicsBeginImageContextWithOptions(reSize,false,UIScreen.mainScreen().scale);
        self.drawInRect(CGRectMake(0, 0, reSize.width, reSize.height));
        let reSizeImage:UIImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return reSizeImage;
    }
    
    /**
     *  等比率缩放
     */
    func scaleImage(scaleSize:CGFloat)->UIImage {
        let reSize = CGSizeMake(self.size.width * scaleSize, self.size.height * scaleSize)
        return reSizeImage(reSize)
    }
}
