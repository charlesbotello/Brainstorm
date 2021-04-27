//
//  ViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/26/21.
//

import UIKit

class InitialLandingViewController: UIViewController {
    var personOne = PersonBrain()
//    var personTwo = PersonBrain()
//    var personOne = Person(name: "John Wick", details: "Part time Husband, Part time assassin with anger issues", imageName: "John-Wick")
//    var personTwo = Person(name: "Michael Corleone", details: "Misunderstood bussiness man,has an idiot for a brother", imageName: "Michael-Corleone")
    
    @IBOutlet weak var personOneImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personOne.createPerson(name: "John Wick", details: "Part time Husband, Part time assassin with anger issues", imageName: "John-Wick")
        personOne.loadImage(path: personOne.getImage(), imageView: personOneImageView)
        navigationItem.title = personOne.getName()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let showController = segue.destination as? ShowDetailsViewController {
            showController.personOne = self.personOne
        }

    }
    
    
    
    @IBAction func personOneButtonPressed(_ sender: UIButton) {
//        let showController = ShowDetailsViewController()
//        showController.personOneImage = self.personOne.getImage()
        performSegue(withIdentifier: "PersonOneToShow", sender: self)
        
    }
    
}

