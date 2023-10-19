//
//  WeatherViewModel.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 16/10/2023.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModel: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModel: [DailyWeatherCollectionViewCellViewModel])
}
