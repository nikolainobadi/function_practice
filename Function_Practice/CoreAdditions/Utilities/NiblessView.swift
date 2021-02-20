//
//  NiblessView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

//

import UIKit

class NiblessView: UIView {
    
    // MARK: - INIT
    init(backgroundColor: UIColor? = .white) {
        super.init(frame: .zero)
        
        addSubviews()
        setupConstraints()
        self.backgroundColor = backgroundColor
    }
    
    @available(*, unavailable, message: "Can't load from a nib, fool!")
    required init?(coder: NSCoder) {
        fatalError("Can't load from a nib, fool!")
    }
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - Display Setup
    func addSubviews() {}
    
    func setupConstraints() {}
}

