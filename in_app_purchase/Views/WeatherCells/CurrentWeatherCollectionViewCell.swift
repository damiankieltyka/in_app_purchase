//
//  CurrentWeatherCollectionViewCell.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 13/10/2023.
//

import UIKit

final class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CurrentWeatherCollectionViewCell.self)
    
    private let tempLabel: UILabel = {
        let tempLabel = UILabel()
        tempLabel.textAlignment = .center
        tempLabel.font = .systemFont(ofSize: 62, weight: .medium)
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        return tempLabel
    }()
    
    private let conditionLabel: UILabel = {
        let conditionLabel = UILabel()
        conditionLabel.textAlignment = .left
        conditionLabel.font = .systemFont(ofSize: 44, weight: .regular)
        conditionLabel.translatesAutoresizingMaskIntoConstraints = false
        return conditionLabel
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
        contentView.addSubview(conditionLabel)
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        tempLabel.text = nil
        conditionLabel.text = nil
        icon.image = nil
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            tempLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            tempLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            tempLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            
            icon.heightAnchor.constraint(equalToConstant: 55),
            icon.widthAnchor.constraint(equalToConstant: 55),
            icon.topAnchor.constraint(equalTo: tempLabel.bottomAnchor),
            icon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            
            conditionLabel.leftAnchor.constraint(equalTo: icon.rightAnchor, constant: 10),
            conditionLabel.topAnchor.constraint(equalTo: tempLabel.bottomAnchor),
            conditionLabel.heightAnchor.constraint(equalToConstant: 80),
            conditionLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 15),
            conditionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        ])
    }
    
    public func configure(with viewModel: CurrentWeatherCollectionViewCellViewModel) {
        tempLabel.text = viewModel.temperature
        icon.image = UIImage(systemName: viewModel.symbolName)
        conditionLabel.text = viewModel.condition
    }
}
