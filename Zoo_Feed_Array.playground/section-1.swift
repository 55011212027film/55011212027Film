    class FeedForAnimal {
        let Animal : [String] = ["Monkey", "Bear", "Duck"]
        let Food : [String] = ["Banana", "Fish", "HeadFood"]
        let AnimalName:String
        
        init(Animal: String){
            self.AnimalName=Animal
        }
        func FeedFood() ->String{
            var Feed:String = ""
            for (var i=0 ; i < Animal.count ; i++){
                if(Animal[i] == AnimalName){
                    Feed=Food[i];
                    
                }
            }
            return Feed
        }
        
    }
    let FoodAni = FeedForAnimal(Animal: "Monkey")
    FoodAni.FeedFood()
