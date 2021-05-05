//
//  ViewController.swift
//  Week6-Homework
//
//  Created by Charlie Botello on 5/4/21.
//

import UIKit

class LandingViewController: UIViewController {
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


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailViewController {
            detailVC.person = self.person
        }
    }
    
    @IBAction func learnMoreButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LandingToDetails", sender: self)
    }
}

