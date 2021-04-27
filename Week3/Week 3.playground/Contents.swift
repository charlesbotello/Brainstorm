
/*:
 #### Question 1
 Create a `class` called `Rectangle` that has an optional double (`Double?`) property called `length` and another optional double (`Double?`) property called `width`. Create an instance of this class and assign values to its `length` and `width` properties.
 */
import Foundation
import UIKit

class Rectangle {
    var length: Double?
    var width: Double?
    
}

var rectangle = Rectangle()
rectangle.length = 2.0
rectangle.width = 2.0

/*:
 #### Question 2
 Try modifying your `Rectangle` class so its `length` property is a non-optional double (`Double`). What error do you get? Why does this happen?
 */
//  Class 'Rectangle' has no initializers.  Stored property 'length' without initial value prevents synthesized initializers
// Optionals allow nil values, so if no value is assigned it can't create an instance of that class unless value is present
/*:
 #### Question 3
 Create a copy of your `Rectangle` class and call it `Rectangle2`. Add a method (`func`) to your `Rectangle2` class that returns the rectangle's area if it's `length` and `width` properties are both set. The method should return `nil` otherwise. Create an instance of this class and use this new method to print the area of the `Rectangle2` instance. Hint: The area of a rectangle is its length multiplied by its width.
 */
class Rectangle2 {
    var length: Double?
    var width: Double?
    
    func getArea() -> Double? {
        
        guard let length = length, let width = width else { return nil }
        
//        if let length = length, let width = width {
//        return length * width
//        }  else {
//        return nil
//        }
        
        return length * width
        
    }
}
var rectangle2 = Rectangle2()

if let area = rectangle2.getArea() {
    print(area)
} else {
    print("Nil value was found")
}

if let results = rectangle2.getArea() {
    print("area of rectangle is \(results)")
} else {
    print("either length or width contain NIL value")
}

    
    
/*:
 #### Question 4
 Create a `class` called `Creature` that has a string (`String`) property called `name` and an integer (`Int`) property called `age`. Create an instance of this class with your initializer. Then, print the values of your instance's properties.
 */
class Creature {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var creature = Creature(name: "The Mummy", age: 4000)
print(creature.name)
print(creature.age)
/*: 
 #### Question 5
 Create a `class` called `Cheetah` that is a subclass of `Creature`. Give it an integer (`Int`) property to represent the number of spots it has and assign it a default value of `0`. Create a `Cheetah` instance using the initializer inherited from its superclass (`Creature`). Then, give your `Cheetah` instance any non-zero number of spots.
 */
class Cheetah : Creature {
    var spots: Int = 0
    
}

var cheetah = Cheetah(name: "Chester", age: 50)
cheetah.spots = 50
print(cheetah.spots)

/*: 
 #### Question 6
 Create a `class` called `Person` that is a subclass of `Creature`. Give it a `String?` property called `occupation`. Create an initializer for the Person class that assigns values to all of the instance's properties (including inherited properties). Create an instance of this class with your new initializer. Hint: Your initializer will need to call the superclass' initializer at some point.
 */
class Person : Creature {
    var occupation: String?
    
    init(name: String, age: Int, occupation: String) {
        super.init(name: name, age: age)
        self.occupation = occupation
        
    }
    
}

var person = Person(name: "Dracula", age: 275, occupation: "Count")

/*:
[Closures]:
https://blp.brainstation.io/student-content/xdLT2
#### Question 7
 Construct a `ContactList` class that manages a list of people. Add a method for adding people to the list. Also add a method for printing the names of people in the list. Hint: Which collection type behaves like a list?
 
 For a more advanced problem, add a method for removing a person from the list. Hint: You'll need to use `Array`'s `index(where:)` method to find the person and then remove(at:) to actually perform the removal. You will also need to understand [Closures] to use `Array`'s `index(where:)` method. Hint: Use the person's `name` to evaluate equality in the closure.
*/
class ContactList {
//    var list: [String]?
    var list: [Person] = []
    
    init(list: [Person]) {
        self.list = list
    }

//    convenience init() {
//        self.init(list: list.append(Person))
//    }

    func addMember(name: Person) {
        
        if list == nil {
            list = [name]
        } else {
            list.append(name)

        }
    }
    
    
}

var contactList = ContactList()
//print(contactList.list)
contactList.addMember(name: "John Constantine")
contactList.addMember(name: "John Wick")
print(contactList.list!)


// Challenge
class ContactList2 {
    var list: [String]?
    
    init(list: [String]) {
        self.list = list
    }

    convenience init() {
        self.init(list: ["Myspace Tom"])
    }

    func addMember(name: String) {
        
        if list == nil {
            list = [name]
        } else {
            list?.append(name)

        }
    }
    
    func removeMember(name: String) {
        if var safeList = self.list {
            for (index, _) in safeList.enumerated() {
                if safeList.contains(name) {
                    safeList.remove(at: index + 1)
                    print("\(name) has been removed from the list")
                    break
                    
                }

            }
            self.list = safeList
        }
    }
}

var contactList2 = ContactList2()
contactList2.addMember(name: "John Wick")
print(contactList2.list!)
contactList2.removeMember(name: "John Wick")
print(contactList2.list!)

/*:
 #### Question 8
 Create an instance of your `ContactList` class. Add at least three people to the list using the method you defined. If you also added a method to remove people, try that out as well.
 */
contactList2.addMember(name: "John Wick")
contactList2.addMember(name: "John McClane")
contactList2.addMember(name: "John Rambo")
print(contactList2.list!)
