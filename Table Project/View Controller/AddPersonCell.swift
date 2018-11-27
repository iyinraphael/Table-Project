//
//  AddPersonCell.swift
//  Table Project
//
//  Created by Iyin Raphael on 11/27/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class AddPersonCell: UITableViewCell {
    
    static let reuseIdentifier = "addPersonCell"
   
    @IBAction func add(_ sender: Any) {
    }
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var cohortField: UITextField!

}
