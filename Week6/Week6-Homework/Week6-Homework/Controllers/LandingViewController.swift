//
//  ViewController.swift
//  Week6-Homework
//
//  Created by Charlie Botello on 5/4/21.
//

import UIKit

class LandingViewController: UIViewController, DetailViewProtocol {
    
    
    var person = PersonBrain()
    @IBOutlet weak var personImageView: UIImageView!
    
    @IBOutlet weak var personDetailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person.createPerson(name: "Gaius Julius Caesar", details: "Gaius Julius Caesar was a leader of ancient Rome who significantly transformed what became known as the Roman Empire by greatly expanding its geographic reach and establishing its imperial system.", imageName: "Julius-Caesar")
        personDetailsLabel.text = person.getDetails()
        personImageView.image = person.getImage()
        person.circleImage(imageView: personImageView)
        self.title = person.getName()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        print(person.getName())
        navigationItem.title = person.getName()
        personDetailsLabel.text = person.getDetails()
    }
    
    func updateName(name: String) {
        person.setName(name: name)
    }
    
    func updateDetails(details: String) {
        person.setDetails(details: details)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailViewController {
            detailVC.person = self.person
            detailVC.delegate = self 
        }
    }
    
    @IBAction func learnMoreButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LandingToDetails", sender: self)
    }
}

