//
//  BoringLabel.swift
//  Layout_Practice
//
//  Created by Nikolai Nobadi on 1/12/21.
//

//
//  BoringLabel.swift
//  iCleanMe2
//
//  Created by Nikolai Rivas on 10/9/19.
//  Copyright © 2019 Nikolai Nobadi. All rights reserved.
//

import UIKit

class BoringLabel: UILabel {
    
    init(_ fontSize: CGFloat, autoSize: Bool = false, thickFont: Bool = false, thonburiFont: Bool = false, withShadow: Bool = false) {
        super.init(frame: .zero)
        
        let fontName = thonburiFont ? "Thonburi" : thickFont ? "MarkerFelt-Wide" : "MarkerFelt-Thin"
        
        self.font = UIFont(name: fontName, size: fontSize)
        self.textColor = .label
        
        if autoSize {
            self.adjustsFontSizeToFitWidth = true
            self.minimumScaleFactor = 0.2
        }
        
        if withShadow {
            textColor = .systemBlue
            shadowColor = .label
            shadowOffset = CGSize(width: 0.5, height: 1)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

