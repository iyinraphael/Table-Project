//
//  PersonTableViewController.swift
//  Table Project
//
//  Created by Iyin Raphael on 11/27/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        switch section {
        case 0:
            return 1
        case 1:
            return ModelController.shared.numberOfPeople()
        default:
            fatalError("Invalid section number")
        }
    
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: AddPersonCell.reuseIdentifier, for: indexPath) 
            return cell
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonCell.reuseIdentifier, for: indexPath) as? PersonCell else {return UITableViewCell()}
        let person = ModelController.shared.person(at: indexPath.row)
        cell.nameLabel.text = person.name
        cell.cohortLabel.text = person.cohort
        return cell

    }
    
    @IBAction func add() {
        guard let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? AddPersonCell else { return }
        guard let name = cell.nameField.text, !name.isEmpty else { return }
        let cohort = cell.cohortField.text ?? ""
        let person = Person(name: name, cohort: cohort)
        
        cell.nameField.text = ""
        cell.cohortField.text = ""
        
        ModelController.shared.add(person:person)
        tableView.reloadData()
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 150
        default:
            return 160
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard
            let destination = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow else {return}
        let person = ModelController.shared.person(at: indexPath.row)
        destination.person = person
    }


}
