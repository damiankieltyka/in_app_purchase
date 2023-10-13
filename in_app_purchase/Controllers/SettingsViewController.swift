//
//  SettingsViewController.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 05/10/2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let primaryView: SettingsView = {
        let primaryView = SettingsView()
        let viewModel = SettingsViewViewModel(options: SettingsOption.allCases)
        primaryView.configure(with: viewModel)
        return primaryView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        primaryView.delegate = self
        setUpView()
    }
    
    private func setUpView() {
        view.addSubview(primaryView)
        
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}


extension SettingsViewController: SettingsViewDelegate {
    func settingsView(_ settingsView: SettingsView, didTap option: SettingsOption) {
        print("Selected option is: \(option)")
        switch option {
        case .upgrade:
            break
        case .privacyPolicy:
            break
        case .terms:
            break
        case .contact:
            break
        case .getHelp:
            break
        case .rateApp:
            break
        }
    }
}
