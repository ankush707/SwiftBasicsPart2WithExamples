//
//  Functions.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation
//Referance - https://docs.swift.org/swift-book/LanguageGuide/Extensions.html

//MARK: - Extension of ExampleVC
//Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you don’t have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions don’t have names.)
//
//Extensions in Swift can:
//
//Add computed instance properties and computed type properties
//
//Define instance methods and type methods
//
//Provide new initializers
//
//Define subscripts
//
//Define and use new nested types
//
//Make an existing type conform to a protocol


extension ExamplesVC {
    
    func functionsExamples() {
        
        self.emptyFunctionCall()
        self.functionWithoutArgumentLabelsCall(36000, "Ankush")
        self.functionWithArgumentLabelsCall(salary: 46000, name: "Arun")
    
        //MARK: - EXAMPLE OF NESTED FUNCTIONS
        var salaryFromReturnType: Int = self.functionWithReturnTypeCall(name: "Ankush")
        print(salaryFromReturnType)
        
        var toupleObj: (String, String, Int) = self.functionWithToupleReturnTypeCall(salaryFromReturnType: salaryFromReturnType)
        print(toupleObj)
        
        let doubleValueFromVariadic = self.functionWithVariadicReturnTypeCall(doubleValues: 5.71, 2.6, 3.9, 8.9)
        
        print("Sum of double values from Variadic Params: \(doubleValueFromVariadic)")
    }
    
    //MARK: - Empty Funtional Call
    
    func emptyFunctionCall() {
        print("\n ------------NORMAL FUNCTION CALL-------------- \n ")
        print("Empty Function Call")
    }
    
    //MARK: - Funtional Call Without Specifying Argument Labels
    
    func functionWithoutArgumentLabelsCall(_ salary: Int,_ name: String) {
        print("\n ------------Funtional Call Without Specifying Argument Labels EXAMPLE-------------- \n ")
        print("Name is: \(name) and salary is \(salary) per month.")
    }
    
    //MARK: - Funtional Call With Specifying Argument Labels
    
    func functionWithArgumentLabelsCall(salary integerValue: Int,name stringValue: String) {
        print("\n ------------Funtional Call With Specifying Argument Labels EXAMPLE-------------- \n ")
        print("Name is: \(stringValue) and salary is \(integerValue) per month.")
    }
    
    
    //MARK: - Funtional Call With Return Type
    
    func functionWithReturnTypeCall(name: String) -> Int {
        print("\n ------------Funtional Call With Return Type EXAMPLE-------------- \n ")
        print("Name is: \(name).")
        return 55000
    }
    
    
    //MARK: - Funtional Call With Tuple Return Type
    
    func functionWithToupleReturnTypeCall(salaryFromReturnType: Int) -> (String, String, Int) {
        print("\n ------------Funtional Call With Touple Return Type EXAMPLE-------------- \n ")
        print("Salary is: \(salaryFromReturnType).")
        return ("Sharma", "Mohali", salaryFromReturnType)
    }
    
    
    //MARK: - Funtional Call With Variadic Parameters
    
    func functionWithVariadicReturnTypeCall(doubleValues: Double...) -> Double {
        print("\n ------------Funtional Call With Variadic Parameters EXAMPLE-------------- \n ")
        
        return doubleValues.reduce(0) { partialResult, obj in
            partialResult + obj
        }
    }
    

}
