//
//  DetailViewController.swift
//  Week 5 Homework (Solutions)
//
//  Created by Keith Domenicucci on 2017-10-12.
//  Copyright © 2017 Brainstation. All rights reserved.
//

import UIKit

protocol DetailViewProtocol {
    func updateName(name: String)
}

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var detailsLabel: UILabel!
    
    var person: Person?
    
    var delegate: DetailViewProtocol?
    
    // MARK: Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        // Do any additional setup after loading the view.
        if let person = person {
            //self.imageView.clipsToBounds = true // this ensures that the image view doesn't draw outside its bounds
            self.imageView.image = UIImage(named: person.imageName)
            self.nameTextField.text = person.name
            self.detailsLabel.text = person.details
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Started Editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Ended editing")
        if let delegate = self.delegate, let updatedName = textField.text {
            delegate.updateName(name: updatedName)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
