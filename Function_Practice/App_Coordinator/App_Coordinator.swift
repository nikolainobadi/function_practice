//
//  App_Coordinator.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

import UIKit

class App_Coordinator {
    
    // MARK: - PROPERTIES
    let practicingCombine = true
    let navVC: UINavigationController
    
    
    // MARK: - INIT & Start
    init(_ navVC: UINavigationController) {
        self.navVC = navVC
    }
    
    func start() {
        if practicingCombine {
            showSampleScreen()
        } else {
            showLogin()
        }
    }
}


// MARK: - VC Creation
extension App_Coordinator {
    
    
    // MARK: Sample Screen
    func showSampleScreen() {
        let vc = makeSampleScreen_VC()
        navVC.pushViewController(vc, animated: true)
    }
    
    func makeSampleScreen_VC() -> SampleScreen_VC {
        let rootView = SampleScreen_RootView(backgroundColor: .systemPurple)
        let manager = SampleScreen_Manager()
        let subscriber = SampleScreen_Subscriber()
        let vc = SampleScreen_VC(rootView: rootView, manager: manager, subscriber: subscriber)
        
        rootView.responder = manager
        
        subscriber.responder = vc
        subscriber.subscribe_nameField(rootView.nameField)
        subscriber.subscribe_sampleScreenState(manager.$state)
        
        return vc
    }
    
    
    // MARK: Login
    func showLogin() {
        let vc = makeLogin_VC()
        navVC.pushViewController(vc, animated: true)
    }
    
    func makeLogin_VC() -> Login_VC {
        let vc = Login_VC()
        return vc
    }
}
