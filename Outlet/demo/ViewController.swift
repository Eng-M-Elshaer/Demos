//
//  ViewController.swift
//  demo
//
//  Created by Mohamed Elshaer on 9/22/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var skillLabel: UILabel!
    
    var name = "Ali"
    var age = "30"
    var skill = "swim"
    var number  = 60 + 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        ageLabel.text = age
        skillLabel.text = skill
        print(number)
        
    }


}

