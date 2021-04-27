//
//  ViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/26/21.
//

import UIKit

class InitialLandingViewController: UIViewController {
    var personOne = PersonBrain()
    var personTwo = PersonBrain()

    var currentPerson: PersonBrain?
    
    @IBOutlet weak var personOneImageView: UIImageView!
    
    @IBOutlet weak var personTwoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personOne.createPerson(name: "John Wick", details: "Part time Husband, Part time assassin with anger issues", imageName: "John-Wick")
        personOne.loadImage(path: personOne.getImage(), imageView: personOneImageView)
        
        personTwo.createPerson(name: "Michael Corleone", details: "Misunderstood bussiness man,has an idiot for a brother", imageName: "Michael-Corleone")
        personTwo.loadImage(path: personTwo.getImage(), imageView: personTwoImageView)

        navigationItem.title = personOne.getName() + " and " + personTwo.getName()
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let showController = segue.destination as? ShowDetailsViewController {
            showController.personOne = self.currentPerson
        }

    }
    
    
    
    @IBAction func personOneButtonPressed(_ sender: UIButton) {
//        let showController = ShowDetailsViewController()
//        showController.personOneImage = self.personOne.getImage()
        self.currentPerson = personOne
        performSegue(withIdentifier: "PersonToShow", sender: self)
        
        
    }
    
    @IBAction func personTwoButtonPressed(_ sender: UIButton) {
        self.currentPerson = personTwo
        performSegue(withIdentifier: "PersonToShow", sender: self)
        
    }
    
    
}

