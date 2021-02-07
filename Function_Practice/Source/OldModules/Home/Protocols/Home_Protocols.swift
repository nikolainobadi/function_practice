//
//  Home_Protocols.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import UIKit

// MARK: - Interface
protocol Home_Interface: UIView {
    func updatePremiumList(_ list: [Premium])
}


// MARK: UIResponder
protocol Home_UIResponder: AnyObject {
    func showPremiumDetail(_ premium: Premium?)
    func calculate()
}


// MARK: - SubResponder
protocol Home_SubResponder: AnyObject {
    func updatePremiums(_ list: [Premium])
}

protocol Home_SummaryResponder: AnyObject {
    func updateTargetAmount(_ amount: Float)
    func updateHourlyRate(_ hourly: Float)
    func updateBonus(_ bonus: Float)
    func addPremium(_ premium: Premium)
}


// MARK: - Actions
protocol Home_Actions {
    func calculate()
}
