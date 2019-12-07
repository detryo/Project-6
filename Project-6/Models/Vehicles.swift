//
//  Vehicles.swift
//  Project-6
//
//  Created by Cristian Sedano Arenas on 06/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation

struct Vehicles: Codable {
    var results: [Vehicle]
    var next: String?
}

struct Vehicle: Codable {
    let name: String
    let manufacturer: String
    let costInCredits: String
    let length: String
    let vehicleClass: String
    let crew: String
}

extension Vehicle {
    var comparableLength: Double {
        get {
            return self.length.toDouble() ?? 0
        }
    }
}
