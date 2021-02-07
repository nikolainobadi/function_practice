//
//  PremiumDetail_Protocols.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

protocol PremiumDetail_UIResponder: AnyObject {
    func toggleOneTime()
    func addPremium()
}

protocol PremiumDetail_SubResponder: AnyObject {
    func updateName(_ name: String)
    func updateRate(_ rate: Float)
}
