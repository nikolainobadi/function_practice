//
//  File.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/24/21.
//

import UIKit
import Combine

class BaseSubscriber {
    var subs = Set<AnyCancellable>()
}

extension BaseSubscriber {
    
    func subscribeTo(textField: UITextField, completion: @escaping (String) -> Void) {
        NotificationCenter.default
            .publisher(for: UITextField.textDidChangeNotification, object: textField)
            .debounce(for: 0.8, scheduler: RunLoop.main)
            .compactMap { $0.object as? UITextField }
            .map { $0.text ?? "" }
            .sink { text in
                completion(text)
            }
            .store(in: &subs)
    }
}
