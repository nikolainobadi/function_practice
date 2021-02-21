//
//  SampleScreen_Validator.swift
//  Function_Practice
//
//  Created by Nikolai Nobadi on 2/20/21.
//

class SampleScreen_Validator {
    
    func getNameError(_ name: String) -> String? {
        if name == "" {
            
            return ""
            
        } else if name.count < 4 {
            
            return "Name too short"
            
        } else {
            return nil
        }
    }
}
