//
//  MapperKey.swift
//  CleanMapper
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

class MapperKey: Hashable {
    private let targetTypeName: String
    private let resultTypeName: String
    
    init(targetTypeName: String, resultTypeName: String) {
        self.targetTypeName = targetTypeName
        self.resultTypeName = resultTypeName
    }
    
    static func create<Target, Result>(targetType: Target.Type, resultType: Result.Type) -> MapperKey {
        return MapperKey(targetTypeName: String(describing: targetType),
                         resultTypeName: String(describing: resultType))
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine("target")
        hasher.combine(targetTypeName)
        hasher.combine("result")
        hasher.combine(resultTypeName)
    }
    
    static func == (lhs: MapperKey, rhs: MapperKey) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
