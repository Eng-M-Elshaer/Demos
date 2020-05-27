//
//  TableViewController.swift
//  Codable Demo
//
//  Created by Mohamed Elshaer on 3/15/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//

import UIKit
import Alamofire

class TableViewController: UITableViewController {
    
    var items = [SearchResult]()
    let theAPI = "http://www.omdbapi.com/?s=Harry+Potter&apikey=b52fc4a5"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
    }


    func makeRequest(){
        AF.request(theAPI).responseJSON { response in
            do {
                let cat = try JSONDecoder().decode(SearchResult.self, from: response.data!)
                self.items = [cat]
                print(cat)
                self.tableView.reloadData()
            } catch {
                
            }
            
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "Cell")
        let Movie = items[indexPath.row]
        cell?.textLabel?.text = Movie.Response
        return cell!
    }

}
