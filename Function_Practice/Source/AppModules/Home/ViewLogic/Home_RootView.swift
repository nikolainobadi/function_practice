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
    var dataSource: PremiumDataSource!
    
    // MARK: - PROPERTIES
    let targetText = "Target Monthly Pay:"
    let hourlyText = "Hourly Rate:"
    
    
    // MARK: - VIEWS
    let titleLabel: BoringLabel = {
        let label = BoringLabel(50, autoSize: true)
        
        label.text = "What's my pay?"
        label.textAlignment = .center
        
        return label
    }()
    
    lazy var targetAmountView: TitleFieldView = {
        return TitleFieldView(targetText)
    }()
    
    lazy var hourlyRateView: TitleFieldView = {
        return TitleFieldView(hourlyText)
    }()
    
    lazy var bonusDollarsView: TitleFieldView = {
        return TitleFieldView("Bonus So far")
    }()
    
    lazy var premiumTableView: UITableView = {
        let table = UITableView()
        
        dataSource = PremiumDataSource(table)
        
        table.dataSource = dataSource
        table.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        
        return table
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
        addSubview(titleLabel)
        addSubview(targetAmountView)
        addSubview(hourlyRateView)
        addSubview(bonusDollarsView)
        addSubview(calculateButton)
        addSubview(premiumTableView)
    }
    
    func setupConstraints() {
        titleLabel.anchor(safeAreaLayoutGuide.topAnchor, left: leftAnchor, right: rightAnchor, topConstant: 10, leftConstant: 10, rightConstant: 10)
        
        targetAmountView.anchor(titleLabel.bottomAnchor, left: leftAnchor, right: rightAnchor, topConstant: 20, leftConstant: 5, rightConstant: 5, heightConstant: 50)
        targetAmountView.anchorCenterXToSuperview()
        
        hourlyRateView.anchor(targetAmountView.bottomAnchor, left: leftAnchor, right: rightAnchor, topConstant: 10, leftConstant: 5, rightConstant: 5, heightConstant: 50)
        hourlyRateView.anchorCenterXToSuperview()
        
        bonusDollarsView.anchor(hourlyRateView.bottomAnchor, left: leftAnchor, right: rightAnchor, topConstant: 10, leftConstant: 5, rightConstant: 5, heightConstant: 50)
        bonusDollarsView.anchorCenterXToSuperview()
        
        calculateButton.anchor(bottom: safeAreaLayoutGuide.bottomAnchor, bottomConstant: 10, widthConstant: 200, heightConstant: 50)
        calculateButton.anchorCenterXToSuperview()
        
        premiumTableView.anchor(centerYAnchor, left: leftAnchor, bottom: calculateButton.topAnchor, right: rightAnchor)
    }
    
    
    // MARK: - ACTIONS
    @objc
    func didTapAddButton() {
        responder?.showPremiumDetail(nil)
    }
    
    @objc
    func didTapCalculateButton(_ sender: UIButton) {
        sender.pulse()
        responder?.calculate()
    }
}


// MARK: - Interface
extension Home_RootView: Home_Interface {
    
    func updatePremiumList(_ list: [Premium]) {
        dataSource.updateList(list)
    }
}
