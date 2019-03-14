//
//  ViewController.swift
//  ColdCallv2
//
//  Created by Emily Sershon on 3/14/19.
//  Copyright © 2019 Emily Sershon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    let nameArray = ["Emily", "Amy", "Julie", "Peter", "Jean-Luc", "Wesley", "Melissa", "Tia", "Stephen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func coldCall(_ sender: UIButton) {
        nameLabel.text = nameArray[Int.random(in:0..<nameArray.count)]
        numLabel.text = String(Int.random(in:1...5))
        if (numLabel.text == "1" || numLabel.text == "2") {
            numLabel.textColor = UIColor.red
        }
        else if numLabel.text == "3" || numLabel.text == "4" {
            numLabel.textColor = UIColor.orange
        }
        else {
            numLabel.textColor = UIColor.green
        }
    }
    
}

