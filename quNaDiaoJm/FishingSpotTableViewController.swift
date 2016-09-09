//
//  FishingSpotTableViewController.swift
//  quNaDiaoJm
//
//  Created by 杨智 on 16/8/21.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit


class FishingSpotTableViewController: UITableViewController,UISearchResultsUpdating {
    
    var fishingSpots = [
    
    FishingSpot(name: "娱乐钓鱼场",type: "天坑",location: "番禺区",image: "古明地恋.jpeg",distance: "离我：1.8km") ,
    FishingSpot(name: "兄弟山庄钓鱼场",type: "江河",location: "海珠区",image: "古明地觉.jpg",distance: "离我：5.2km") ,
    FishingSpot(name: "一加一钓鱼场",type: "黑坑",location: "天河区",image: "霍青娥.jpg",distance: "离我：1.0km") ,
    FishingSpot(name: "新科钓鱼场",type: "斤塘",location: "南沙区",image: "洩矢诹访子.jpg",distance: "离我：4.4km") ,
    FishingSpot(name: "蕉西水闸",type: "天坑",location: "大学城",image: "雾雨魔理沙.jpeg",distance: "离我：3.2km") ,
    FishingSpot(name: "李溪大坝",type: "江河",location: "番禺区",image: "西行寺幽幽子.jpg",distance: "离我：3.3km") ,
    FishingSpot(name: "密西西比河钓场",type: "黑坑",location: "海珠区",image: "帕秋莉诺蕾姬.jpg",distance: "离我：7.9km") ,
    FishingSpot(name: "三峡大坝",type: "斤塘",location: "天河区",image: "魂魄妖梦.jpeg",distance: "离我：8.0km") ,
    FishingSpot(name: "京杭大运河",type: "天坑",location: "南沙区",image: "蕾米莉亚斯卡雷特.jpg",distance: "离我：15.5km") ,
    FishingSpot(name: "珠江",type: "江河",location: "大学城",image: "蓬莱山辉夜.jpeg",distance: "离我：18.2km") ,
    FishingSpot(name: "南亭码头",type: "黑坑",location: "番禺区",image: "芙兰朵露斯卡雷特.jpg",distance: "离我：20.1km") ,
    FishingSpot(name: "渔人码头",type: "斤塘",location: "海珠区",image: "十六夜咲夜.jpg",distance: "离我：27.7km") ,
    FishingSpot(name: "夏威夷渔场",type: "天坑",location: "天河区",image: "八云紫.jpg",distance: "离我：30.8km") ,
    FishingSpot(name: "爱情公渔",type: "江河",location: "南沙区",image: "博丽灵梦.jpeg",distance: "离我：52.2km") ,
    FishingSpot(name: "渔夫",type: "黑坑",location: "大学城",image: "藤原妹红.jpeg",distance: "离我：74.5km") ,
    FishingSpot(name: "三文度假山庄",type: "斤塘",location: "番禺区",image: "射命丸文.jpeg",distance: "离我：77.3km") ,
    FishingSpot(name: "去哪钓",type: "天坑",location: "海珠区",image: "东风谷早苗.png",distance: "离我：78.5km") ,
    ]
    
    
    // 保存搜索结果
    var sr:[FishingSpot] = []
    
    // 搜索控制器
    var sc = UISearchController(searchResultsController: nil)
    
    // 更新列表，显示搜索结果
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        if var textToSearch = sc.searchBar.text {
            
            // 去除搜索时添加空格的影响
            textToSearch = textToSearch.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            
            searchFilter(textToSearch)
            tableView.reloadData()
        }
    }
    
    
    // 筛选结果
    func searchFilter(textToSearch:String){
        sr = fishingSpots.filter({ (r) -> Bool in
            return r.name.containsString(textToSearch)
        })
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 搜索条放在页眉处
        tableView.tableHeaderView = sc.searchBar
        
        sc.searchBar.placeholder = "输入钓场名搜索..."
        sc.searchBar.searchBarStyle = .Minimal
        
        sc.searchResultsUpdater = self
        //搜索时背景是否变暗
        sc.dimsBackgroundDuringPresentation = false
        
        //配置分段条
        sc.searchBar.scopeButtonTitles = ["距离","钓场类型","更多筛选"]
        sc.searchBar.showsScopeBar = false
  
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
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sc.active ? sr.count : fishingSpots.count
    }

    
    //重用单元格
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SpotCell", forIndexPath: indexPath) as! CustomTableViewCell

        let r = sc.active ? sr[indexPath.row] : fishingSpots[indexPath.row]
        
        
        cell.nameLabel.text = r.name
        cell.fishingImage.image = UIImage(named: r.image)
        cell.locationLabel.text = r.location
        cell.typeLabel.text = r.type
        cell.distanceLabel.text = r.distance
        
        /*
        cell.nameLabel.text = fishingSpots[indexPath.row].name
        cell.fishingImage.image = UIImage(named: fishingSpots[indexPath.row].image)
        cell.locationLabel.text = fishingSpots[indexPath.row].location
        cell.typeLabel.text = fishingSpots[indexPath.row].type
        cell.distanceLabel.text = fishingSpots[indexPath.row].distance
        */
 
        cell.mapLabel.text = "地图"
        cell.titleLabel.text = "类型："
        
        
        //图片圆角化的半径设置（内切圆半径）
        cell.fishingImage.layer.cornerRadius = 5
        cell.fishingImage.clipsToBounds = true
        
        //cell.fishingspotImage.layer.cornerRadius = cell.fishingspotImage.frame.size.width/2
        
        return cell
    }
    
    
    /*
    //隐藏状态栏
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    */
 
    
    // 搜索时单元格不可编辑
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return !sc.active
    }
    

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

    

    // 转场
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showFishingSpotDetail"{
            
            let destVc = segue.destinationViewController as! DetailFishTableViewController
            destVc.fishingspot = sc.active ? sr[(tableView.indexPathForSelectedRow!.row)] :
                fishingSpots[(tableView.indexPathForSelectedRow!.row)]
        }
        
        
    }
    

    
}