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
//        let hourlyPremiums = premiums.filter { !$0.oneTime }
//        let oneTimePremiums = premiums.filter { $0.oneTime }
//
//        var hourly = summary.hourlyRate
//
//        for premium in hourlyPremiums {
//            hourly += premium.rate
//        }
//
//        var total = (hourly * 40) * 4
//
//        for premium in oneTimePremiums {
//            let monthlyAmount = premium.rate * 4
//            total += monthlyAmount
//        }
//
//        total += summary.bonusDollars
//
//        let difference = summary.targetAmount - total
//        let numberOfConverts = difference / 4
//
//        print(numberOfConverts)
        
        print(summary.targetAmount)
        print(summary.hourlyRate)
        print(summary.bonusDollars)
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
