import UIKit

var str = "Hello, playground"


protocol Movable {
    var speed: Float { get }
    func changeSpeed(amount: Float)
}


