//
//  Login_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/6/21.
//

import UIKit

class Login_VC: NiblessVC {
    
    var canLogin = true
    
    var isSignUp: Bool { titleLabel.text == "Sign Up" }
    
    // MARK: - VIEWS
    let titleLabel: BoringLabel = {
        let label = BoringLabel(55, autoSize: true)
        
        label.text = "Sign Up"
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
        
        button.setTitle("Sign Up", for: .normal)
        button.addTarget(self, action: #selector(didTapLoginButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    let accountButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Already have an account?", for: .normal)
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
        
        view.backgroundColor = .systemPurple
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
    
    
    // MARK: - HELPER METHODS
    func validateUsername() {
        if let username = getText(for: usernameField) {
            if username.count < 4 {
                canLogin = false
                usernameField.setErrorMessage("Short username")
            }
        } else {
            canLogin = false
        }
    }
    
    func validateEmail() {
        if let email = getText(for: emailField) {
            if !email.contains("@") {
                canLogin = false
                emailField.setErrorMessage("invalid email")
            }
        } else {
            canLogin = false
        }
    }
    
    func validatePassword() {
        if let password = getText(for: passwordField) {
            if password.count < 6 {
                canLogin = false
                passwordField.setErrorMessage("Passwords too short")
            }
        } else {
            canLogin = false
        }
    }
    
    func validateConfirm() {
        if let confirm = getText(for: confirmField) {
            guard let password = getText(for: passwordField) else { return }
            
            if confirm != password {
                canLogin = false
                confirmField.setErrorMessage("Passwords don't match")
            }
        } else {
            canLogin = false
        }
    }
    
    func getText(for field: ShadowField) -> String? {
        guard let text = field.text else { return nil }
        guard text != "" else { return nil }
        return text
    }
    
    func resetErrorLabels() {
        canLogin = true
        usernameField.setErrorMessage("")
        emailField.setErrorMessage("")
        passwordField.setErrorMessage("")
        confirmField.setErrorMessage("")
    }
    
    func validateInfo() {
        validateEmail()
        validatePassword()
        
        if isSignUp {
            validateUsername()
            validateConfirm()
        }
    }
    
    func showLoginAlert() {
        guard canLogin else { return }
        let action = isSignUp ? "signing up" : "logging in"
        Alert.showAlert(title: "Yay", message: "We're \(action)")
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didTapLoginButton(_ sender: UIButton) {
        sender.pulse()
        
        resetErrorLabels()
        validateInfo()
        showLoginAlert()
    }
    
    @objc
    func didTapAccountButton(_ sender: UIButton) {
        
        if titleLabel.text == "Sign Up" {
            usernameField.alpha = 0
            confirmField.alpha = 0
            loginButton.setTitle("Login", for: .normal)
            titleLabel.text = "Login"
            accountButton.setTitle("Don't have an account?", for: .normal)
        } else {
            usernameField.alpha = 1
            confirmField.alpha = 1
            loginButton.setTitle("Sign Up", for: .normal)
            titleLabel.text = "Sign Up"
            accountButton.setTitle("Already have an account?", for: .normal)
        }
    }
}




