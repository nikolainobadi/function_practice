//
//  SampleScreen_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

class SampleScreen_VC: NiblessVC {
    
    // MARK: - PROPERTIES
    let manager: SampleScreen_Manager
    
    
    // MARK: - VIEWS
    let rootView: SampleScreen_Interface
    
    
    // MARK: - INITIALIZATION
    init(rootView: SampleScreen_Interface, manager: SampleScreen_Manager) {
        
        self.rootView = rootView
        self.manager = manager
        super.init(hasTextFields: true)
    }
    
    
    // MARK: - LIFE CYCLE
    override func loadView() {
        view = rootView
    }
}
