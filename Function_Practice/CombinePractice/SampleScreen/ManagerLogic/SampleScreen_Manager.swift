//
//  SampleScreen_Manager.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

import Foundation

class SampleScreen_Manager {
    
    // MARK: - PROPERTIES
    let validator: SampleScreen_Validator
    
    @Published var state: SampleScreen_State
    
    
    // MARK: - INIT
    init(_ state: SampleScreen_State = SampleScreen_State(), validator: SampleScreen_Validator = SampleScreen_Validator()) {
        
        self.state = state
        self.validator = validator
    }
}


extension SampleScreen_Manager: SampleScreen_Actions {
    
    func updateName(_ name: String) {
        let error = validator.getNameError(name)
        
        state.name = name
        state.nameError = error
    }
}



// MARK: - UIResponder
extension SampleScreen_Manager: SampleScreen_UIResponder {
    
    func login() {
        Alert.showAlert(title: "Yay", message: "We're did it!")
    }
}
