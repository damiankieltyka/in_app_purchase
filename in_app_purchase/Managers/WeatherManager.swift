//
//  WeatherManager.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 04/10/2023.
//

import CoreLocation
import Foundation
import WeatherKit

final class WeatherManager {
    static let shared = WeatherManager()
    
    let service = WeatherService.shared
    
    private init() {}
    
    public func getWeather(for location: CLLocation, completion: @escaping () -> Void) {
        Task {
            do {
                let result = try await service.weather(for: location)
                print("Current: \(result.currentWeather)")
                print("Hourly: \(result.hourlyForecast)")
                print("Daily: \(result.dailyForecast)")
                completion()
            } catch {
                print("XXXX:" + String(describing: error))
            }
        }
    }
}
