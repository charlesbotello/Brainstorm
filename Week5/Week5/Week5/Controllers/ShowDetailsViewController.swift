//
//  ShowDetailsViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/27/21.
//

import UIKit

class ShowDetailsViewController: UIViewController {

    var person: PersonBrain?
    
//    var personOneImage: String?
//    var personOneDetails: String?
    
    @IBOutlet weak var personImageView: UIImageView!
    
    @IBOutlet weak var personDetailTextView: UITextView!
    @IBOutlet weak var personNameTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        personOne?.loadImage(path: personOne!.getImage(), imageView: personOneImageView)
        personImageView.image = person?.getImageUI()
        
        personNameTextLabel.text = person?.getName()
        
        personDetailTextView.text = person?.getDetails()
        
        
    }

}
