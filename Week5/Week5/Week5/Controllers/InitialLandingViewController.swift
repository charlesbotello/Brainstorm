//
//  ViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/26/21.
//

import UIKit

protocol DetailViewProtocol {
    func updateName(name: String)
}

class InitialLandingViewController: UIViewController {
    var personOne = PersonBrain()
    var personTwo = PersonBrain()

    var currentPerson: PersonBrain?
    
    @IBOutlet weak var personOneImageView: UIImageView!
    
    @IBOutlet weak var personOneDetailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personOne.createPerson(name: "Michael Corleone", details: "Misunderstood bussiness man,has an idiot for a brother", imageName: "Michael-Corleone")
        
        personOne.circleImage(imageView: personOneImageView)
        personOneImageView.image = personOne.getImageUI()

        personOneDetailsLabel.text = personOne.getDetails()
        navigationItem.title = personOne.getName()
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let showController = segue.destination as? ShowDetailsViewController {
            showController.person = self.currentPerson
        }

    }
    
    @IBAction func personOneButtonPressed(_ sender: UIButton) {
//        let showController = ShowDetailsViewController()
//        showController.personOneImage = self.personOne.getImage()
        self.currentPerson = personOne
        performSegue(withIdentifier: "PersonToShow", sender: self)
        
        
    }
    

}

