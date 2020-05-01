//
//  MapperConfiguration.swift
//  CleanMapperExample
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation
import CleanMapper

class MapperConfiguration {
    
    static func configure() {
        
        Mapper.register { (cu: CompactUser) -> User in
            let components = cu.fullName.components(separatedBy: " ")
            let firstName = components[safe: 0] ?? ""
            let lastName = components[safe: 1] ?? ""
            return User(firstName: firstName, lastName: lastName)
        }
        
        Mapper.register { (u: User) -> CompactUser in
            let fullName = [u.firstName, u.lastName].filter({ !$0.isEmpty }).joined(separator: " ")
            return CompactUser(fullName: fullName)
        }
        
    }
    
}
