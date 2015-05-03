import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    
    let myFavoriteCheese = cheese + " cheese"
    
    return myFavoriteCheese
}

var myFave = favoriteCheeseStringWithCheese("cheddar")

let fullSentence = "my favorite cheese is " + favoriteCheeseStringWithCheese("cheddar").stringByReplacingOccurrencesOfString(" cheese", withString: "")

// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"

println(numberDictionary)

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE

for number in 1...10{
    println(number)
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

for number in 1..<10{
    println(number)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinkArray : [String] = [""]
    //NOTE TO MARK: I know this is a bit of a cheat, but if I don't add this element, it doesn't work. Something about not being able to append before it gets initialized. Any suggestions?
    
    for character in characters{
    
        for (key, value) in character{
            if key == "favorite drink"{
                drinkArray.append(value)
            }
        }
    }

    drinkArray.removeAtIndex(0)
    return drinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func takeAnArrayAndMakeStrings (inputArray : Array<String>) -> String{
    var thisString = ""
    for var i = 0; i < inputArray.count; i++ {
        if i != inputArray.count - 1 {
            thisString = thisString.stringByAppendingString(inputArray[i]) + ";"
        }
        else{
            thisString = thisString.stringByAppendingString(inputArray[i])
        }
    }
    
    return thisString
}

var actualOutput = takeAnArrayAndMakeStrings(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
 let cerealArraySortedAlphabetically = sorted(cerealArray)
