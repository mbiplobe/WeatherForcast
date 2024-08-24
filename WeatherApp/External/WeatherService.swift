//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Mideveloper on 22/10/2023.
//

import Foundation

typealias completion = (_ response: WeatherEntity?, _ error: Error?) -> Void



struct WeatherService: WeatherServiceProtocol {
    
    func getWeather(_ latitude: String, _ longitude: String, completion: @escaping completion) {
        WebService.request(Endpoint.weather(latitude: latitude, longitude: longitude), responseType: WeatherEntity.self) { result in
            switch result {
            case .success(let weahterResponse):
                completion(weahterResponse, nil)
            case .failure(let error):
                // Handle the error
                print("Error: \(error)")
                completion(nil, nil)
            }
        }
    }
    
    func getCityWeather(_ name: String, completion: @escaping completion) {
        WebService.request(Endpoint.cityWeather(cityName: name), responseType: WeatherEntity.self) { result in
            switch result {
            case .success(let weahterResponse):
                completion(weahterResponse, nil)
            case .failure(let error):
                print("Error: \(error)")
                completion(nil, nil)
            }
        }
    }
}
