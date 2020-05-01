//
//  Int.swift
//  CleanMapperExample
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

extension Int {
    
    func times(_ action: () -> Void) {
        for _ in 0..<self  {
            action()
        }
    }
    
    func times<T>(_ action: () -> T) -> [T] {
        var result = [T]()
        for _ in 0..<self {
            result.append(action())
        }
        return result
    }
}
