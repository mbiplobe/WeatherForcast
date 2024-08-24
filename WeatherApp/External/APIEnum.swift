//
//  NetworkConstant.swift
//  WeatherApp
//
//  Created by Mideveloper on 22/10/2023.
//

import Foundation

enum API {
    static let baseURL = "https://api.openweathermap.org/data/2.5"
    static let apiKey = "0d6a8d422c058119b666882afe499ea2" //To obtain the API Key, sign in to https://openweathermap.org/.
}

enum Endpoint {
    case weather(latitude: String, longitude: String)
    case cityWeather(cityName: String)
    
    var path: String {
        switch self {
        case .weather(let latitude, let longitude):
            return "/weather?lat=\(latitude)&lon=\(longitude)&appid=\(API.apiKey)&units=metric"
        case .cityWeather(let cityName):
            return "/weather?q=\(cityName)&appid=\(API.apiKey)&units=metric"
        }
    }
    
    var url: URL {
        let urlString = API.baseURL + path
        return URL(string: urlString)!
    }
    
    var httpMethod: String {
        switch self {
        case .weather:
            return "GET"
        case .cityWeather:
            return "GET"
        }
    }
}



