//
//  PremiumDetail_Subscriber.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/24/21.
//

import UIKit
import Combine

class PremiumDetail_Subscriber: BaseSubscriber {
    
    weak var responder: PremiumDetail_SubResponder?

    
    // MARK: - SUBS
    func subscribe_premiumName(_ textField: UITextField) {
        subscribeTo(textField: textField) { [weak self] text in
            self?.responder?.updateName(text)
        }
    }
    
    func subscribe_premiumRate(_ textField: UITextField) {
        
        subscribeTo(textField: textField) { [weak self] text in
            self?.sendRate(text)
        }
    }
}


// MARK: - HELPER METHODS
extension PremiumDetail_Subscriber {
    
    func sendRate(_ text: String) {
        guard let rate = Float(text) else { return }
        responder?.updateRate(rate)
    }
}
