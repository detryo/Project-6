//
//  SWAPIClientPeopleExtension.swift
//  Project-6
//
//  Created by Cristian Sedano Arenas on 06/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation

extension SWAPIClient {
    func getListOfPeople(page: Int, completionHandler completion: @escaping (People?, Error?) -> Void) {
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let url = URL(string: "https://swapi.co/api/people/?page=\(page)") else {
            completion(nil, SWAPIError.invalidUrl)
            return
        }
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, SWAPIError.responseUnsuccessful)
                        return
                    }
                    if httpResponse.statusCode == 200 {
                        do {
                            let entities = try self.decoder.decode(People.self, from: data)
                            completion(entities, nil)
                        } catch _ {
                            completion(nil, SWAPIError.jsonParsingFailure)
                        }
                    } else {
                        completion(nil, SWAPIError.badRequestResponse)
                    }
                } else if error != nil {
                    completion(nil, SWAPIError.requestFailed)
                }
            }
        }
        task.resume()
    }
}
