class KeepUsername{
    var Userpass : [String:String] = ["Film" : "0624", "Poom" : "098", "Chatjan" : "042"]
    let User:String
    
    init(KeepUser:String){
        self.User = KeepUser
    }
    func keepUserpass() ->String {
        var Keeper:String = ""
        for (key,value) in Userpass{
            if(key == User){
                Keeper=value
            }
        }
        return Keeper
    }
    func Add(userAdd:String, passAdd:String){
        Userpass[userAdd] = passAdd
    
    }
    func Del(userdel:String){
        Userpass[userdel] = nil
        
    }
    func Edit(useredit:String, passedit:String){
        Userpass[useredit]=passedit
    }
    
    
}
let keeppass = KeepUsername(KeepUser : "Film")
keeppass.keepUserpass()
keeppass.Add("paul", passAdd: "1234")
keeppass.Del("Film")
keeppass.Edit("Poom", passedit: "FabFabFab")

