//
//  UserDefultVC.swift
//  Test
//
//  Created by Mohamed Elshaer on 12/23/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class UserDefultVC: UIViewController {

    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var userNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        let name = userNameTF.text
        let password = passwordTF.text
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(password, forKey: "password")

    }
    
    @IBAction func getTheData(_ sender: Any) {
        userNameTF.text = UserDefaults.standard.string(forKey: "name")
        passwordTF.text = UserDefaults.standard.string(forKey: "password")

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
