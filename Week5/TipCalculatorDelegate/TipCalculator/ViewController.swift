//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var Tableview: UITableView!

    @IBOutlet weak var TotalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextview: UITextView!
    
    //Button
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((TotalTextField.text as NSString).doubleValue)
        
        let posibleTips = tipCalc.returnPossibleTips()
        var results = ""
        
        for (tipPct, tipValue) in posibleTips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        
        resultsTextview.text = results
        
    }
    //Slider
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
        
    }
    //Tab Gesture Recognizer
    @IBAction func viewTapped(sender: AnyObject) {
        TotalTextField.resignFirstResponder()
    }
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    
    
    func refreshUI() {
        
        TotalTextField.text = String(format: "%0.2f" , tipCalc.total)
        
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        
        resultsTextview.text = ""
        
    }
    
    func func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedkeys.count
    }
    
    
    
    
}

