//
//  CurrentWeatherCollectionViewCellViewModel.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 16/10/2023.
//

import Foundation
import WeatherKit

struct CurrentWeatherCollectionViewCellViewModel {
    private let model: CurrentWeather
    
    init(model: CurrentWeather) {
        self.model = model
    }
}
