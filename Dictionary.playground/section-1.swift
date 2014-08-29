var airports: [String: String] = ["TYO":"Tokyo","DUB": "Dublin"]

if airports.isEmpty{
        println("the airports dictionary is empty.")
} else{
    println("the airports dictionary is not empty.")
}
// prints "the airports dictionary is empty."

println("the airports dictionary cintains\(airports.count)items.")
// prints "the airports dictionary cintains 2 items."

//------------------update and add value dictionary-----------

airports["LHR"] = "London"
//the airports dictionary now contains 3 items

airports["LHR"] = "LOndon Heathrow"
//the value for "lhr" has been changed to "london heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("the old value for DUB was\(oldValue).")
}
// prints "the old value for Dub was Dublin"

//--------------remove value dictionary-----------------------

airports["APL"] = "Apple International"
// "apple International" is not the real airport for apl , so delete it
airports["APL"] = nil
// apl has now been removed from the dictionary

if let removedValue = airports.removeValueForKey("DUB"){
    println("the removed airport's name id\(removedValue).")
} else{
    println("the airport dictionary does not contain a value for DUB.")
    
}
// prints "the removed airport's name is dublin international."
