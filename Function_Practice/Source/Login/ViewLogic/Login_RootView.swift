//
//  Login_RootView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/6/21.
//

import UIKit

class Login_RootView: NiblessView {

    // MARK: - VIEWS
    lazy var titleLabel: BoringLabel = {
        let label = BoringLabel(55, autoSize: true, withShadow: true)
        
        label.textAlignment = .center
        
        return label
    }()
    
    lazy var usernameField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Username..."
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    lazy var emailField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Email..."
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    lazy var passwordField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Password..."
        tf.isSecureTextEntry = true
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    lazy var confirmField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Confirm Password..."
        tf.isSecureTextEntry = true
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    lazy var loginButton: ShadowButton = {
        let button = ShadowButton()
        
        button.addTarget(self, action: #selector(didTapLoginButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    lazy var accountButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapAccountButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Forgot password?", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapForgotPasswordButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    
    // MARK: - INITIALIZATION
    init() {
        super.init(frame: .zero)
        addSubviews()
        setupConstraints()
    }
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - DISPLAYS SETUP
    private func addSubviews() {
        addSubview(titleLabel)
        addSubview(usernameField)
        addSubview(emailField)
        addSubview(passwordField)
        addSubview(confirmField)
        
        addSubview(loginButton)
        addSubview(accountButton)
        addSubview(forgotPasswordButton)
    }
    
    private func setupConstraints() {
        
        titleLabel.anchor(safeAreaLayoutGuide.topAnchor, left: leftAnchor, right: rightAnchor, topConstant: 10)
        
        usernameField.anchor(titleLabel.bottomAnchor, topConstant: 100, widthConstant: 300, heightConstant: 50)
        usernameField.anchorCenterXToSuperview()
        
        emailField.anchor(usernameField.bottomAnchor, topConstant: 5, widthConstant: 300, heightConstant: 50)
        emailField.anchorCenterXToSuperview()
        
        passwordField.anchor(emailField.bottomAnchor, topConstant: 5, widthConstant: 300, heightConstant: 50)
        passwordField.anchorCenterXToSuperview()
        
        confirmField.anchor(passwordField.bottomAnchor, topConstant: 5, widthConstant: 300, heightConstant: 50)
        confirmField.anchorCenterXToSuperview()
        
        loginButton.anchor(confirmField.bottomAnchor, topConstant: 40, widthConstant: 300, heightConstant: 50)
        loginButton.anchorCenterXToSuperview()
        
        accountButton.anchor(loginButton.bottomAnchor, widthConstant: 300, heightConstant: 50)
        accountButton.anchorCenterXToSuperview()
        
        forgotPasswordButton.anchor(bottom: safeAreaLayoutGuide.bottomAnchor, bottomConstant: 10, widthConstant: 300, heightConstant: 50)
        forgotPasswordButton.anchorCenterXToSuperview()
    }
}
 

// MARK: - ACTIONS
extension Login_RootView {
    
    @objc func didTapLoginButton(_ sender: UIButton) {
        sender.pulse()
        
    }
    
    @objc func didTapAccountButton(_ sender: UIButton) {
        
    }
    
    @objc func didTapForgotPasswordButton(_ sender: UIButton) {
        
    }
}


//// MARK: - Interface
//extension Login_RootView: Login_Interface {
//    
//    func update(with state: LoginState) {
//        titleLabel.text = state.loginTitle
//        accountButton.setTitle("\(state.accountButtonPrefix) an account?", for: .normal)
//        
//        configureLoginButton(state)
//        configureErrors(state)
//        configureAlphas(state.isSignUp)
//    }
//    
//    private func configureLoginButton(_ state: LoginState) {
//        let ready = state.isSignUp ? state.readyToSignUp : state.readyToLogin
//        
//        loginButton.alpha = ready ? 1 : 0.5
//        loginButton.isEnabled = ready
//        loginButton.setTitle(state.loginTitle, for: .normal)
//    }
//    
//    private func configureErrors(_ state: LoginState) {
//        usernameField.setErrorMessage(state.nameStatus)
//        emailField.setErrorMessage(state.emailStatus)
//        passwordField.setErrorMessage(state.passwordStatus)
//        confirmField.setErrorMessage(state.confirmStatus)
//    }
//    
//    private func configureAlphas(_ isSignUp: Bool) {
//        usernameField.alpha = isSignUp ? 1 : 0
//        confirmField.alpha = isSignUp ? 1 : 0
//        forgotPasswordButton.alpha = isSignUp ? 0 : 1
//    }
//}


