//
//  DetailViewController.swift
//  Week6-Homework
//
//  Created by Charlie Botello on 5/4/21.
//

import UIKit

protocol DetailViewProtocol {
    func updateName(name: String)
    func updateDetails(details: String)
}

class DetailViewController: UIViewController, UITextFieldDelegate {
    var person: PersonBrain?
    var delegate: DetailViewProtocol?
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var personNameTextField: UITextField!
    
    @IBOutlet weak var personDetailTextField: UITextField!
    
    
    @IBOutlet weak var personDetailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personNameTextField.delegate = self
        
        userImageView.image = person?.getImage()
        personDetailTextView.text = person?.getDetails()
        personNameTextField.text = person?.getName()
        
        // Do any additional setup after loading the view.
    }
    

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Started editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Ended Editing")
        if let delegate = self.delegate, let updateName = personNameTextField.text, let updateDetails = personDetailTextField.text {
            delegate.updateName(name: updateName)
            delegate.updateDetails(details: updateDetails)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true 
    }
    
    
}
