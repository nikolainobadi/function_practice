//
//  Home_Subscriber.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import Combine

class HomeSubscriber {
    
    // MARK: - PROPERTIES
    weak var responder: Home_SubResponder?
    private var subscriptions = Set<AnyCancellable>()
    
    
    // MARK: - SUBSCRIPTIONS
    func subscribe_addPremium(_ publisher: Published<Premium>.Publisher) {
        
        publisher
            .sink { [weak self] premium in
                self?.responder?.addPremium(premium)
            }
            .store(in: &subscriptions)
    }
}
