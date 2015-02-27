class TipCalculator{
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
       
    }
    
    func calaTipWithTipPct(tipPct:Double) ->Double{
        return subtotal * tipPct
    }
    
        func returnPossibleTips() -> [Int: Double]{
            
        let possiblrTipInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
            
        
        var retval = [Int:Double]()
        for possibleTip in possiblrTipInferred {
            let intPct = Int(possibleTip*100)
            
            retval[intPct] = calaTipWithTipPct(possibleTip)
        }
        return retval
    }
    
}


