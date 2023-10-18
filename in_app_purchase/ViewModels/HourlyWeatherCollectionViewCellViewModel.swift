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
    
    init(model: HourWeather) {
        self.model = model
    }
}
