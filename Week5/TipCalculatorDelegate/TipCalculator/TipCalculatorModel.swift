import Foundation
class TipCalculatorModel{
    
    var total: Double
    var taxPct: Double
    var subtotal: Double{
        
        get{
            return total / (taxPct + 1)
        }
    }
    
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        
    }
    func calaTipWithTipPct(tipPct:Double) ->(tipAmt:Double, total:Double){
        let tipAmt = subtotal * tipPct
        let finalTotal = total + tipAmt
        return (tipAmt, finalTotal)
    }
    
    func returnPossibleTips() -> [Int:(tipAmt:Double, total:Double)]{
        
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