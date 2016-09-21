////
////  FishingSpotViewController.swift
////  quNaDiaoJm
////
////  Created by 张航 on 16/7/9.
////  Copyright © 2016年 张航. All rights reserved.
////
//
//import UIKit
//import MapKit
//import CoreLocation
//class FishingSpotViewController: UIViewController,CLLocationManagerDelegate{
//    let locationManager = CLLocationManager()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        mapRun()
//        // Do any additional setup after loading the view.
//    }
//    
//    func mapRun(){
//        let map = MKMapView()
//        let screenFrame = UIScreen.mainScreen().bounds
//        map.frame = screenFrame
//        self.view.addSubview(map)
//        locationManager.delegate = self
//        map.mapType = .Standard
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestAlwaysAuthorization()
//        if(CLLocationManager.locationServicesEnabled()){
//            locationManager.startUpdatingLocation()
//            print("定位开始")
//        }
//        let latDelta = 0.005
//        let longDelta = 0.005
//        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
//        let center : CLLocation = CLLocation(latitude: 23.0390000612, longitude: 113.3949587036)
//        let currentRegion: MKCoordinateRegion=MKCoordinateRegion(center: center.coordinate,span :currentLocationSpan )
//        map.setRegion(currentRegion, animated: true)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
//        
//        let location:CLLocation = locations.last!
//        if location.horizontalAccuracy>0{
//        print(location.coordinate.longitude)
//        print(location.coordinate.latitude)
//        }}
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
