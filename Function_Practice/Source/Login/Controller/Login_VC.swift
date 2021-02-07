//
//  Login_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/6/21.
//

import UIKit

class Login_VC: NiblessVC {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - VIEWS
    let rootView: Login_RootView
    
    
    // MARK: - INITIALIZATION
    init(rootView: Login_RootView) {
        
        self.rootView = rootView
        super.init(hasTextFields: true)
    }
    
    
    // MARK: - Life Cycle
    override func loadView() {
        view = rootView
    }
}




