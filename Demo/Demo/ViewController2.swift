//
//  ViewController2.swift
//  Demo
//
//  Created by Mohamed Elshaer on 12/17/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet weak var myPicker: UIDatePicker!
    
    var datePicker: UIDatePicker = {
        
        let picker = UIDatePicker()
        
        picker.datePickerMode = .date
        
        picker.addTarget(self, action: #selector(datePickerChanged(_:)), for: .valueChanged)
        
        return picker
    }()
    
    var dateFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        
        formatter.dateStyle = .medium
        
        formatter.timeStyle = .none
        
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textFiled.inputView = datePicker

    }
    
    
    
    @objc func datePickerChanged(_ sender: UIDatePicker) {
        
        textFiled.text = dateFormatter.string(from: sender.date)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }
    
    @IBAction func go(_ sender: Any) {
        
        textFiled.text = dateFormatter.string(from: myPicker.date)
    }

}
