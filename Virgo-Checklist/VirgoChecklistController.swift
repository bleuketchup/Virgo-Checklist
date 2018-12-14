//
//  ViewController.swift
//  Virgo-Checklist
//
//  Created by Darlene on 12/11/18.
//  Copyright © 2018 Darlene Austria. All rights reserved.
//

import UIKit

class VirgoChecklistController: UITableViewController {
    
    let itemArray = ["Annoy Janin", "Buy eggs", "Tickle Chasey Chase", "Chase Banksy!"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    // Tableview Controller Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
    
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    
    // add a check mark when user selects row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        //print(itemArray[indexPath.row])
        
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark  {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        
        
    }
    
    
}

