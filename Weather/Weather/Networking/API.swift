//
//  API.swift
//  Weather
//
//  Created by Sahab Alharbi on 14/04/1443 AH.
//

import Foundation
struct API {
    static let key = "822868f8f8079109b0ffe92ba635e3c0"
    
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
     static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=metric"
    }
}
