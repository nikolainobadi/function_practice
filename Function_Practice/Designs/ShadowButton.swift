//
//  ShadowButton.swift
//  Layout_Practice
//
//  Created by Nikolai Nobadi on 1/12/21.
//

import UIKit

class ShadowButton: UIButton {
    
    init(frame: CGRect = .zero, fontSize: CGFloat = 20, insets: Bool = true) {
        super.init(frame: frame)
        self.titleLabel?.font = UIFont(name: "MarkerFelt-Thin", size: fontSize)
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.titleLabel?.minimumScaleFactor = 0.2
        self.setTitleColor(.systemBackground, for: .normal)
        self.backgroundColor = .label
        if insets {
            self.contentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
        layer.borderWidth = 1.0
        layer.shadowOffset = CGSize(width: 1, height: 2.0)
        layer.shadowRadius = 4
        layer.shadowColor = UIColor.label.cgColor
        layer.masksToBounds = false
        layer.shadowOpacity = 1.0
    }
}
