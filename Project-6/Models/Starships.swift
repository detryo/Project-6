//
//  StarShips.swift
//  Project-6
//
//  Created by Cristian Sedano Arenas on 06/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation

struct Starships: Codable {
    var results: [Starship]
    var next: String?
}

struct Starship: Codable {
    let name: String
    let manufacturer: String
    let costInCredits: String
    var length: String
    let starshipClass: String
    let crew: String
}

extension Starship {
    var comparableLength: Double {
        get {
            return self.length.toDouble() ?? 0
        }
    }
}
