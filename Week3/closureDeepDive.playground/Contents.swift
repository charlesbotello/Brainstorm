import UIKit

// Closures

let names: [String] = ["Stephen", "Ricky", "Dan", "Mathu", "Robert"]

// Optmization #1
//{ (paramters) -> return type in
//    statemets
//}

//func sorted(names: [String], action: (String, String) -> Bool) -> [String]{
//
//    return [""]
//}

let nameSorted : [String] = sorted(names, { (s1: String, s2: String) -> Bool in
    return s1 < s2
})

// optimization #2
// Removing type definition for each parimeter

let nameSorted2 : [String] = sorted(names, { (s1, s2) -> Bool in
    return s1 < s2
})

// optimization #3
// Removing the return type and keyword

let nameSorted3: [String] = sorted(names, { (s1, s2) in
    s1 < s2
})

// Optimization #4
// Using shorthand arguments

let nameSorted4: [String] = sorted(names, { $0 < $1 })

// Optimization #5
// Using shorthand arguments, remove arguments

let nameSorted5: [String] = sorted(names, < )
