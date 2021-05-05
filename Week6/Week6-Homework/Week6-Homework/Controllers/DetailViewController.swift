//
//  DetailViewController.swift
//  Week6-Homework
//
//  Created by Charlie Botello on 5/4/21.
//

import UIKit

class DetailViewController: UIViewController {
    var person: PersonBrain?

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var personNameTextField: UITextField!
    
    @IBOutlet weak var personDetailTextField: UITextField!
    
    
    @IBOutlet weak var personDetailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userImageView.image = person?.getImage()
        personDetailTextView.text = person?.getDetails()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
