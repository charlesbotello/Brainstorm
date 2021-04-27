//: # Week 2 Exercises
import SwiftUI
/*: 
 #### Question 1
 Imagine you are creating a database that can hold usernames, passwords, addresses, and phone numbers. The username and password fields are required while the address and phone number fields may be blank. What types in Swift would you use to represent these fields? Why?
 */
// I would use optional variables for addresses and phone numbers
// username and password must be non-optional can't be nill
/*:
 #### Question 2
 Create the variables described in Exercise 1 and use type annotation to explicitly define their types.
 */
var userName: String = "cbot"
var password: String = "password"

var address: String? = nil
var phoneNumber: String? = nil
var name: String? = "John"
/*:
 #### Question 3
 Given the following `String?` (optional string) variable, use an `if let` statement along with string interpolation to print a greeting when a value is present.
 */
let a: String? = "a"

if a != nil {
    print("\(a!) is not nil")
}
/*:
 #### Question 4
 Write an `else` condition on your `if let` statement from Exercise 3 which prints "No one's here" when the variable `name` has no value. Experiment between giving `name` a `String` value and a `nil` value.
*/
let b: String? = nil

if b != nil {
    print("\(b!) is nil")
} else {
    print("No one's here")
}
/*:
 #### Question 5
 Using arithmetic operators, create a function (`func`) to change any given temperature from Fahrenheit to Celsius.
 */
// (32°F − 32) × 5/9
//function template:
func convertTemperatureToCelsius(fahrenheitTemp: Double) -> Double {
    //add correct code here
    let celcius = (fahrenheitTemp - 32) * 5/9
    
    return celcius
}


/*:
 #### Question 6
 Use the function you just wrote, along with string interpolation, to print a temperature conversion in a human-readable form, e.g. print "32.0F is equal to 0.0C".
 */
print("32.0F is equal to \(convertTemperatureToCelsius(fahrenheitTemp: 32.0))C ")
/*:
 #### Question 7
 Create an array of 3 songs where each song is represented by a dictionary. The dictionary should contain the following keys: `"title"`, `"artist"` and `"album"`.
 */
var music: [String : String] = ["title" : "Knockin' on Heaven's Door", "artist" : "Bob Dylan", "album": "Pat Garrett and Billy the Kid"]

var songs = [
    ["title" : "Knockin' on Heaven's Door", "artist" : "Bob Dylan", "album": "Pat Garrett and Billy the Kid"],
    ["title" : "Vivir mi vida", "artist" : "Mark Anthony", "album": "3.0"],
    ["title" : "Shout!", "artist" : "The Isely Brothers", "album": "Shout!"]
            
]
/*:
 #### Question 8
 Create an array of numbers from `1` to `20`, and then create a loop which prints out whether a given number is a odd or even.
 */
var numberArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

for number in numberArray {
    if number % 2 == 0 {
        print("\(number) is even")
    } else {
        print("\(number) is odd")
    }
}
/*:
 #### Question 9
 Create a basic enumeration (`enum`) whose cases represent the different types of chess pieces.
 */
enum ChessPiece {
    //enumeration cases go here
    case king, queen, bishop, knight, rook
}
/*:
 #### Question 10
 Modify the enumeration you just wrote so that each enumeration case is given an implicitly defined `String` `rawValue`.
 */
enum rawChessPiece: String {
    //enumeration cases go here
    case king = "king"
    case queen = "queen"
    case bishop = "bishop"
    case knight = "knight"
    case rook = "rook"
}
/*:
 #### Question 11
 Create an array of chess pieces and use a `for-in` loop to print the type of each chess piece in the array. Note: String interpolation can be used to print enumeration cases.
 */
var chessPieces = [rawChessPiece.king, rawChessPiece.queen, rawChessPiece.bishop, rawChessPiece.knight, rawChessPiece.rook]

for piece in chessPieces {
    print(piece.rawValue)
}
