//
//  DailyCollectionViewCell.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 13/10/2023.
//

import UIKit

final class DailyCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: DailyCollectionViewCell.self)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemRed
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
