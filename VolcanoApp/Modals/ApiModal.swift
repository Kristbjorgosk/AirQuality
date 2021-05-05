//
//  ApiModal.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 2.5.2021.
//

import Foundation


class ApiModal: ObservableObject {
    @Published var results = [Result]()

    init() {
        guard let url = URL(string: "https://api.openaq.org/v1/latest?country=IS&parameter=so2") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let airData = try JSONDecoder().decode(RootData.self, from: data)
//                print(airData)
                DispatchQueue.main.async {
                    self.results = airData.results
                }
            } catch {
                print("😡Failed to decode: \(error)😡")
            }
        }.resume()
    }
}
