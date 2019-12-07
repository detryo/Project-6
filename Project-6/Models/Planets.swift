//
//  Planets.swift
//  Project-6
//
//  Created by Cristian Sedano Arenas on 06/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation

struct Planets: Codable {
    var results: [Planet]
    var next: String?
}

struct Planet: Codable, Equatable {
    let name: String
    let url: String
}

extension Planet {
    static func == (lhs: Person, rhs: Planet) -> Bool {
        return lhs.homeworld == rhs.url
    }
}

