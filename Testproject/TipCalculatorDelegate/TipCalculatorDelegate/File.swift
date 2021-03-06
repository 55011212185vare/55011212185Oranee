//
//  File.swift
//  TipCalculatorDelegate
//
//  Created by Student on 9/26/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import Foundation
class TipCalulatorModel {
    
    //2
    var total:Double
    var taxPct:Double
    var subtotal:Double{
     get {
    return total/(taxPct + 1)
    }
    }
    //3
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double)-> Double{
        return subtotal * tipPct
    }
    //1
    func returnPossibletips() ->[Int: Double]{
        
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
        
        //2
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}
//6
let tipCalc = TipCalulator(total: 33.25, taxPct: 0.06)

