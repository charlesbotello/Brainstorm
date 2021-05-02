import UIKit

protocol Movable {
    var speed: Float { get }
    func changeSpeed(amount: Float)
}

protocol Valueable {
    var price: String { get }
}

class Car: Movable, Valueable {
    
    var speed: Float = 0
    var topSpeed: Float = 150
    var price: String = "$5,000"
    func changeSpeed(amount: Float) {
        
        var newSpeed = speed + amount
        
        if newSpeed > topSpeed  {
            newSpeed = topSpeed
        } else if newSpeed < 0 {
            newSpeed = 0
        }
        speed = newSpeed
    }
}

var car: Car = Car()
print(car.speed)
car.changeSpeed(amount: 50)
print(car.speed)
car.changeSpeed(amount: 200)
print(car.speed)

