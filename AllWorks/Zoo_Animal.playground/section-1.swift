class FoodForAnimal{
    var AnimalFeed : [String:String] = ["Dog" : "Chicken", "Cat" : "Fish", "Monkey" : "Banana"]
    let Animal:String
    
    init(AnimalFeed:String){
        self.Animal=AnimalFeed
    }
    func FeedFood() ->String {
        var Feed:String = ""
        for (key,value) in AnimalFeed{
            if(key == Animal){
                Feed=value
            }
        }
        return Feed
    }
    
    
}
let FoodAni = FoodForAnimal(AnimalFeed: "Monkey")
FoodAni.FeedFood()