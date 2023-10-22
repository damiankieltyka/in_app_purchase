//
//  DailyWeatherCollectionViewCellViewModel.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 17/10/2023.
//

import Foundation
import WeatherKit

struct DailyWeatherCollectionViewCellViewModel {
    private let model: DayWeather
    
    static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        return formatter
    }()
    
    init(model: DayWeather) {
        self.model = model
    }
    
    public var iconName: String {
        return model.symbolName
    }
    
    public var temperature: String {
        return "\(model.lowTemperature.description) - \(model.highTemperature.description)"
    }
    
    public var day: String {
        let day = Calendar.current.component(.weekday, from: model.date)
        return string(from: day)
    }
    
    private func string(from day: Int) -> String {
        switch day {
        case 1:
            return "Monday"
        case 2:
            return "Tuesday"
        case 3:
            return "Wednesday"
        case 4:
            return "Thursday"
        case 5:
            return "Friday"
        case 6:
            return "Saturday"
        case 7:
            return "Sunday"
        default:
            return "Unavailable"
        }
    }
}
