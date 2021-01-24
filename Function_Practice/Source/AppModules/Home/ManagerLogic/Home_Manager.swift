//
//  Home_Manager.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import Combine

class Home_Manager {
    
    // MARK: - PROPERTIES
    var summary = PaySummary()
    @Published var premiums = [Premium]()
}


// MARK: - Actions
extension Home_Manager: Home_Actions {
    
    func calculate() {

    }
}


// MARK: - SummaryResponder
extension Home_Manager: Home_SummaryResponder {
    
    func updateTargetAmount(_ amount: Float) {
        summary.targetAmount = amount
    }
    
    func updateHourlyRate(_ hourly: Float) {
        summary.hourlyRate = hourly
    }
    
    func updateBonus(_ bonus: Float) {
        summary.bonusDollars = bonus
    }
    
    func addPremium(_ premium: Premium) {
        premiums.append(premium)
    }
}
