//
//  Home_Protocols.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

// MARK: UIResponder
protocol Home_UIResponder: AnyObject {
    func showPremiumDetail(_ premium: Premium?)
    func calculate()
}


// MARK: - SubResponder
protocol Home_SubResponder: AnyObject {
    func addPremium(_ premium: Premium)
}


// MARK: - Actions
protocol Home_Actions {
    func calculate()
}
