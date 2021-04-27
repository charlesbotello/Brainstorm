
//: # Exercises
/*:
 #### Question 1
 Create a variable called `myName` with your name as a `String` as its value. Create a constant called `modernProgrammingLanguage` that has a `String` of your choice as its value, but this time include a type annotation.
 */
var myName: String = "Charlie"
let modernProgrammingLanguage: String = "Swift"

print("My name is \(myName), learning \(modernProgrammingLanguage) language")
/*:
 #### Question 2
 Create 5 variables, each containing a different value type. (i.e. the first one contains a `String`, the second a `Bool`, the third an `Int`, and so on). You can name them whatever you like.
 */
var intro: String = "Hello Class"
var isPayingAttention: Bool = false
var happinessLevel: Int = 1
var bankFunds: Float = -5.15
var firstLetterName: Character = "C"

print("\(intro), the first letter of my name is \(firstLetterName), am I paying attention '\(isPayingAttention)', current level happiness is \(happinessLevel), because my bank account is at $\(bankFunds)")
/*:
 #### Question 3
 Create a variable called `oneHundred` that contains the computed value `100` by using the addition (`+`) and multiplication (`*`) operators. i.e. the variable should be equal to `100` without writing "`var oneHundred = 100`".
 */
var totalHundred: Int = 10 * 9 + 10
var totalHundredOtherWay: Int = (10 + 10) * 5
print("10 * 9 + 10 = \(totalHundred) and (10 + 10) * 5 = \(totalHundredOtherWay)")
/*:
 #### Question 4
 Using your knowledge of operators, what is the remainder of dividing `1456` by `134`.
 */
var totalRemainder: Int = 1456 % 134
print("Ramainder of dividing 1456 by 134 = \(totalRemainder)")
/*: 
 #### Question 5
 Create 2 variables with `String` values. Then concatenate these two variables to produce a third, new variable.
 */
var firstName: String = "Charlie"
var lastName: String = "Botello"
var fullName: String = firstName + " " + lastName
print("My full name combining two variables is \(fullName)")


/*: 
 #### Question 7 
 Create a constant that contains the value of comparing whether `10` is equal to `10`.
 */
var amount: Int = 10
var isAmointTen: Bool = amount == 10
print("Is the value of variable amount 10? -- \(isAmointTen)")
/*: 
 #### Question 8
 Create two constants, one containing `1000` and the other containing `1000.0` and then create a third constant containing the value of comparing the first two. What error do you get? Why are you receiving this error?
 */
var thousandWhole = 1000
var thousandWithDecimal = 1000.0

//var isAmountsTheSame = thousandWhole == thousandWithDecimal

// Receiving error "Cannot convert value of type 'Double' to expected argument type 'Int'"
// Reason for receiving this error is because it needs to compare values of same data type
/*: 
 #### Question 9 
 Create two variables, one that uses a comparison operator to evaluate to `false`, the other using a comparison operator to evaluate to `true`.
 */
var isTrue: Bool = "a" == "a"
var isFalse: Bool = "a" != "a"

/*: 
 #### Question 10 
 Using the two variables we created in the previous question, create a third variable that contains the value of using the logical AND (`&&`) operator. Create a fourth value that uses the logical OR (`||`) operator.
 */
var multipleChecksAndOperator = isTrue || isFalse
var multiplechecksOrOperator = isTrue && isFalse
/*: 
 #### Question 11 
 Explain why you received those answers.
 */
// && both statements have to be triggered to be true
// || gets triggered if either value is true, statement is true
/*: 
 ##### Question 12 
 Create a variable that contains an integer and type annotate it. On the next line, update the variable to contain a string. What error do you get? Why are you receiving this error?
 */
var integerNumber: Int = 5
//integerNumber = "Hello"

// Eror - Cannot assign value of type 'String' to type 'Int'
// Reason is that variable was declared an Int, can't use String as data type

/*:
 #### Question 13
 Create an array that holds the numbers 1 through 9, and then append 10 to the end.
 */
var array: [Int] = [1,2,3,4,5,6,7,8,9]
array.append(10)
array.insert(10, at: array.count - 1)
print("Array with numbers 1-10...\(array)")
/*: 
 #### Question 14 
 Create a dictionary that holds `String` keys and `Int` values. Add any key-value pair to this dictionary and use `print()` to display it.
 */
var dictionary = ["First Value": 1, "Sencond Key": 2]
print("dictionary key - \(dictionary.keys) and value \(dictionary.values)")

for index in dictionary {
    print(index.key)
    print(index.value)
}

