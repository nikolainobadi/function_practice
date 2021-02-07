//
//  Premium.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import Foundation

struct Premium: Hashable {
    let id: String = UUID().uuidString
    var name: String // spanish
    var rate: Float // .50
    var oneTime: Bool // false
}

extension Premium {
    
    static var empty: Premium {
        return Premium(name: "", rate: 0, oneTime: false)
    }
}









