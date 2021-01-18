//
//  Home_RootView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit

class Home_RootView: NiblessView {
    
    // MARK: - RESPONDER
    
    
    
    // MARK: - VIEWS
    lazy var addPremiumButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAddButton))
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
        
    }
    
    func setupConstraints() {
        
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didTapAddButton() {
        
    }
}
