//
//  NiblessVC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit

class NiblessVC: UIViewController {
    
    init(hasTextFields: Bool) {
        super.init(nibName: nil, bundle: nil)
        
        if hasTextFields {
            hideKeyboardWhenTappedAround()
        }
    }
    
    @available(*, unavailable, message: "Can't load VC from nib.")
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @available(*, unavailable, message: "Can't load VC from nib.")
    required init?(coder aDecoder: NSCoder) {
        fatalError("Can't load VC from nib.")
    }
}

