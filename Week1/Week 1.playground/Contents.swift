
//: # Exercises
/*:
 #### Question 1
 Create a variable called `myName` with your name as a `String` as its value. Create a constant called `modernProgrammingLanguage` that has a `String` of your choice as its value, but this time include a type annotation.
 */
var myName:String = "Charlie"
let modernProgrammingLanguage:String = "Swift"
/*:
 #### Question 2
 Create 5 variables, each containing a different value type. (i.e. the first one contains a `String`, the second a `Bool`, the third an `Int`, and so on). You can name them whatever you like.
 */
var myString: String = "This is a String"
var myBool: Bool = true
var myInt: Int = 1
var myFloat: Float = 2.50 // 32
var myDouble: Double = 2.141414141414  // 64
var myCharacter: Character = "C"
/*:
 #### Question 3
 Create a variable called `oneHundred` that contains the computed value `100` by using the addition (`+`) and multiplication (`*`) operators. i.e. the variable should be equal to `100` without writing "`var oneHundred = 100`".
 */
var oneHundred: Int = 10 * 9 + 10
var oneHundredOtherWay: Int = (10 + 10) * 5
/*:
 #### Question 4
 Using your knowledge of operators, what is the remainder of dividing `1456` by `134`.
 */
var remainder: Int = 1456 % 134
/*: 
 #### Question 5
 Create 2 variables with `String` values. Then concatenate these two variables to produce a third, new variable.
 */
var firstName: String = "Charlie"
var lastName: String = "Botello"
var fullName: String = firstName + " " +  lastName
/*: 
 #### Question 6 
 Create a constant that contains the value of comparing whether `10` is greater than `7`.
 */
let checkTenGreaterThanSeven: Bool = 10 > 7
/*: 
 #### Question 7 
 Create a constant that contains the value of comparing whether `10` is equal to `10`.
 */
let checkTenEqualTen: Bool = 10 == 10
/*: 
 #### Question 8
 Create two constants, one containing `1000` and the other containing `1000.0` and then create a third constant containing the value of comparing the first two. What error do you get? Why are you receiving this error?
 */
let wholeNumber = 1000
let decimalNumber = 1000.0
//let compareWholeAndDecimal = wholeNumber == decimalNumber

// Error - Cannot convert value of type 'Double' to expected argument type 'Int'
// data types are different and cannot be comapared to each other.

/*: 
 #### Question 9 
 Create two variables, one that uses a comparison operator to evaluate to `false`, the other using a comparison operator to evaluate to `true`.
 */
let evaluateFalse = 10 == 9
let evaluateTrue = 10 == 10
/*: 
 #### Question 10 
 Using the two variables we created in the previous question, create a third variable that contains the value of using the logical AND (`&&`) operator. Create a fourth value that uses the logical OR (`||`) operator.
 */
let compareAndOperator = evaluateFalse && evaluateTrue
let compareOrOperator = evaluateFalse || evaluateTrue
/*: 
 #### Question 11 
 Explain why you received those answers.
 */
// && operator both statements must be true for it to be true
// || Either statement, if either or both true, it will return true
// first statement will always be checked if true, continues to second statement
/*: 
 ##### Question 12 
 Create a variable that contains an integer and type annotate it. On the next line, update the variable to contain a string. What error do you get? Why are you receiving this error?
 */
var intVariable: Int
//intVariable = "Not a String"

// Error - Cannot assign value of type 'String' to type 'Int'
// Data types must be the same to assign values.
/*:
 #### Question 13
 Create an array that holds the numbers 1 through 9, and then append 10 to the end.
 */
var myArray: [Int] = [1,2,3,4,5,6,7,8,9]
//var myArray = [1,2,3,4,5,6,7,8,9]
// takes two arguments, number to input and position in array as second argument
myArray.insert(10, at: 9)
myArray.append(11)
print(myArray)

for index in myArray {
    print(index)
}
/*: 
 #### Question 14 
 Create a dictionary that holds `String` keys and `Int` values. Add any key-value pair to this dictionary and use `print()` to display it.
 */
var myDictionary: [String: Int] = ["Hello": 1]
myDictionary["Goodbye8"] = 2
var a = ""
for (key, value) in myDictionary {
    print("\(key) -- \(value)")
    
}

for index in myDictionary {
    print("\(index.key) -- \(index.value)")
}


