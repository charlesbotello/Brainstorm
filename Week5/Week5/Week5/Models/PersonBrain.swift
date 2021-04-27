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
    
    
    func getImageUI() -> UIImage{
        let imageName = getImage()
        let image = UIImage(named: imageName)
//        imageView.image = image
        return image!
        
    }
    
    func getDetails() -> String {
        guard let details = person?.details else { return "details not found" }
        return "Details About You \n\(details)"
    }
    
    func circleImage(imageView: UIImageView) {
        let image = imageView
//        image.layer.cornerRadius = 25
        let radius = image.frame.width / 2
          image.layer.cornerRadius = radius
          image.layer.masksToBounds = true
    }
    
    
    
//    var body: some View {
//        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.white)
//            .frame(height: 50)
//            .overlay(HStack {
//                Image(systemName: imageName)
//                    .foregroundColor(.green)
//                Text(text)
//                //This line below is required if you want the app to display correctly in dark mode.
//                    //In dark mode all Text is automatically rendered as white.
//                    //So we've created a custom color in the assets folder called Infor Color and used it here.
//                .foregroundColor(Color("Info Color"))
//            })
//            .padding(.all)
//    }
    
    private func getImage() -> String {
        guard let validImage = person?.imageName else { return "Image not found" }
        return validImage
    }
    
    
}
