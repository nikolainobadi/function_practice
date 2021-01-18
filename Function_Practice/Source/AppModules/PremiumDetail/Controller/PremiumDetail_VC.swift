//
//  PremiumDetail_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

class PremiumDetail_VC: NiblessVC {
    
    // MARK: - PROPERTIES
    let manager: PremiumDetail_Manager
    
    // MARK: - VIEWS
    let rootView: PremiumDetail_RootView
    
    
    // MARK: - INITIALIZATION
    init(rootView: PremiumDetail_RootView, manager: PremiumDetail_Manager) {
        
        self.rootView = rootView
        self.manager = manager
        super.init(hasTextFields: true)
    }
    
    
    // MARK: - LIFE CYCLE
    override func loadView() {
        view = rootView
    }
}
