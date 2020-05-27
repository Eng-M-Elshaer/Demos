//
//  ViewController.swift
//  DemoOnCore
//
//  Created by Mohamed Elshaer on 12/18/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource {
    
    var people = [Preson]()

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = people[indexPath.row].name
        cell.detailTextLabel?.text = String(people[indexPath.row].age)
        return cell
    }
    
    func fetchData(){
        
        let fetchRequest: NSFetchRequest<Preson> = Preson.fetchRequest()
        do {
            let people = try CoreFuntions.context.fetch(fetchRequest)
            self.people = people
            self.tableView.reloadData()
        } catch {
            
        }
    }

    @IBAction func go(_ sender: Any) {
        
        let name = tf1.text
        let age = tf2.text
        let person = Preson(context: CoreFuntions.context)
        person.name = name
        person.age = Int16(age!)!
        CoreFuntions.saveContext()
        self.people.append(person)
        self.tableView.reloadData()
        
    }
    
}

