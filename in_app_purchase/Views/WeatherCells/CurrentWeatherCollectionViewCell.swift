//
//  CurrentWeatherCollectionViewCell.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 13/10/2023.
//

import UIKit

final class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CurrentWeatherCollectionViewCell.self)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with viewModel: CurrentWeatherCollectionViewCellViewModel) {
        
    }
}
