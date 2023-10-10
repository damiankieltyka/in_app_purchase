//
//  SettingsViewViewModel.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 10/10/2023.
//

import Foundation

struct SettingsViewViewModel {
    let options: [SettingsOption]
}

enum SettingsOption: CaseIterable {
    case upgrade
    case privacyPolicy
    case terms
    case contact
    case getHelp
    case rateApp
    
    var title: String {
        switch self {
        case .upgrade:
            return "Upgrade"
        case .privacyPolicy:
            return "Privacy Policy"
        case .terms:
            return "Terms"
        case .contact:
            return "Contact"
        case .getHelp:
            return "Get Help"
        case .rateApp:
            return "Rate App"
        }
    }
}
