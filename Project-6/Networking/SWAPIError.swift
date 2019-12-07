//
//  SWAPIError.swift
//  Project-6
//
//  Created by Cristian Sedano Arenas on 06/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation

enum SWAPIError: Error {
    case requestFailed
    case responseUnsuccessful
    case badRequestResponse
    case jsonParsingFailure
    case invalidUrl
}
