//
//  DetailViewController.swift
//  Table Project
//
//  Created by Iyin Raphael on 11/27/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        
    }
    
    var person: Person?
    
    @IBOutlet weak var cohortTextField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func Save(_ sender: Any) {
    
        if let person = person {
            nameField.text = person.name
            cohortTextField.text = person.cohort
            navigationController?.popViewController(animated: true)
        } else {
            return
        }
    }
    
    func updateView() {
        
        if isViewLoaded {
            guard let person = person else { return}
            nameField.text = person.name
            cohortTextField.text = person.cohort
        }
    }
    
}
