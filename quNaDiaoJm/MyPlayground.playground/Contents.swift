//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var FishingSpotName = ["娱乐钓鱼场","兄弟山庄钓鱼场","一加一钓鱼场","新科钓鱼场","蕉西水闸","李溪大坝","密西西比河钓场","三峡大坝","京杭大运河","珠江","南亭码头","渔人码头","夏威夷渔场","爱情公渔","渔夫","三文度假山庄","去哪钓"]

var FishingSpotImage = ["古明地恋.jpeg","古明地觉.jpg","霍青娥.jpg","洩矢诹访子.jpg","雾雨魔理沙.jpeg","西行寺幽幽子.jpg","帕秋莉诺蕾姬.jpg","魂魄妖梦.jpeg","蕾米莉亚斯卡雷特.jpg","蓬莱山辉夜.jpeg","芙兰朵露斯卡雷特.jpg","十六夜咲夜.jpg","八云紫.jpg","博丽灵梦.jpeg","藤原妹红.jpeg","射命丸文.jpeg","东风谷早苗.png"]

var FishingSpotLocation = ["番禺区","海珠区","天河区","南沙区","大学城","番禺区","海珠区","天河区","南沙区","大学城","番禺区","海珠区","天河区","南沙区","大学城","番禺区","海珠区"]

var FishingSpotType = ["天坑","江河","黑坑","斤塘","天坑","江河","黑坑","斤塘","天坑","江河","黑坑","斤塘","天坑","江河","黑坑","斤塘","天坑"]

var FishingSpotDistance = ["离我：1.8km","离我：5.2km","离我：1.0km","离我：4.4km","离我：3.2km","离我：3.3km","离我：7.9km","离我：8.0km","离我：15.5km","离我：18.2km","离我：20.1km","离我：27.7km","离我：30.8km","离我：52.2km","离我：74.5km","离我：77.3km","离我：78.5km"]


for a in 0..<FishingSpotName.count{
    
    print("FishingSpot(name: \"\(FishingSpotName[a])\",type: \"\(FishingSpotType[a])\",location: \"\(FishingSpotLocation[a])\",image: \"\(FishingSpotImage[a])\",distance: \"\(FishingSpotDistance[a])\")",",")
}