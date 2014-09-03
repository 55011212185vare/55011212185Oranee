class zooandanimal{
    let animal:String
    let food:String
    var docAnimal:Dictionary <String,String>=["Elephant":"cane","bear":"fish","Tiger":"meat"]
    init (animal:String,food:String)
    {
        self.animal=animal
        self.food=food
    }
    func changAnimal()->[String:String]
    {
        docAnimal["bear"]="water"
        return docAnimal
    }
    func addAnimal()->[String:String]
    {
        docAnimal["buffalo"]="grass"
        return docAnimal
    }
    func removeAnimal()->[String:String]
    {
        docAnimal["lion"]=nil
        return docAnimal
    }
 
}

let testAnimal = zooandanimal(animal:"Nameanimal", food:"namefood")
testAnimal.addAnimal()

