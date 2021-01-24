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
    init(_ detail: String, keyboardType: UIKeyboardType = .decimalPad, rightConstant: CGFloat = 50) {
        super.init(detail)
        
        addSubviews()
        setupConstraints(rightConstant: rightConstant)
        
        textField.keyboardType = keyboardType
    }
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - DISPLAYS SETUP
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(textField)
    }
    
    func setupConstraints(rightConstant: CGFloat) {
        super.setupConstraints()
        
        textField.anchor(left: centerXAnchor, right: rightAnchor, leftConstant: 10, rightConstant: rightConstant)
        textField.anchorCenterYToSuperview()
    }
}
