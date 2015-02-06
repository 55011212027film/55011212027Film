//
//  ViewController.swift
//  Week4_Lab_Film
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum1: Int = 0
    var sum2: Int = 0
    var sum3: Int = 0

    @IBOutlet weak var Lable1: UILabel!
    
    
    @IBOutlet weak var Label2: UILabel!
    
    
    @IBOutlet weak var Label3: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func oneBT(sender: AnyObject) {
        
        sum1 += 10
        Lable1.text = String(format: "%d", sum1)
        
    }
    
    
    @IBAction func twoBT(sender: AnyObject) {
        sum2 += 20
        Label2.text = String(format: "%d", sum2)
    }
    
    
    @IBAction func ThreeBT(sender: AnyObject) {
        sum3 += 30
        Label3.text = String(format: "%d", sum3)
        
    }
    
    @IBAction func ResetBT(sender: AnyObject) {
        sum1 = 0
        sum2 = 0
        sum3 = 0
        Lable1.text = "0"
        Label2.text = "0"
        Label3.text = "0"
        
    }
   


}

