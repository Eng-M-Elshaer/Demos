//
//  ViewController.swift
//  Finger Print Demo
//
//  Created by Mohamed Elshaer on 6/11/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        let context:LAContext = LAContext()
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "I Want To Login") { (result, error) in
                if result {
                    print("Good")
                } else {
                    print("Bad")
                }
            }
        } else {
            print("Not")
        }
    }
    
}

