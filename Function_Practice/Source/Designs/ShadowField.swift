//
//  ShadowField.swift
//  Layout_Practice
//
//  Created by Nikolai Nobadi on 1/12/21.
//

import UIKit

class ShadowField: UITextField {
    
    init(_ fontSize: CGFloat = 20) {
        super.init(frame: .zero)
        self.font = UIFont(name: "MarkerFelt-Thin", size: fontSize)
        self.textAlignment = .center
        let attrPlaceholder: NSAttributedString = NSAttributedString(string: "placeholder text", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        self.attributedPlaceholder = attrPlaceholder
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        // set backgroundColor in order to cover the shadow inside the bounds
        if #available(iOS 13.0, *) {
            layer.backgroundColor = UIColor.systemBackground.cgColor
        } else {
            // Fallback on earlier versions
            layer.backgroundColor = UIColor.white.cgColor
        }
    }
}


