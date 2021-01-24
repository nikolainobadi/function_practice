//
//  TitleFieldView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/22/21.
//

import UIKit

class TitleFieldView: TitleView {
    
    // MARK: - VIEWS
    lazy var textField: ShadowField = {
        let field = ShadowField()
        
        field.placeholder = "$0"
        
        return field
    }()
    
    // MARK: - INITIALIZATION
    init(_ detail: String, keyboardType: UIKeyboardType) {
        super.init(detail)
        
        addSubviews()
        setupConstraints()
        
        textField.keyboardType = keyboardType
    }
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - DISPLAYS SETUP
    override func addSubviews() {
        addSubview(textField)
    }
    
    override func setupConstraints() {
        textField.anchor(left: centerXAnchor, right: rightAnchor, leftConstant: 10, rightConstant: 50)
        textField.anchorCenterYToSuperview()
    }
}
