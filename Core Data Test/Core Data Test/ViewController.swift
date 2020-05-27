//
//  ViewController.swift
//  Core Data Test
//
//  Created by Mohamed Elshaer on 3/5/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData(){
        
        let fetchRequest: NSFetchRequest<Person> = Person.fetchRequest()
        do {
            let people = try CoreFuntions.context.fetch(fetchRequest)
            self.people = people
            self.tableView.reloadData()
        } catch {
            
        }
    }
    
    func fetchSearchedData(){
        
        let fetchRequest: NSFetchRequest<Person> = Person.fetchRequest()
        let pre = NSPredicate(format: "name Contains %@","50")
        fetchRequest.predicate = pre
        do {
            let people = try CoreFuntions.context.fetch(fetchRequest)
            self.people = people
            self.tableView.reloadData()
        } catch {
            
        }
    }

    @IBAction func plusOne(_ sender: Any) {
        let alert = UIAlertController(title: "Add Person", message: nil, preferredStyle: .alert)
        alert.addTextField { (textFiled) in
            textFiled.placeholder = "Name"
        }
        alert.addTextField { (textFiled) in
            textFiled.placeholder = "Age"
            textFiled.keyboardType = .numberPad
        }
        
        let action = UIAlertAction(title: "Post", style: .default) { (_) in
            let name = alert.textFields?.first?.text
            let age = alert.textFields?.last?.text
            let person = Person(context: CoreFuntions.context)
            person.name = name
            person.age = Int16(age!)!
            CoreFuntions.saveContext()
            self.people.append(person)
            self.tableView.reloadData()
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
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
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            CoreFuntions.context.delete(self.people[indexPath.row])
            do {
                try CoreFuntions.context.save()
                self.people.removeAll()
                self.fetchData()
                
            } catch {
                
            }
            
        }
    }
}

