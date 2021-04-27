//
//  ViewController.swift
//  Week5
//
//  Created by Charlie Botello on 4/26/21.
//

import UIKit

class InitialLandingViewController: UIViewController {

    var personOne = Person(name: "John Wick", details: "Part time Husband, Part time assassin with anger issues", imageName: "John-Wick")
    var personTwo = Person(name: "Michael Corleone", details: "Misunderstood bussiness man,has an idiot for a brother", imageName: "Michael-Corleone")
    
    @IBOutlet weak var personImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadImage(path: personOne.imageName, imageView: personImageView)
    }


    func loadImage(path: String, imageView: UIImageView!){
        let imageName = path
        let image = UIImage(named: imageName)
        imageView.image = image
    }
}

