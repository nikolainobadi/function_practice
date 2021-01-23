//
//  TitleFieldView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/22/21.
//

class TitleFieldView: NiblessView {
    
    // MARK: - VIEWS
    let detailLabel: BoringLabel = {
        let label = BoringLabel(20)
        
        label.textAlignment = .right
        
        return label
    }()
    
    let textField: ShadowField = {
        let field = ShadowField()
        
        field.placeholder = "$0"
        field.keyboardType = .decimalPad
        
        return field
    }()
    
    // MARK: - INITIALIZATION
    init(_ detail: String) {
        super.init(frame: .zero)
        
        addSubviews()
        setupConstraints()
        
        detailLabel.text = detail
    }
    
    override func updateConstraints() {
        setupConstraints()
        super.updateConstraints()
    }
    
    
    // MARK: - DISPLAYS SETUP
    func addSubviews() {
        addSubview(detailLabel)
        addSubview(textField)
    }
    
    func setupConstraints() {
        detailLabel.anchor(left: leftAnchor, right: centerXAnchor, rightConstant: 10)
        detailLabel.anchorCenterYToSuperview()
        
        textField.anchor(left: centerXAnchor, right: rightAnchor, leftConstant: 10, rightConstant: 50)
        textField.anchorCenterYToSuperview()
    }
}
