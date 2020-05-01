//
//  UsersRepository.swift
//  CleanMapperExample
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

class UsersRepository {
    
    static func get() -> [User] {
        let generatorNameSource = "abcdifghijklmnopqrstuvwxyz"
        let users: [User] = 10.times {
            let firstName = String.random(using: generatorNameSource)
            let lastName = String.random(using: generatorNameSource)
            return User(firstName: firstName, lastName: lastName)
        }
        return users
    }
    
}
