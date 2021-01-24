//
//  Home_Subscriber.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import Combine

class Home_Subscriber: BaseSubscriber {
    
    // MARK: - PROPERTIES
    weak var responder: Home_SubResponder?
    weak var summaryResponder: Home_SummaryResponder?
    
    
    // MARK: - SUBSCRIPTIONS
    func subscribe_addPremium(_ publisher: PassthroughSubject<Premium, Never>) {
        
        publisher
            .sink { [weak self] premium in
                self?.summaryResponder?.addPremium(premium)
            }
            .store(in: &subs)
    }
    
    func subscribe_premiumList(_ publisher: Published<[Premium]>.Publisher) {
        
        publisher
            .sink { [weak self] premiums in
                self?.responder?.updatePremiums(premiums)
            }
            .store(in: &subs)
    }
    
    func subscribe_targetAmountField(_ textField: ShadowField) {
        subscribeTo(textField: textField) { [weak self] text in
            self?.sendAmount(text)
        }
    }
    
    func subscribe_hourlyField(_ textField: ShadowField) {
        subscribeTo(textField: textField) { [weak self] text in
            self?.sendHourly(text)
        }
    }
    
    func subscribe_bonusField(_ textField: ShadowField) {
        subscribeTo(textField: textField) { [weak self] text in
            self?.sendBonus(text)
        }
    }
}

extension Home_Subscriber {
    
    func sendAmount(_ text: String) {
        guard let amount = Float(text) else { return }
        summaryResponder?.updateTargetAmount(amount)
    }
    
    func sendHourly(_ text: String) {
        guard let hourly = Float(text) else { return }
        summaryResponder?.updateHourlyRate(hourly)
    }
    
    func sendBonus(_ text: String) {
        guard let bonus = Float(text) else { return }
        summaryResponder?.updateBonus(bonus)
    }
}
