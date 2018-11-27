//
//  Person.swift
//  Table Project
//
//  Created by Iyin Raphael on 11/27/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import Foundation

class Person {
    
    var name: String
    var cohort: String
    
    init(name: String, cohort: String) {
        self.name = name
        self.cohort = cohort
        // (self.name, self.cohort) = (name, cohort)
    }
}
