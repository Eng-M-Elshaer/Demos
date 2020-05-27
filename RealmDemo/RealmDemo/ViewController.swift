//
//  ViewController.swift
//  RealmDemo
//
//  Created by Mohamed Elshaer on 12/24/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    var array = [Preson]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let preson1 = Preson()
        preson1.age = 24
        preson1.name = "Ali"
        
        let preson2 = Preson()
        preson2.age = 26
        preson2.name = "Mohamed"
        
        let preson3 = Preson()
        preson3.age = 28
        preson3.name = "Mai"
        
        let realm = try! Realm()
        
        
        let people = realm.objects(Preson.self)
        
        print("1 \(people.count)")
        
        try! realm.write {
//            realm.deleteAll()
            realm.add(preson1)
            realm.add(preson2)
            realm.add(preson3)

        }
        
        print("2 \(people.count)")
        
        for i in realm.objects(Preson.self) {
            print("\(i.age) and \(i.name)")
            array.append(i)
            tableView.reloadData()
        }
        
    }

    

}

extension ViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = array[indexPath.row].name
        cell.detailTextLabel?.text = String(array[indexPath.row].age)
        return cell

    }
    
    
}
