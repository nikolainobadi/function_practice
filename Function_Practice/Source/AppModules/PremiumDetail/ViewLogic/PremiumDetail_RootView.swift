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
    let titleLabel: BoringLabel = {
        let label = BoringLabel(50)
        
        label.text = "Premium!!!"
        label.textAlignment = .center
        
        return label
    }()
    
    let nameView: TitleFieldView = {
        let view = TitleFieldView("Premium Name", keyboardType: .default, rightConstant: 10)
        
        view.textField.placeholder = "Enter name..."
        view.textField.textAlignment = .center
        
        return view
    }()
    
    let rateView: TitleFieldView = {
        let view = TitleFieldView("Premium Rate")
        return view
    }()
    
    let toggleView: ToggleView = {
        return ToggleView("One Time Toggle")
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
        addSubview(titleLabel)
        addSubview(nameView)
        addSubview(rateView)
        addSubview(toggleView)
        addSubview(saveButton)
    }
    
    func setupConstraints() {
        titleLabel.anchor(safeAreaLayoutGuide.topAnchor, left: leftAnchor, right: rightAnchor, topConstant: 70, leftConstant: 10, rightConstant: 10)
        
        nameView.anchor(left: leftAnchor, bottom: centerYAnchor, right: rightAnchor, leftConstant: 30, bottomConstant: 20, rightConstant: 30, heightConstant: 50)
        
        rateView.anchor(centerYAnchor, left: leftAnchor, right: rightAnchor, topConstant: 50, leftConstant: 30, rightConstant: 30, heightConstant: 50)
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

