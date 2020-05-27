//
//  ViewController.swift
//  Facebook Login
//
//  Created by Mohamed Elshaer on 4/27/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginFacebook(_ sender: Any) {
        let facebookManger:FBSDKLoginManager = FBSDKLoginManager()
        facebookManger.logIn(withReadPermissions: ["email"], from: self){ (reslut,Error) in
            if Error == nil {
                let fbloginReslut:FBSDKLoginManagerLoginResult = reslut!
                if fbloginReslut.grantedPermissions != nil {
                    if fbloginReslut.grantedPermissions.contains("email") {
                        self.getFBUserData()
                        facebookManger.logOut()
                    }
                }
            }
        }
    }
    
    func loginBtnDidLogOut(_ loginBtn:FBSDKLoginButton!){
        print("Log Out")
        
    }
    func getFBUserData(){
        if FBSDKAccessToken.current() != nil {
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"id,first_name,last_name,email"])?.start(completionHandler: {(connection,reslut,error) -> Void in
                if error == nil {
                    let faceDic = reslut as! [String:AnyObject]
                    print(faceDic)
                    let email = faceDic["email"] as! String
                    print(email)
                    let id = faceDic["id"] as! String
                    print(id)
                }
            })
        }
    }
    
}

