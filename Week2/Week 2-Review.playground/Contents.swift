//: # Week 2 Exercises

/*: 
 #### Question 1
 Imagine you are creating a database that can hold usernames, passwords, addresses, and phone numbers. The username and password fields are required while the address and phone number fields may be blank. What types in Swift would you use to represent these fields? Why?
 */
// username and passwords values can't be nil, must assign value non-optional
// Address and phone number since the values can be nil


/*:
 #### Question 2
 Create the variables described in Exercise 1 and use type annotation to explicitly define their types.
 */
// username and passwords values can't be nil, must assign value non-optional
var username: String = "jwick"
var password: String = "pass123"

// Address and phone number since the values can be nil
var address: String?
var phoneNumber: String?
/*:
 #### Question 3
 Given the following `String?` (optional string) variable, use an `if let` statement along with string interpolation to print a greeting when a value is present.
 */
//var name: String? = "John"

var name: String? = "John"

if let namePresent = name {
    print("Hello not nil - \(namePresent) is here")
}


/*:
 #### Question 4
 Write an `else` condition on your `if let` statement from Exercise 3 which prints "No one's here" when the variable `name` has no value. Experiment between giving `name` a `String` value and a `nil` value.
*/
name = nil
if let namePresent = name {
    print("Hello not nil - \(namePresent) is here")
} else {
    print("No one's here")
}
/*:
 #### Question 5
 Using arithmetic operators, create a function (`func`) to change any given temperature from Fahrenheit to Celsius.
 */
//function template:
func convertTemperatureToCelsius(fahrenheitTemp: Double) -> Double {
    //add correct code here
    // (F − 32) × 5/9 = 0°C
    let celciusTemp = (fahrenheitTemp - 32) * (5/9)
    return celciusTemp
}

/*:
 #### Question 6
 Use the function you just wrote, along with string interpolation, to print a temperature conversion in a human-readable form, e.g. print "32.0F is equal to 0.0C".
 */
//print("32.0F is equal to \(convertTemperatureToCelsius(fahrenheitTemp: 32.0))C")
/*:
 #### Question 7
 Create an array of 3 songs where each song is represented by a dictionary. The dictionary should contain the following keys: `"title"`, `"artist"` and `"album"`.
 */
var songs = [
    ["title" : "Knockin’ on Heaven’s Door", "artist" : "Bob Dylan", "album" : "Pat Garrett and Billy the Kid"],
    ["title" : "Vivir mi Vida", "artist" : "Mark Anthony", "album" : "3.0"],
    ["title" : "Shout!", "artist" : "The Isely Brothers", "album" : "Shout!"]
]

for index in songs {
    print(index)
}

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
// extends protocol CaseIterable contains all of the cases in enum, required for iteration
enum ChessPiece: CaseIterable {
    case king, queen, rook, knight, bishop, pawn
}

for piece in ChessPiece.allCases {
    print(piece)
}
/*:
 #### Question 10
 Modify the enumeration you just wrote so that each enumeration case is given an implicitly defined `String` `rawValue`.
 */
// rawValue value must be defined in this case rawvalue's data type is string
enum ChessPieceRaw: String {
    case king = "♔"
    case queen = "♕"
    case rook = "♖"
    case knight = "♘"
    case bishop = "♗"
    case pawn = "♙"
}
//for piece in ChessPieceRaw {
//    print(piece)
//}
/*:
 #### Question 11
 Create an array of chess pieces and use a `for-in` loop to print the type of each chess piece in the array. Note: String interpolation can be used to print enumeration cases.
 */
let chessPieces: [ChessPieceRaw] = [.king, .queen, .rook, .knight, .bishop, .pawn]
//var chessArray = ["♔", "♕", "♖", "♘", "♗", "♙"]
//for piece in chessPieces {
//    print(piece)
//}

chessPieces.forEach { (piece) in
    print(piece.rawValue)
}
