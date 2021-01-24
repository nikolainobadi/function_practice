//
//  AlertHandler.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 1/24/21.
//

import UIKit

struct Alert {
    
    static func showAlert(title: String = "Uh oh", message: String) {
        showBasicAlert(title: title, message: message)
    }
    
    // MARK: - PRIVATE METHODS
    private static func showBasicAlert(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        
        alertController.show()
    }
}



