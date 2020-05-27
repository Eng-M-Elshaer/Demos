//
//  ViewController.swift
//  SlideShowDemo
//
//  Created by Mohamed Elshaer on 12/22/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import ImageSlideshow

class ViewController: UIViewController {

    @IBOutlet weak var mySlide: ImageSlideshow!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySlide.setImageInputs([
            ImageSource(image: UIImage(named: "1")!),
            ImageSource(image: UIImage(named: "2")!),
            ImageSource(image: UIImage(named: "3")!)
            ])}


}

