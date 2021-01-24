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
        let subscriber = Home_Subscriber()
        let vc = Home_VC(rootView: rootView, manager: manager, subscriber: subscriber)
        let navVC = UINavigationController(rootViewController: vc)
        
        rootView.responder = vc
        
        subscriber.responder = vc
        subscriber.summaryResponder = manager
        subscriber.subscribe_premiumList(manager.$premiums)
        subscriber.subscribe_targetAmountField(rootView.targetAmountView.textField)
        subscriber.subscribe_hourlyField(rootView.hourlyRateView.textField)
        subscriber.subscribe_bonusField(rootView.bonusDollarsView.textField)
        
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
    }
}

