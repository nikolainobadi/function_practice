//
//  SampleScreen_RootView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

import UIKit

class SampleScreen_RootView: NiblessView {
    
    // MARK: - Responder
    weak var responder: SampleScreen_UIResponder?
    
    
    // MARK: - VIEWS
    let nameField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Username..."
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    let loginButton: ShadowButton = {
        let button = ShadowButton()
        
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(didTapLoginButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    
    // MARK: - DISPLAYS SETUP
    override func addSubviews() {
        addSubview(nameField)
        addSubview(loginButton)
    }
    
    override func setupConstraints() {
        nameField.anchor(bottom: centerYAnchor, bottomConstant: 10, widthConstant: 300, heightConstant: 50)
        nameField.anchorCenterXToSuperview()
        
        loginButton.anchor(centerYAnchor, topConstant: 10, widthConstant: 300, heightConstant: 50)
        loginButton.anchorCenterXToSuperview()
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didTapLoginButton(_ sender: UIButton) {
        sender.pulse()
        responder?.login()
    }
}


// MARK: - Interface
extension SampleScreen_RootView: SampleScreen_Interface {
    
    func updateView(with state: SampleScreen_State) {
        updateNameField(state.nameError)
        updateLoginButton(state.canLogin)
    }
}


// MARK: - HELPER METHODS
extension SampleScreen_RootView {
    
    func updateNameField(_ nameError: String?) {
        let error = nameError ?? ""
        nameField.setErrorMessage(error)
    }
    
    func updateLoginButton(_ canLogin: Bool) {
        if canLogin {
            enableButton(loginButton)
        } else {
            disableButton(loginButton)
        }
    }
    
    func enableButton(_ button: ShadowButton) {
        button.alpha = 1
        button.isEnabled = true
    }
    
    func disableButton(_ button: ShadowButton) {
        button.alpha = 0.5
        button.isEnabled = false
    }
}
