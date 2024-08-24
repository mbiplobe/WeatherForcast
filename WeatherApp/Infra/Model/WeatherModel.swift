//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Mideveloper on 22/10/2023.
//

import Foundation


struct WeatherModel : Identifiable {
    
    var id =  UUID()
    
    let coord: Coordinates
    let base: String?
    let visibility: Int?
    let dt: Int?
    let timezone: Int?
    let name: String?
    let cod: Int?
    let lon: Double?
    let lat: Double?
    let main: String?
    let description: String?
    let icon: String?
    
    let temp: Double?
    let feels_like: Double?
    let temp_min: Double?
    let temp_max: Double?
    let pressure: Int?
    let humidity: Int?
    let sea_level: Int?
    let grnd_level: Int?
    
    
}
