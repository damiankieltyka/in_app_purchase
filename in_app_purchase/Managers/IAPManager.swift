//
//  IAPManager.swift
//  in_app_purchase
//
//  Created by Damian Kiełtyka on 04/10/2023.
//

import Foundation
import RevenueCat

final class IAPManager {
    static let shared = IAPManager()
    
    private init() {}
    
    func isSubscribed(completion: @escaping (Bool) -> Void) {
        Purchases.shared.getCustomerInfo { info, error in
            guard let subscriptions = info?.activeSubscriptions else { return }
            print("XXX: \(subscriptions)")
            completion(!subscriptions.isEmpty)
        }
    }
}
