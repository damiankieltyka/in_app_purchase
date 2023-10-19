//
//  HourlyWeatherCollectionViewCell.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 13/10/2023.
//

import UIKit

final class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: HourlyWeatherCollectionViewCell.self)
    
    private let tempLabel: UILabel = {
        let tempLabel = UILabel()
        tempLabel.textAlignment = .center
        tempLabel.font = .systemFont(ofSize: 18, weight: .regular)
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        return tempLabel
    }()
    
    private let dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.textAlignment = .center
        dateLabel.font = .systemFont(ofSize: 15, weight: .regular)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        return dateLabel
    }()
    
    private let icon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        icon.tintColor = .systemYellow
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(tempLabel)
        contentView.addSubview(icon)
        contentView.addSubview(dateLabel)
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            dateLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            dateLabel.heightAnchor.constraint(equalToConstant: 40),
            dateLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            
            
            icon.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            icon.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            icon.heightAnchor.constraint(equalToConstant: 33),
            icon.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            
            tempLabel.topAnchor.constraint(equalTo: icon.bottomAnchor),
            tempLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            tempLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            tempLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        tempLabel.text = nil
        icon.image = nil
        dateLabel.text = nil
    }
    
    public func configure(with viewModel: HourlyWeatherCollectionViewCellViewModel) {
        tempLabel.text = viewModel.temperature
        icon.image = UIImage(systemName: viewModel.iconName)
        dateLabel.text = viewModel.date
    }
}
