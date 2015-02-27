//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() ->Array<balloon>{
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "Lion.png"), bName: "Lion")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "Shark.jpg"), bName: "Shark")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "Sheep.jpg"), bName: "Sheep")
        tempArray.append(b3)
        
        let b4 = balloon(bImage: UIImage(named: "Tiger.png"), bName: "Tiger")
        tempArray.append(b4)
        
        let b5 = balloon(bImage: UIImage(named: "Zebra.jpg"), bName: "Zebra")
        tempArray.append(b5)
        
        return tempArray
    }
   
}
