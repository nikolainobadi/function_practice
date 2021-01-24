//
//  PremiumDetail_Manager.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import Combine

class PremiumDetail_Manager {
    
    // MARK: - PROPERTIES
    private var premium: Premium
    
    var premiumPublisher = PassthroughSubject<Premium, Never>()
    
    // MARK: - INIT
    init(_ premium: Premium) {
        self.premium = premium
    }
}

extension PremiumDetail_Manager: PremiumDetail_UIResponder {
    
    // MARK: - UIResponder
    func toggleOneTime() {
        premium.oneTime.toggle()
    }
    
    func addPremium() {
        premiumPublisher.send(premium)
    }
}
