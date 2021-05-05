//
//  ApiStruct.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 2.5.2021.
//

import Foundation




struct RootData: Decodable, Hashable {
    var results: [Result] = []
    var grindavik: Result? { results.first(where: { $0.city == "Grindavík" }) }


    enum CodingKeys: String, CodingKey {
        case results
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        results = try container.decode([Result].self, forKey: .results)
    }
}

struct Result: Decodable, Hashable, Identifiable {
    var id = UUID()
    var location: String
    var city: String
    var country: String
    var coordinates: Coordinates
    var measurements: [Measurements]
    var so2: Measurements? { measurements.first(where: { $0.parameter == "so2" }) }
    var pm10: Measurements? { measurements.first(where: { $0.parameter == "pm10" }) }
    var no2: Measurements? { measurements.first(where: { $0.parameter == "no2" }) }

    
    
    enum CodingKeys: String, CodingKey {
        case id
        case location
        case city
        case country
        case coordinates
        case measurements
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        location = try container.decode(String.self, forKey: .location)
        city = try container.decode(String.self, forKey: .city)
        country = try container.decode(String.self, forKey: .country)
        coordinates = try container.decode(Coordinates.self, forKey: .coordinates)
        measurements = try container.decode([Measurements].self, forKey: .measurements)
    }
}

struct Coordinates:  Decodable, Hashable  {
    var latitude: Double
    var longitude: Double
}

struct Measurements:  Decodable, Hashable  {
    var parameter: String
    var value: Double
    var lastUpdated: String
    var unit: String
}


