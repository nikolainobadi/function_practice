//
//  Home_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

class Home_VC: NiblessVC {
    
    // MARK: - PROPERTIES
    let manager: Home_Manager
    
    // MARK: - VIEWS
    let rootView: Home_Interface
    
    
    // MARK: - INITIALIZATION
    init(rootView: Home_Interface, manager: Home_Manager) {
        
        self.rootView = rootView
        self.manager = manager
        super.init(hasTextFields: true)
    }
    
    
    // MARK: - LIFE CYCLE
    override func loadView() {
        view = rootView
    }
}
