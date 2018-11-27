//
//  ModelController.swift
//  Table Project
//
//  Created by Iyin Raphael on 11/27/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import Foundation

class ModelController {
    
    static let shared = ModelController()
    private init() {}
    
    var people = [Person]()
    
    // CRUD - <-- basic database managment task
    
    func add(person: Person) {
        people.append(person)
    }
    
    func remove(personAtIndex index: Int) {
        people.remove(at: index)
    }
    
    func numberOfPeople() -> Int {
        return people.count
    }
    
    func person(at index: Int) -> Person {
        return people[index]
    }
    
    
    // MARK: - Data Persistence
    
    func saveData() {
        // TODO: Implement this
    }
    
    func loadData() {
        // TODO: Implement this
    }
}
