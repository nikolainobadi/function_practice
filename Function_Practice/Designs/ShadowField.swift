//
//  ShadowField.swift
//  Layout_Practice
//
//  Created by Nikolai Nobadi on 1/12/21.
//

//
//  ShadowTextField.swift
//  iCleanMe2
//
//  Created by Nikolai Rivas on 9/19/19.
//  Copyright © 2019 Nikolai Nobadi. All rights reserved.
//

import UIKit

class ShadowField: UITextField {
    
    // MARK: - PROPERTIES
    let withErrorLabel: Bool
    
    
    // MARK: - VIEWS
    lazy var errorLabel: BoringLabel = {
        let label = BoringLabel(15, autoSize: true)
        
        label.textColor = .systemRed
        label.textAlignment = .center
        
        return label
    }()
    
    var attrPlaceholder: NSAttributedString {
        NSAttributedString(string: "placeholder text", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    }
    
    
    // MARK: - INIT
    init(_ fontSize: CGFloat = 20, withErrorLabel: Bool = false) {
        
        self.withErrorLabel = withErrorLabel
        super.init(frame: .zero)
        
        font = UIFont(name: "MarkerFelt-Thin", size: fontSize)
        textAlignment = .center
        attributedPlaceholder = attrPlaceholder
        keyboardAppearance = .dark
        autocorrectionType = .no
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// MARK: - Layout Subviews
extension ShadowField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        borderStyle = .none
        layer.cornerRadius = bounds.height / 2
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightGray.cgColor
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.0)
        layer.shadowRadius = 2
        layer.masksToBounds = false
        layer.shadowOpacity = 1.0
        layer.backgroundColor = UIColor.systemBackground.cgColor
        
        if withErrorLabel {
            addErrorLabel()
        }
    }
}


// MARK: - Error Label Setup
extension ShadowField {
    
    func setErrorMessage(_ message: String) {
        errorLabel.text = message
    }
    
    private func addErrorLabel() {
        addSubview(errorLabel)
        errorLabel.anchor(bottom: bottomAnchor)
        errorLabel.anchorCenterXToSuperview()
    }
}


