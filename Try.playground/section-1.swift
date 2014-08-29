class TipCalulator {
    
    //2
    let total:Double
    let taxPct:Double
    let subtotal:Double
    
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
    func returnPossibleTips() ->[Int:Double]{
        let possibletipsInferred = [0.15,0.18,0.20]
        let possibletipsExplict:[Double] = [0.15,0.18,0.20]
        var numberOfItems = possibletipsInferred.count
        
        //2
        var retval = [Int:Double]()
        for possibleTip in possibletipsInferred {
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}
//6
let tipCalc = TipCalulator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()
