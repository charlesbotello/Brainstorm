//
//  ShowDetailsViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/27/21.
//

import UIKit

class ShowDetailsViewController: UIViewController {

    var personOne: PersonBrain?
    
//    var personOneImage: String?
//    var personOneDetails: String?
    
    @IBOutlet weak var personOneImageView: UIImageView!
    
    @IBOutlet weak var personOneDetailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personOne?.loadImage(path: personOne!.getImage(), imageView: personOneImageView)
        personOneDetailTextView.text = personOne?.getDetails()
    }

}
