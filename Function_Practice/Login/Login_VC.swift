//
//  Login_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/6/21.
//

import UIKit

class Login_VC: NiblessVC {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - VIEWS
    let titleLabel: BoringLabel = {
        let label = BoringLabel(55, autoSize: true, withShadow: true)
        
        label.textAlignment = .center
        
        return label
    }()
    
    let usernameField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Username..."
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    let emailField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Email..."
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    let passwordField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Password..."
        tf.isSecureTextEntry = true
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    let confirmField: ShadowField = {
        let tf = ShadowField(22, withErrorLabel: true)
        
        tf.placeholder = "Confirm Password..."
        tf.isSecureTextEntry = true
        tf.autocapitalizationType = .none
        
        return tf
    }()
    
    let loginButton: ShadowButton = {
        let button = ShadowButton()
        
        button.addTarget(self, action: #selector(didTapLoginButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    let accountButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapAccountButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    
    // MARK: - INITIALIZATION
    init() {
        super.init(hasTextFields: true)
    }
    
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        setupConstraints()
    }
    
    
    // MARK: - DISPLAY SETUP
    func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(usernameField)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(confirmField)
        
        view.addSubview(loginButton)
        view.addSubview(accountButton)
    }
    
    func setupConstraints() {
        
        titleLabel.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, topConstant: 10)
        
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
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didTapLoginButton(_ sender: UIButton) {
        sender.pulse()
        
    }
    
    @objc
    func didTapAccountButton(_ sender: UIButton) {
        
    }
}




