//
//  User.swift
//  CleanMapperExample
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

class User: CustomStringConvertible {
    var firstName: String 
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var description: String {
        return "firstName: \(firstName), lastName: \(lastName)"
    }
}
