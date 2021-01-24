//
//  PremiumDetail_RootView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit

class PremiumDetail_RootView: NiblessView {
    
    // MARK: - RESPONDER
    weak var responder: PremiumDetail_UIResponder?
    
    
    // MARK: - VIEWS
    let nameField: ShadowField = {
        let field = ShadowField()
        return field
    }()
    
    let rateField: ShadowField = {
        let field = ShadowField()
        return field
    }()
    
    
    
    lazy var oneTimeToggle: UISwitch = {
        let toggle = UISwitch()
        toggle.addTarget(self, action: #selector(didChangeOneTimeToggle), for: .valueChanged)
        return toggle
    }()
    
    lazy var addPremiumButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAddButton))
        return button
    }()
    
    lazy var saveButton: ShadowButton = {
        let button = ShadowButton()
        
        button.setTitle("Save", for: .normal)
        button.addTarget(self, action: #selector(didTapSaveButton(_:)), for: .touchUpInside)
        
        return button
    }()
    
    
    // MARK: - INITIALIZATION
    init() {
        super.init(frame: .zero)
        addSubviews()
        setupConstraints()
        
        backgroundColor = .white
    }
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - DISPLAYS SETUP
    func addSubviews() {
        addSubview(nameField)
        addSubview(rateField)
        addSubview(oneTimeToggle)
        addSubview(saveButton)
    }
    
    func setupConstraints() {
        nameField.anchor(safeAreaLayoutGuide.topAnchor, left: leftAnchor, right: rightAnchor, topConstant: 50, leftConstant: 30, rightConstant: 30)
        
        rateField.anchor(nameField.bottomAnchor, left: leftAnchor, right: rightAnchor, topConstant: 50, leftConstant: 30, rightConstant: 30)
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didTapAddButton() {
        
    }
    
    @objc
    func didChangeOneTimeToggle() {
        
    }
    
    @objc
    func didTapSaveButton(_ sender: UIButton) {
        sender.pulse()
        
    }
}

