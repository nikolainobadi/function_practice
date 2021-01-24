//
//  TitleView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/23/21.
//

class TitleView: NiblessView {
    
    // MARK: - VIEWS
    let detailLabel: BoringLabel = {
        let label = BoringLabel(20)
        
        label.textAlignment = .right
        
        return label
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
    }
    
    func setupConstraints() {
        detailLabel.anchor(left: leftAnchor, right: centerXAnchor, rightConstant: 10)
        detailLabel.anchorCenterYToSuperview()
    }
}

