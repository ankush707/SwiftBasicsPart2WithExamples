//
//  If, if let and advance operators .swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation

extension ExamplesVC {
    
    func ifAndIfLetStatementExample() {
        self.ifstatement()
        self.ifstatementWithMultipleConditions()
        self.ifstatementWithNestedConditions()
        self.ifLetWithConditional()
        self.ifLetShortHand()
    }
    
    //MARK: - If Statement
    func ifstatement() {
        print("\n ------------IF STATEMENT EXAMPLE-------------- \n ")
        var obj = IfModel(strNormal: "Ankush", intNormal: 5)
        
        if obj.strNormal == "Ankush" {
            obj.strOptional = "Sharma"
        } else {
            print("Else condition in IF-Statement")
        }
    }
    
    //MARK: - If Statement with multiple conditions
    
    func ifstatementWithMultipleConditions() {
        print("\n ------------IF STATEMENT WITH MULTIPLE CONDITIONS EXAMPLE-------------- \n ")
        var obj = IfModel(strNormal: "Ankush", intNormal: 5)
        
        if obj.strNormal == "Ankush" && obj.intNormal == 5 {
            print("Mutiple conditions in if statement")
        }
    }
    
    //MARK: - If Statement with nested conditions
    
    func ifstatementWithNestedConditions() {
        print("\n ------------IF STATEMENT WITH NESTED CONDTIONS EXAMPLE-------------- \n ")
        var obj = IfModel(strNormal: "Karan", intNormal: 10)
        if obj.strNormal == "Karan" {
            if obj.intNormal == 10 {
                print("Nested Conditions in if statement")
            }
            
        }
    }
    
    //MARK: - If let Statement with conditionals
    
    func ifLetWithConditional() {
        print("\n ------------IF LET WITH CONDTIONALS STATEMENT EXAMPLE-------------- \n ")
        var obj = IfModel(strNormal: "Karan", intNormal: 10)
        
        if let intOptional = obj.intOptional {
            print("Optional is not nil; and value is: \(intOptional)")
        } else {
            print("Optional is nit")
        }
        
        if let str = obj.strOptional, !str.isEmpty {
            print("\(obj.strNormal) \(str)")
        }
    }
    
    //MARK: - Short hand If Statement
    
    func ifLetShortHand() {
        print("\n ------------IF LET WITH SHORTHAND STATEMENT EXAMPLE-------------- \n ")
        var intVal : Int? = 40
        
        if let intVal {
            print("ShortHand If let statement: value is: \(intVal)")
        }
    }
    
}


//MARK: - Model
struct IfModel {
    var strOptional: String?
    var strNormal: String
    var intOptional: Int?
    var intNormal: Int
}
