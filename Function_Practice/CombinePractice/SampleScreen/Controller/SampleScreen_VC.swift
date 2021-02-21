//
//  SampleScreen_VC.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

class SampleScreen_VC: NiblessVC {
    
    // MARK: - PROPERTIES
    let manager: SampleScreen_Actions
    let subscriber: SampleScreen_Subscriber
    
    
    // MARK: - VIEWS
    let rootView: SampleScreen_Interface
    
    
    // MARK: - INITIALIZATION
    init(rootView: SampleScreen_Interface, manager: SampleScreen_Actions, subscriber: SampleScreen_Subscriber) {
        
        self.rootView = rootView
        self.manager = manager
        self.subscriber = subscriber
        super.init(hasTextFields: true)
    }
    
    
    // MARK: - LIFE CYCLE
    override func loadView() {
        view = rootView
    }
}


// MARK: - SubResponder
extension SampleScreen_VC: SampleScreen_SubResponder {
    
    func updateViewState(_ state: SampleScreen_State) {
        rootView.updateView(with: state)
    }
    
    func updateName(_ name: String) {
        manager.updateName(name)
    }
}
