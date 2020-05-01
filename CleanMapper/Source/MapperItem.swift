//
//  MapperItem.swift
//  CleanMapper
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

class MapperItem<Target, Result>: MapperProtocol {
    private let mappingAlgorithm: MappingAlgorithm<Target, Result>
    
    init(mappingAlgorithm: @escaping MappingAlgorithm<Target, Result>) {
        self.mappingAlgorithm = mappingAlgorithm
    }
    
    func map(_ target: Target) -> Result {
        return mappingAlgorithm(target)
    }
    
    lazy var key = MapperKey.create(targetType: Target.self, resultType: Result.self)
}
