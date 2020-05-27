//
//  ViewController.swift
//  SideMenuDemo
//
//  Created by Mohamed Elshaer on 12/22/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let array = ["1","2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        print(row)
        if row == 0 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            self.present(vc, animated: true, completion: nil)
        } else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    
}
