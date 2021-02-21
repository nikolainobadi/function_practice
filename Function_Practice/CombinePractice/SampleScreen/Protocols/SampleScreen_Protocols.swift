//
//  SampleScreen_Protocols.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

import UIKit

// MARK: - Interface
protocol SampleScreen_Interface: UIView {
    func updateView(with state: SampleScreen_State)
}


// MARK: - UIResponder
protocol SampleScreen_UIResponder: AnyObject {
    func login()
}


// MARK: - SubResponder
protocol SampleScreen_SubResponder: AnyObject {
    func updateViewState(_ state: SampleScreen_State)
    func updateName(_ name: String)
}


// MARK: - Actions
protocol SampleScreen_Actions {
    func updateName(_ name: String)
}
