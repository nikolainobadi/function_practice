//
//  Premium.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/18/21.
//

import Foundation

struct Premium {
    let id: String = UUID().uuidString
    var name: String
    var rate: Float
    var oneTime: Bool
}

extension Premium {
    
    static var empty: Premium {
        return Premium(name: "", rate: 0, oneTime: false)
    }
}
