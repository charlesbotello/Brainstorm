//
//  ShowDetailsViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/27/21.
//

import UIKit

protocol DetailViewProtocol {
    func updateName(name: String)
}


class ShowDetailsViewController: UIViewController, UITextFieldDelegate {


    var person: PersonBrain?
    var delegate: DetailViewProtocol?
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var personDetailTextView: UITextView!
    @IBOutlet weak var personNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = self.person {
            self.personImageView.image = person.getImageUI()
            self.personNameTextField.text = person.getName()
            self.personDetailTextView.text = person.getDetails()
        }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Started Editing")
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Ended editing")
        
        if let delegate = self.delegate, let updatedName = personNameTextField.text {
            delegate.updateName(name: updatedName)
            
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
