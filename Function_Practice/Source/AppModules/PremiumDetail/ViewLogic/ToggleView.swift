//
//  ToggleView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/24/21.
//

import UIKit

class ToggleView: TitleView {
    
    // MARK: - Responder
    weak var responder: PremiumDetail_UIResponder?
    
    
    // MARK: - VIEWS
    lazy var toggle: UISwitch = {
        let field = UISwitch()
        
        field.addTarget(self, action: #selector(didChangeToggle), for: .valueChanged)
        
        return field
    }()
    
    // MARK: - INITIALIZATION
    override init(_ detail: String) {
        super.init(detail)
        
        addSubviews()
        setupConstraints()
    }
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - DISPLAYS SETUP
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(toggle)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        toggle.anchor(right: rightAnchor, rightConstant: 30)
        toggle.anchorCenterYToSuperview()
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didChangeToggle() {
        responder?.toggleOneTime()
    }
}

