//
//  CompactUser.swift
//  CleanMapperExample
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

class CompactUser: CustomStringConvertible {
    var fullName: String
    
    init(fullName: String) {
        self.fullName = fullName
    }
    
    var description: String {
        return "fullName: \(fullName)"
    }
}
