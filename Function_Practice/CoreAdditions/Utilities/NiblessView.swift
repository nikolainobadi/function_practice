//
//  NiblessView.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

//

import UIKit

class NiblessView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    @available(*, unavailable, message: "Can't load from a nib, fool!")
    required init?(coder: NSCoder) {
        fatalError("Can't load from a nib, fool!")
    }
}

