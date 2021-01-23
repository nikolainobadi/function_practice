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
    let rootView: Home_RootView
    
    
    // MARK: - INITIALIZATION
    init(rootView: Home_RootView, manager: Home_Manager) {
        
        self.rootView = rootView
        self.manager = manager
        super.init(hasTextFields: true)
    }
    
    
    // MARK: - LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
    }
    
    override func loadView() {
        view = rootView
    }
    
    
    // MARK: - DISPLAY SETUP
    func setupNavBar() {
        navigationItem.rightBarButtonItem = rootView.addPremiumButton
    }
}


// MARK: - UIResponder
extension Home_VC: Home_UIResponder {
    
    
    // MARK: - Show Premium
    func showPremiumDetail(_ premium: Premium?) {
        let premium = premium ?? Premium.empty
        let vc = makePremiumDetail_VC(premium)
        present(vc, animated: true, completion: nil)
    }
    
    private func makePremiumDetail_VC(_ premium: Premium) -> PremiumDetail_VC {
        
        let rootView = PremiumDetail_RootView()
        let manager = PremiumDetail_Manager(premium)
        let vc = PremiumDetail_VC(rootView: rootView, manager: manager)
        
        rootView.responder = manager
        
        return vc
    }
    
    
    // MARK: - Calculate
    func calculate() {
        
    }
}
