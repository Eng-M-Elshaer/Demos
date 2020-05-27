//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Mohamed Elshaer on 12/24/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import Crashlytics

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
//        let button = UIButton(type: .roundedRect)
//        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
//        button.setTitle("Crash", for: [])
//        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
//        view.addSubview(button)
    }
    
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }
}
