//
//  Guide.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

import UIKit


// REMEMBER!!!
// comments like this are ignored by Xcode



// MARK: - Protocol Template
protocol NamedObject {
    
    // var nameOfVariable: DataType
    
    var cannotChange_id: Int { get } //
    var canChange_Name: String { get set }
    
    func sayHello()
}


// MARK: - Regular Class
class Regular {
    
}


// MARK: - Class Template
class Guide: NamedObject {

    
    //  Required by NamedObject
    let cannotChange_id = 12345
    var canChange_Name = "This variable is required cuz of protocol NamedObject"
    
    
    //  Other Properties
    let cannotChange_numberWithDecimal: Float = 1.25
    
    var canChange_trueOrFalse: Bool = true
}

// MARK: - Function Templates
extension Guide {
    
    
    // Basic Function
    func sayHello() {
        print("Hello")
    }

    
    // MARK: One Arg/Parameter
    func sayHelloTo(name: String) {
        print("Hello,", name)
       
        // or
        
        print("Hello, \(name)")
    }
    
    func sayHello(to name: String) {
        
        // notice we use 'name' instead of 'to'
        print("Hello,", name)
        
        // the benefit is when the func is called
        
        // like this:  sayHello(to: "Nikolai")
    }
    
    
    // MARK: Two Args/Parameters
    func sayHello(firstPerson: String, secondPerson: String) {
        print("Hello \(firstPerson), what's up \(secondPerson)")
        
        // when called this looks like:
        
//        sayHello(firstPerson: "Ned", secondPerson: "Ted")
    }
    
    
    func sayHello(to firstPerson: String, and secondPerson: String) {
        print("Hello \(firstPerson), what's up \(secondPerson)")
        
        // when called this looks like:
        
//        sayHello(to: "Ned", and: "Ted")
    }
}
