
let name = "Kokkak"
let grade = 15
let fainall = 50
var sum = grade + fainall
sum = sum+1

let tutorialteam = 56
let editioriateam = 23
var totalTeam = tutorialteam + editioriateam
    totalTeam += 1

let priceIntinferred = -19
let priceIntExplicit:Int = -19

let priceFloatferred = -19.99
let priceFloatExplicit:Double = -19.99

let onsaleInferred = true
let onsaleExplicit:Bool = true

let nameInferred = "whoopie Cushion"
let nameExplicit:String = "whoopie Cushion"

//-------------------------array---------------------------------------------

var  shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
// var shoppingListExplicit : [String] = ["Eggs","Milk"]

var shoppinglist = ["Eggs","Milk"]
println("The shopping list contains\(shoppinglist.count)items.")
shoppinglist.append("Flour")
shoppinglist += "Baking Powder"
shoppinglist += ["Chocolate Spread","cheese","Butter"]
var  firstItem = shoppinglist[0]
shoppinglist[0] = "six eggs"
//shoppinglist[0...3] = ["Bananas","Apples"]
shoppinglist

//--------------------add Value to array---------------------------------

shoppinglist += ["Baking Power"]
//shoppinglist now contains 4 items
shoppinglist += ["chocolate Spread","Cheese","Butter"]
//shopping now contains 7 items

shoppinglist .insert("maple Syrup", atIndex:0)
//shoppinglist now contains 7 items
// "maple syrup" is now the first item in the list

shoppinglist.append("flour")
// shoppinglist now contains 3 items,and some is making pancakes
shoppinglist += ["Baking Powder"]
 firstItem = shoppinglist[0]
// firstitem is equal to "Eggs"

shoppinglist[4...6] = ["bananas","Apples"]
//shoppinglist now contains 6 items

//--------------------remove values from array---------------

let apples = shoppinglist.removeLast()
// the last item in the array has just been removed
// shoppinglist now contains 5 items, and no apples
// the aples constant is noe=w equal to removed "Apples" string

let maplesyrup = shoppinglist.removeAtIndex(0)
// the item that was at tndex 0 has just been removed
//shoppinglist now contains 6 items, and no maple syrup
// the maplesyrup constant is now equal to the removed "maple syrup" string




