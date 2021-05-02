//
//  ViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/26/21.
//

import UIKit



class InitialLandingViewController: UIViewController, DetailViewProtocol {
    
    
    
    var personOne = PersonBrain()
    var personTwo = PersonBrain()

    var currentPerson: PersonBrain?
//    var delegate: DetailViewProtocol?
    
    @IBOutlet weak var personOneImageView: UIImageView!
    
    @IBOutlet weak var personOneDetailsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = personOne.getName()
        
        personOne.createPerson(name: "Julius Caesar", details: "Gaius Julius Caesar was a leader of ancient Rome who significantly transformed what became known as the Roman Empire by greatly expanding its geographic reach and establishing its imperial system. ", imageName: "Julius-Caesar")
        
        personOne.circleImage(imageView: personOneImageView)
        personOneImageView.image = personOne.getImageUI()

        personOneDetailsLabel.text = personOne.getDetails()
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = personOne.getName()
      
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let showDetailsVC = segue.destination as? ShowDetailsViewController {
            showDetailsVC.person = self.currentPerson
            showDetailsVC.delegate = self
        }

    }
    
    @IBAction func personOneButtonPressed(_ sender: UIButton) {
//        let showController = ShowDetailsViewController()
//        showController.personOneImage = self.personOne.getImage()
        self.currentPerson = personOne
        performSegue(withIdentifier: "PersonToShow", sender: self)
        
        
    }
    
    func updateName(name: String) {
        print(personOne.setName(name: name))
        print(personOne.getName())
    }
    
}

