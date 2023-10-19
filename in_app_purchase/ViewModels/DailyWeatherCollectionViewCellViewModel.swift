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
    
    init(model: DayWeather) {
        self.model = model
    }
}
