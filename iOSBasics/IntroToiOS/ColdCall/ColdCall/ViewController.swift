//
//  ViewController.swift
//  ColdCall
//
//  Created by Emily Sershon on 3/14/19.
//  Copyright © 2019 Emily Sershon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    let nameArray = ["Emily", "Amy", "Julie", "Peter", "Jean-Luc", "Wesley", "Melissa", "Tia", "Stephen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
    }

    @IBAction func coldCall(_ sender: UIButton) {
        updateUI()
        
    }
    func updateUI(){
        nameLabel.text = nameArray[Int.random(in:0..<nameArray.count)]
    }
    
}

