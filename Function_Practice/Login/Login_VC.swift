//
//  Login_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/6/21.
//

import UIKit

class Login_VC: NiblessVC {
    
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
    
    
    // MARK: - ACTIONS
    @objc
    func didTapLoginButton(_ sender: UIButton) {
        sender.pulse()
        
        let isSignUp = titleLabel.text == "Sign Up"
        
        usernameField.setErrorMessage("")
        emailField.setErrorMessage("")
        passwordField.setErrorMessage("")
        confirmField.setErrorMessage("")
        
        guard let username = usernameField.text else { return }
        guard let email = emailField.text else { return }
        guard let password = passwordField.text else { return }
        guard let confirm = confirmField.text else { return }
        
        if isSignUp {
            guard username != "" else { return }
            
            guard username.count >= 4 else {
                usernameField.setErrorMessage("Username too short")
                return
            }
            
        }
        
        guard email != "" else { return }
        guard email.contains("@") && email.contains(".com") else {
            emailField.setErrorMessage("Invalid Email")
            return
        }
        
        guard password != "" else { return }
        guard password.count >= 6 else {
            passwordField.setErrorMessage("Password too short")
            return
        }
        
        if isSignUp {
            guard confirm == password else {
                confirmField.setErrorMessage("Passwords don't match")
                return
            }
        }
        
        
        let action = isSignUp ? "signing up" : "logging in"
        Alert.showAlert(title: "Yay", message: "We're \(action)")
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




