//
//  CurrentWeatherView.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 08/10/2023.
//

import UIKit

final class CurrentWeatherView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
