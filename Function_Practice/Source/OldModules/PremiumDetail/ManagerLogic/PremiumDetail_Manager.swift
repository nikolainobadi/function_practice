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


// MARK: - UIResponder
extension PremiumDetail_Manager: PremiumDetail_UIResponder {
    
    // MARK: - UIResponder
    func toggleOneTime() {
        premium.oneTime.toggle()
    }
    
    func addPremium() {
        guard premium.name != "" else { return }
        guard premium.rate != 0 else { return }
        
        premiumPublisher.send(premium)
    }
}

// MARK: - SubResponder
extension PremiumDetail_Manager: PremiumDetail_SubResponder {
    
    func updateName(_ name: String) {
        premium.name = name
    }
    
    func updateRate(_ rate: Float) {
        premium.rate = rate
    }
}
