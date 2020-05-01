//
//  String.swift
//  CleanMapperExample
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

extension String {
    
    static func random(using source: String) -> String {
        let length = Int(arc4random_uniform(5) + 3)
        let letters: [Character] = length.times {
            let offset = Int(arc4random_uniform(UInt32(source.count - 1)))
            let symbolIndex = source.index(source.startIndex, offsetBy: offset)
            return source[symbolIndex]
        }
        return String(letters)
    }
    
}
