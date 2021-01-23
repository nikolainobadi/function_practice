//
//  Home_RootView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit

class Home_RootView: NiblessView {
    
    // MARK: - RESPONDER
    weak var responder: Home_UIResponder?
    
    
    // MARK: - PROPERTIES
    let targetText = "Target Monthly Pay:"
    let hourlyText = "Hourly Rate:"
    
    
    // MARK: - VIEWS
    lazy var targetAmountView: TitleFieldView = {
        TitleFieldView(targetText)
    }()
    
    lazy var hourlyRateView: TitleFieldView = {
        TitleFieldView(hourlyText)
    }()
    
   
    
    let calculateButton: ShadowButton = {
        let button = ShadowButton()
        
        button.setTitle("Caclulate", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(didTapCalculateButton), for: .touchUpInside)
        
        return button
    }()
    
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
        addSubview(targetAmountView)
        addSubview(hourlyRateView)
        addSubview(calculateButton)
    }
    
    func setupConstraints() {
        targetAmountView.anchor(safeAreaLayoutGuide.topAnchor, left: leftAnchor, right: rightAnchor, topConstant: 50, leftConstant: 5, rightConstant: 5)
        targetAmountView.anchorCenterXToSuperview()
        
        hourlyRateView.anchor(targetAmountView.bottomAnchor, left: leftAnchor, right: rightAnchor, topConstant: 50, leftConstant: 5, rightConstant: 5)
        hourlyRateView.anchorCenterXToSuperview()
        
        calculateButton.anchor(bottom: safeAreaLayoutGuide.bottomAnchor, bottomConstant: 10, widthConstant: 200, heightConstant: 50)
        calculateButton.anchorCenterXToSuperview()
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didTapAddButton() {
        responder?.showPremiumDetail(nil)
    }
    
    @objc
    func didTapCalculateButton() {
    }
}
