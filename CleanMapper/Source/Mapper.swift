//
//  Mapper.swift
//  CleanMapper
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

public class Mapper {
    private static var mappers = [MapperKey: MapperProtocol]()
    
    public static func register<Target, Result>(mappingAlgorithm: @escaping MappingAlgorithm<Target, Result>) {
        let mapper = MapperItem<Target, Result>(mappingAlgorithm: mappingAlgorithm)
        let key = mapper.key
        mappers[key] = mapper
    }
    
    public static func map<Target, Result>(_ target: Target) -> Result {
        let key = MapperKey.create(targetType: Target.self, resultType: Result.self)
        let mapper = mappers[key] as! MapperItem<Target, Result>
        return mapper.map(target)
    }
    
    public static func map<Target, TargetCollection, Result>(_ targetCollection: TargetCollection) -> [Result] where TargetCollection : Sequence, TargetCollection.Iterator.Element == Target {
        let key = MapperKey.create(targetType: Target.self, resultType: Result.self)
        let mapper = mappers[key] as! MapperItem<Target, Result>
        return targetCollection.map(mapper.map)
    }
}
