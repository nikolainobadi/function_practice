//
//  SampleScreen_State.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

struct SampleScreen_State {
    var name = ""
    var nameError: String? = ""
    
    var canLogin: Bool { nameError == nil }
}
