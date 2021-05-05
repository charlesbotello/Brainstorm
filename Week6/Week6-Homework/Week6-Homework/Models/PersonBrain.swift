//
//  PersonBrain.swift
//  Week6-Homework
//
//  Created by Charlie Botello on 5/4/21.
//

import UIKit

class PersonBrain {
    var person: Person?
    
    func createPerson(name: String, details: String, imageName: String) {
        self.person = Person(name: name, details: details, imageName:   imageName)
        
    }
    
    func getDetails() -> String {
        if let validUserDetails = person?.details {
            return validUserDetails
        }
        return "Person Name not found"
    }
    
    func getName() -> String {
        if let validUserName = person?.name {
            return validUserName
        }
        return "Name Not Found"
    }
    func getImage() -> UIImage {
        if let validImage = person?.imageName {
            let imageUI = UIImage(named: validImage)
            return imageUI!
        } else {
            return UIImage(named: "No-Image")!
        }
    }
    
    func setName(name: String) {
        person?.name = name
    }
    
    func setDetails(details: String) {
        person?.details = details
    }
    
    
    func circleImage(imageView: UIImageView) {
        let radius = imageView.frame.width / 2
        imageView.layer.cornerRadius = radius
        imageView.layer.masksToBounds = true
    }
}
