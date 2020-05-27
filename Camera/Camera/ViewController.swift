//
//  ViewController.swift
//  Camera
//
//  Created by Mohamed Elshaer on 4/25/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import ALCameraViewController

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
//    var libraryEnabled: Bool = true
//    var croppingEnabled: Bool = true
//    var allowResizing: Bool = true
//    var allowMoving: Bool = true
//    var minimumSize: CGSize = CGSize(width: 60, height: 60)
//
//    var croppingParameters: CroppingParameters {
//        return CroppingParameters(isEnabled: croppingEnabled, allowResizing: allowResizing, allowMoving: allowMoving, minimumSize: minimumSize)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImage.contentMode = .scaleAspectFit
        
        // Do any additional setup after loading the view, typically from a nib.
//        profileImage.isUserInteractionEnabled = true
//        profileImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.selectPhoto)))
    }
    
//    @objc func selectPhoto(){}
    
    func selectPhoto() {
        let cropSettings = CroppingParameters(isEnabled: true, allowResizing: false, allowMoving: true, minimumSize: CGSize(width: 200, height: 350))
        
        let cameraViewController = CameraViewController(croppingParameters: cropSettings, allowsLibraryAccess: true, allowsSwapCameraOrientation: true, allowVolumeButtonCapture: true) { (image, phAsset) in
            
            if image != nil {
                self.profileImage.image = image!
//                self.updateImage()
            }
            
            self.dismiss(animated: true, completion: nil)
            
        }
        
        self.present(cameraViewController, animated: true, completion: nil)
    }
    
    @IBAction func cam(_ sender: Any) {
//        openCam()
        selectPhoto()
    }
    
    @IBAction func lib(_ sender: Any) {
//        openLib()
    }
    
//    func openCam(){
//        let cameraViewController = CameraViewController(croppingParameters: croppingParameters, allowsLibraryAccess: libraryEnabled) { [weak self] image, asset in
//            self?.profileImage.image = image
//            self?.dismiss(animated: true, completion: nil)
//        }
//        
//        present(cameraViewController, animated: true, completion: nil)
//    }
//    
//    func openLib(){
//        let libraryViewController = CameraViewController.imagePickerViewController(croppingParameters: croppingParameters) { [weak self] image, asset in
//            self?.profileImage.image = image
//            self?.dismiss(animated: true, completion: nil)
//        }
//        
//        present(libraryViewController, animated: true, completion: nil)
//    }
    

    
//    func getUserImg(image: UIImage) -> String {
//        let jpegCompressionQuality: CGFloat = 0.9 // Set this to whatever suits your purpose
//        //let correctedImage:UIImage = profileImage.image!.fixOrientation()
////        if let base64String = UIImageJPEGRepresentation(correctedImage, jpegCompressionQuality)?.base64EncodedString() {
////            return base64String
////        }
//        return ""
//    }
//
//    @objc func selectPhoto() {
//        let cropSettings = CroppingParameters(isEnabled: true, allowResizing: false, allowMoving: true, minimumSize: CGSize(width: 200, height: 350))
//
//        let cameraViewController = CameraViewController(croppingParameters: cropSettings, allowsLibraryAccess: true, allowsSwapCameraOrientation: true, allowVolumeButtonCapture: true) { (image, phAsset) in
//
//            if image != nil {
//                self.profileImage.image = image!
//                self.updateImage()
//            }
//
//            self.dismiss(animated: true, completion: nil)
//
//        }
//
//        self.present(cameraViewController, animated: true, completion: nil)
//    }
//
//    func updateImage() {
//        let imageBase64 = getUserImg(image: self.profileImage.image!)
//        //loadingHud.show(in: self.view)
//        print("IMG \(imageBase64)")
////        UserManager.updateUserImage(body: ["image": imageBase64]) { (response, error) in
////            if error != nil {
////                self.loadingHud.dismiss()
////                let alert = UIViewHelper.connectionErrorAlert()
////                self.present(alert, animated: true, completion: nil)
////                return
////            }
////
////            //self.loadingHud.dismiss()
////            if (response?.0)! {
////                self.profileImage.sd_setImage(with: URL(string: (response?.1)!))
////                let defaults = UserDefaults.standard
////                defaults.set((response?.1)!, forKey: "UserImage")
////                defaults.synchronize()
////            } else {
////                let alert = UIViewHelper.errorAlert(title: "Update Image Fail", message: "Update profile image failed. please try again later.")
////                self.present(alert, animated: true, completion: nil)
////            }
////        }
//    }


}

