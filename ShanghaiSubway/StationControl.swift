//
//  StationControl.swift
//  ShanghaiSubway
//
//  Created by Yufei Wang on 5/18/16.
//  Copyright © 2016 Yufei Wang. All rights reserved.
//

import Foundation
import CoreImage
class Station {
    var ID: Int!
    var Name: String!
    var ImageName: String!
    var StartTime: Int!
    var EndTime: Int!
    init(ID:Int,Name:String,ImageName:String,StartTime:Int,EndTime:Int) {
        self.ID = ID
        self.EndTime = EndTime
        self.ImageName = ImageName
        self.Name = Name
        self.StartTime = StartTime
    }
}

class StationFinder{
    
    var test = [Station]()
    
    init(){
        test.append(Station(ID: 1,Name: "曹杨路",ImageName: "Pic1",StartTime: 5,EndTime: 22))
            
        test.append(Station(ID: 2,Name: "虹桥",ImageName: "Pic2",StartTime: 6,EndTime: 20))
    }

    func whichStation(X:CGFloat,Y:CGFloat) -> Int {
        if X>140 && X<150 && Y>280 && Y<290 {
            return test[0].ID
        }
        if X>52 && X<58 && Y>323 && Y<330 {
            return test[1].ID
        }
        return -1
    }
    
    
}

