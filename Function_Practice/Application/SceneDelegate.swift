//
//  SceneDelegate.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: App_Coordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        setupWindow(with: scene)
        setupCoordinator()
        enterApp()
    }
}


// MARK: - HELPER METHODS
extension SceneDelegate {
    
    func setupWindow(with scene: UIScene?) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
    }
    
    func setupCoordinator() {
        let navVC = UINavigationController()
        
        coordinator = App_Coordinator(navVC)
        window?.rootViewController = navVC
    }
    
    func enterApp() {
        coordinator?.start()
        window?.makeKeyAndVisible()
    }
}

