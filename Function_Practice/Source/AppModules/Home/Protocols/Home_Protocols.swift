//
//  Home_Protocols.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit


// MARK: Interface
protocol Home_Interface: UIView {
    
}


// MARK: UIResponder
protocol Home_UIResponder: AnyObject {
    func showPremiumDetail(_ premium: Premium) 
}
