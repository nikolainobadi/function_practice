//
//  SampleScreen_Subscriber.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

import UIKit
import Combine

class SampleScreen_Subscriber {
    
    // MARK: - PROPERTIES
    weak var responder: SampleScreen_SubResponder?
    private var subscriptions = Set<AnyCancellable>()
    
    
    // MARK: - SUBSCRIPTIONS
    func subscribe_sampleScreenState(_ state: Published<SampleScreen_State>.Publisher) {
        
        state
            .sink { [weak self] state in
                self?.responder?.updateViewState(state)
            }
            .store(in: &subscriptions)
    }
    
    func subscribe_nameField(_ field: ShadowField) {
        subscribeToField(field)
            .sink { [weak self] text in
                self?.responder?.updateName(text)
            }
            .store(in: &subscriptions)
    }
    
    
    // MARK: - PRIVATE METHODS
    private func subscribeToField(_ field: UITextField) -> AnyPublisher<String, Never> {
        
        NotificationCenter.default
            .publisher(for: UITextField.textDidChangeNotification, object: field)
            .debounce(for: 0.8, scheduler: RunLoop.main)
            .compactMap { $0.object as? UITextField }
            .map { $0.text ?? "" }
            .eraseToAnyPublisher()
    }
}
