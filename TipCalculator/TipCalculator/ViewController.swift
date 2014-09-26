//
//  ViewController.swift
//  TipCalculator
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{
    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var textPctSlider : UISlider!
    @IBOutlet var textPctLabel : UILabel!
    @IBOutlet weak var TableView: UITableView!
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    var possibleTips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    
    
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        textPctSlider.value = Float(tipCalc.taxPct) * 100.0
        textPctLabel.text = "Tax Percentage(\(Int(textPctSlider.value))%)"
        
    }
    
    @IBAction func calculateTapped(sender :AnyObject){
    tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
    possibleTips = tipCalc.returnPossibletips()
        sortedKeys = sorted(Array(possibleTips.keys))
        TableView.reloadData()
    
        }
    @IBAction func taxtPercentageChanged(sender :AnyObject){
    tipCalc.taxPct = Double(textPctSlider.value)/100.0
    refreshUI()
    }
    
    @IBAction func viewTapped(sender :AnyObject){
    totalTextField.resignFirstResponder()
}
    
    
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}


