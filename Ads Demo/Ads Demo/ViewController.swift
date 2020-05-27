//
//  ViewController.swift
//  Ads Demo
//
//  Created by Mohamed Elshaer on 3/8/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }


}

