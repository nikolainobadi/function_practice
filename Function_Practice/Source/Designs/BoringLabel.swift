//
//  BoringLabel.swift
//  Layout_Practice
//
//  Created by Nikolai Nobadi on 1/12/21.
//

import UIKit

class BoringLabel: UILabel {
    
    init(_ fontSize: CGFloat, autoSize: Bool = false) {
        super.init(frame: .zero)
        
        self.font = UIFont(name: "MarkerFelt-Thin", size: fontSize)
        self.textColor = .label
        
        if autoSize {
            self.adjustsFontSizeToFitWidth = true
            self.minimumScaleFactor = 0.2
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
