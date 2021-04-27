//
//  PersonBrain.swift
//  Week5
//
//  Created by Charlie Botello on 4/27/21.
//

import UIKit

class PersonBrain {
    var person: Person?
    
    
    func createPerson(name: String, details: String, imageName: String) {

        self.person = Person(name: name, details: details, imageName: imageName)
        
    }
    
    func getName() -> String {
        guard let validName = person?.name else{ return "Name not found" }
        return validName
    }
    
    func getImage() -> String {
        guard let validImage = person?.imageName else { return "Image not found" }
        return validImage
    }
    
    func loadImage(path: String, imageView: UIImageView!){
        let imageName = path
        let image = UIImage(named: imageName)
        imageView.image = image
    }
    
    func getDetails() -> String {
        guard let details = person?.details else { return "details not found" }
        return "Details About You \n\(details)"
    }
}
