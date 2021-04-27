/*:
 #### Question 1
 Create a class called `Size` that has `height` and `width` properties. Give your `Size` class a designated initializer.
 */
class Size {
    var height: Float
    var width: Float
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    
}
/*:
 #### Question 2
 Create a class called `Point` that has `x` and `y` properties. Give your `Point` class a designated initializer.
 */
class Point {
    var x: Float
    var y: Float
    
    init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
    
}
/*:
 #### Question 3
 Create a class called `Rect` that has `origin` and `size` properties. Hint: Use your `Point` and `Size` classes. Add a designated initializer that accepts a starting `origin` and `size` as parameters. Then create a convenience initializer that accepts an `x` coordinate, a `y` coordinate, a `height`, and a `width`. Remember: A convenience initializer must call a designated initializer at some point.
 */
class Rect {
    var origin: Point
    var size: Size
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    convenience init(x: Float, y: Float, height: Float, weight: Float) {
        let origin = Point(x: x, y: y)
        let size = Size(height: height, width: weight)
        
        self.init(origin: origin, size: size)
    }
}
/*:
 #### Question 4
 Create a class called `View` that has `frame`, `superview`, and `subviews` properties. Hint: A view's frame is represented by a rectangle. Add a method named `addSubview` that accepts another `View` and appends it to its `subviews`. This method should also ensure that the subview's `superview` is set accordingly. Create a designated initializer that accepts an initial `frame` for the `View`.
 */
class View {
    var frame: Rect
    var superView: View?
    var subViews: [View]?
    
    func addSubView(subView: View) {
        subView.superView = self
        subViews?.append(subView)
        
    }
    
    init(frame: Rect) {
        self.frame = frame
    }
 
    
}
let superViewFrame = Rect(x: 5, y: 5, height: 50, weight: 50)
var parentView = View(frame: superViewFrame)

let subViewFrame = Rect(x: 10, y: 10, height: 10, weight: 10)
var childView = View(frame: subViewFrame)
var child2View = View(frame: subViewFrame)

let grandChildViewFrame = Rect(x: 10, y: 10, height: 5, weight: 5)
var grandChildView = View(frame: grandChildViewFrame)

child2View.addSubView(subView: grandChildView)
parentView.addSubView(subView: childView)
/*:
 #### Question 5
 Create a class called `Label` that subclasses `View` and has a `text` property. Create a designated initializer that accepts `Rect` and `String` parameters that set the `Label` instance's `frame` and `text` properties. Remember: A designated initializer must call a superclass designated initializer, if one exists.
 */
class Label: View {
    var text: String
    
    init(frame: Rect, text: String) {
        self.text = text
        super.init(frame: frame)
    }
}
/*:
 #### Question 6
 Create an instance of `Label` called `myLabel` that is 60pts wide and 20pts high, with an origin at (0, 0), and stores the text "Hello"
 */

var myLabel = Label(frame: Rect(x: 0, y: 0, height: 20, weight: 60), text: "Hello")
/*:
 #### Question 7
 Create a `View` called `containerView` that is 100pts wide and 40pts high, with an origin at (0, 0). Add `myLabel` as a subview of `containerView`.
 */
//let origin = Point(x: 0, y: 0)
//let size = Size(height: 40, width: 100)
//let contanerViewRect = Rect(origin: origin, size: size)
//var
//
////let rect = Rect(x: 0, y: 0, height: 40, weight: 100)
//var containerView = View(frame: rect)
//
//containerView.addSubView(subView: myLabel)





class Server {
    var registeredUsers: [String : String] = [:]  // Key will be username Value will be password
    var loggedInUser: String?
    var requirePasswordLength: Int = 8
    
    
    func createNewUser(userName: String?, password: String?) -> (Bool, String) {
        
        if let userName = userName, let password = password, !userName.isEmpty, !password.isEmpty {
            if registeredUsers[userName] == nil {
                if password.count >= requirePasswordLength {
                    registeredUsers[userName] = password
                    return (true, "User succesfully registered")
                } else {
                    return (false, "Password is to short")
                }
            } else {
                return (false, "Usernmae already registed")
            }
        }
        return (false, "Username or Password is not present")
    }
    
    func login(userName: String?, password: String?) -> (Bool, String) {
        if let userName = userName, let password = password, !userName.isEmpty, !password.isEmpty {
        
            if let storedPasswortd = registeredUsers[userName] {
                if storedPasswortd == password {
                    loggedInUser = userName
                    return(true, "user logged in successfully")
                } else {
                    return(false, "Password Incorrect")
                }
            } else {
                return (false, "User not present")
            }
        }
        return(false, "Username or Password is not present")
    }
}
