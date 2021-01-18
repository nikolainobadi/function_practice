//
//  SceneDelegate.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        let rootView = Home_RootView()
        let manager = Home_Manager()
        let vc = Home_VC(rootView: rootView, manager: manager)
        let navVC = UINavigationController(rootViewController: vc)
        
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
    }
}

