//
//  FirstViewController.swift
//  Week 5 Homework (Solutions)
//
//  Created by Keith Domenicucci on 2017-10-12.
//  Copyright © 2017 Brainstation. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, DetailViewProtocol {

    // MARK: - Properties
    
    @IBOutlet var imageView: UIImageView!
    
    let person = Person(name: "Elon Musk",
                        details: "Elon Reeve Musk is a South African-born Canadian American business magnate, investor, engineer, and inventor.",
                        imageName: "elon-musk")
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = person.name
        
        self.imageView.clipsToBounds = true // this ensures that the image view doesn't draw outside its bounds
        self.imageView.layer.cornerRadius = self.imageView.frame.size.height / 2.0; // this makes the imageView appear circular
        self.imageView.image = UIImage(named: self.person.imageName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = person.name
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailViewController {
            detailVC.person = self.person
            detailVC.delegate = self
        }
    }
    
    func updateName(name: String) {
        self.person.name = name
    }
}
