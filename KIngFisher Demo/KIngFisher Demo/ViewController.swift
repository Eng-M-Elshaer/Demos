//
//  ViewController.swift
//  KIngFisher Demo
//
//  Created by Mohamed Elshaer on 4/25/20.
//  Copyright © 2020 Mohamed Elshaer. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageViewTest: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://source.unsplash.com/random")
        imageViewTest.kf.setImage(with: url)
    }


}

