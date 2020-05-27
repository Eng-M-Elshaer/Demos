//
//  ViewController.swift
//  SDWebImage Demo
//
//  Created by Mohamed Elshaer on 4/25/20.
//  Copyright © 2020 Mohamed Elshaer. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var imageViewTest: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageViewTest.sd_setImage(with: URL(string: "https://source.unsplash.com/random"), placeholderImage: UIImage(named: "placeholder.jpg"))
    }


}

