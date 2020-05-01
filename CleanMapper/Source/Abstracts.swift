//
//  Abstracts.swift
//  CleanMapper
//
//  Created by Artem Eremeev on 01.05.2020.
//  Copyright © 2020 Artem Eremeev. All rights reserved.
//

import Foundation

public typealias MappingAlgorithm<Target, Result> = (Target) -> Result

protocol MapperProtocol {
    var key: MapperKey { get }
}
