//
//  HomePageViewController.swift
//  quNaDiaoJm
//
//  Created by 张航 on 16/7/9.
//  Copyright © 2016年 张航. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var pagecontrol: UIPageControl!
    @IBOutlet weak var hPScrollView: UIScrollView!
    @IBOutlet weak var recommend: UIButton!
    @IBOutlet weak var around: UIButton!
    @IBOutlet weak var river: UIButton!
    @IBOutlet weak var sky: UIButton!
    private var timer : NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化导航栏
//        let homePageVCNavigationBar = self.navigationController?.navigationBar
//        homePageVCNavigationBar?.barTintColor = UIColor.init(red: 30/255, green: 144/255, blue: 255/255, alpha: 1)
//        homePageVCNavigationBar?.tintColor = UIColor.whiteColor()
//        homePageVCNavigationBar?.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        initView()
        
        //initbutton()
        
        // Do any additional setup after loading the view.
    }
    
   //初始化轮播窗口
    func initView(){
        let image_W:CGFloat = self.hPScrollView.frame.size.width
        let image_H:CGFloat = self.hPScrollView.frame.size.height
        let image_Y:CGFloat = 0
        let totalCount:NSInteger = 5
        for index in 0..<totalCount{
            let imageView:UIImageView = UIImageView()
            let image_X:CGFloat = CGFloat(index) * image_W+hPScrollView.contentOffset.x
            imageView.frame = CGRectMake(image_X, image_Y, image_W, image_H)
            let name:NSString = NSString(format:"image_%d",index+1)
            imageView.image = UIImage(named:name as String)
          
            self.hPScrollView.showsHorizontalScrollIndicator = false
            self.hPScrollView.addSubview(imageView)
        }
        
        self.view.addSubview(pagecontrol)
        // 解决像素下移
        self.automaticallyAdjustsScrollViewInsets = false
        
        let content_W:CGFloat = image_W * CGFloat(totalCount)
        self.hPScrollView.contentSize = CGSizeMake(content_W, 0)
        self.hPScrollView.pagingEnabled = true;
        self.hPScrollView.delegate = self
        self.pagecontrol.backgroundColor = UIColor.clearColor()
        self.pagecontrol.numberOfPages = totalCount
        self.addTimer()
    }
    //实现scrollview的delegate
    //第一个方法监听scrollview是否滑动，这里我们计算出当前page。第二个方法监听是否开始拖动的动作（把定时器关掉），第三个方法监听拖动结束的操作（把定时器重新打开）。
    func scrollViewDidScroll(hPScrollView: UIScrollView) {
        let scrollviewW:CGFloat = hPScrollView.frame.size.width
        let x:CGFloat = hPScrollView.contentOffset.x
        let page:Int = (Int)((x + scrollviewW / 2) / scrollviewW)
        self.pagecontrol.currentPage = page
    }
    
    func scrollViewWillBeginDragging(hPScrollView: UIScrollView) {
        print("scrollViewWillBeginDragging")
        self.removeTimer()
    }
    
    func scrollViewDidEndDragging(hPScrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("scrollViewDidEndDragging")
        self.addTimer()
    }
    
//实现定时器Timer
//定时器每个隔1s去出发nextImage这个方法，这里重新计算page。然后把timer加入NSRunLoop中，这个类的作用是监听timer是否触发，触发的时候就让他工作，没有触发就让它休眠。
    
    func addTimer(){
      self.timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: #selector(HomePageViewController.nextImage(_:)), userInfo: nil, repeats: true)
        NSRunLoop.currentRunLoop().addTimer(timer!, forMode: NSRunLoopCommonModes)

    }

    func removeTimer(){
        self.timer!.invalidate()
    }
    func nextImage(sender:AnyObject!){
        var page:Int = self.pagecontrol.currentPage
        if(page == 4){
            page = 0
        }else{
            page+=1
        }
        let x:CGFloat = CGFloat(page) * self.hPScrollView.frame.size.width
        self.hPScrollView.contentOffset = CGPointMake(x, 0)
    }
    
//    func initbutton(){
//        let index:CGFloat = (self.view.frame.size.width - 40)/3 + 20 + 75
//        around.frame  = CGRectMake(index, 199, 75, 90)
//        river.frame = CGRectMake(index * 2, 199, 75, 90)
//    }
    
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
