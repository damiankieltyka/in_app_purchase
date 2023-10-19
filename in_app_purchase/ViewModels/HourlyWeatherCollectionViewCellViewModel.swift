//
//  HourlyWeatherCollectionViewCellViewModel.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 16/10/2023.
//

import Foundation
import WeatherKit

struct HourlyWeatherCollectionViewCellViewModel {
    private let model: HourWeather
    
    static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        
        return formatter
    }()
    
    init(model: HourWeather) {
        self.model = model
    }
    
    public var iconName: String {
        return model.symbolName
    }
    
    public var temperature: String {
        return model.temperature.description
    }
    
    public var date: String {
        let hour = Calendar.current.component(.hour, from: model.date)
        return "\(hour):00"
    }
}
