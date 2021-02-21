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
        responder?.tryLogin()
    }
}
