//
//  ViewController.swift
//  XIB View
//
//  Created by Mohamed Elshaer on 3/27/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var welcomeView: UIView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let theView =  Bundle.main.loadNibNamed("newView", owner: self, options: nil)?.first as? newView {
            theView.frame.origin.y = 400
            theView.frame.origin.x = 100
            self.view.addSubview(theView)
        }
        
    }

    private func animateIn() {
        //self.view.addSubview(backGroundBlurView)
        self.view.addSubview(welcomeView)
        welcomeView.center = self.view.center
        welcomeView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        welcomeView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            //self.backGroundBlurView.effect = self.effect
            self.welcomeView.alpha = 1
            self.welcomeView.transform = CGAffineTransform.identity
        }
        
    }

    @IBAction func go(_ sender: Any) {
        animateIn()

    }
}

