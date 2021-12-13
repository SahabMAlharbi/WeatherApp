//
//  DailyWeather.swift
//  Weather
//
//  Created by Sahab Alharbi on 14/04/1443 AH.
//

import Foundation
struct DailyWeather: Codable, Identifiable{
    var dt:Int
    var temp: Temperature
    var weather: [WeatherDetails]
    
    enum CodingKey: String{
        case dt
        case temp
        case weather
    }
    init() {
        dt = 0
        temp = Temperature(min: 0, max: 0)
        weather = [WeatherDetails(main: "", description: "", icon: "")]
    }
}
extension DailyWeather {
    var id: UUID {
        return UUID()
    }
}
