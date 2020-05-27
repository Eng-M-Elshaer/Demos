//
//  ViewController.swift
//  FacebookDemo
//
//  Created by Mohamed Elshaer on 12/24/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginFacebook(_ sender: Any) {
        let facebookManger:LoginManager = LoginManager()
        facebookManger.logIn(permissions: ["email"], from: self){ (reslut,error) in
            if error == nil {
                let fbloginReslut:LoginManagerLoginResult = reslut!
                if fbloginReslut.grantedPermissions != nil {
                    if fbloginReslut.grantedPermissions.contains("email") {
                        self.getFBUserData()
                        facebookManger.logOut()
                    }
                }
            }
        }
    }
    
    func getFBUserData(){
        if AccessToken.current != nil {
            GraphRequest(graphPath: "me", parameters: ["fields":"id,first_name,last_name,email"]).start(completionHandler: {(connection,reslut,error) -> Void in
                if error == nil {
                    let faceDic = reslut as! [String:AnyObject]
                    print(faceDic)
                    let email = faceDic["email"] as! String
                    print(email)
                    let id = faceDic["id"] as! String
                    print(id)
                    
                    let picURL = "https://graph.facebook.com/\(id)?fields=picture.width(720).height(720)"
                    let url = URL(string: picURL)
                    let data = try? Data(contentsOf: url!)
                    self.imageView.image = UIImage(data: data!)
                }
            })
        }
    }


}

