//
//  Closures Types.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation

//Referance - https://docs.swift.org/swift-book/LanguageGuide/Closures.html

//Global and nested functions, as introduced in Functions, are actually special cases of closures. Closures take one of three forms:
//
//1. Global functions are closures that have a name and don’t capture any values.

//2. Nested functions are closures that have a name and can capture values from their enclosing function.

//3. Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.

//Swift’s closure expressions have a clean, clear style, with optimizations that encourage brief, clutter-free syntax in common scenarios. These optimizations include:

//1. Inferring parameter and return value types from context

//2. Implicit returns from single-expression closures

//3. Shorthand argument names

//4. Trailing closure syntax


//MARK: - Type Alias
typealias EmptyHandler = () -> ()
typealias CompletionHandlerWithParams = (String, Int) -> ()
typealias CompletionHandlerWithReturnType = (Int) -> (Int)


extension ExamplesVC {
    
    func closuresExamples() {
        self.defaultClosueFromApple()
        self.userDefinedClosures()
    }
    
    func defaultClosueFromApple() {
        print("\n ------------CLOSURES EXAMPLE-------------- \n ")
        var names = ["Ankush", "Sharma", "Harleen", "Ankita", "Karan"]
        
        //Here you notice sorted creates an new array object
        let reversedArr = names.sorted { str1, str2 in
            str1 > str2
        }
        print("\n ------------decending order USING SORTED CLOSURE-------------- \n ")
        print(reversedArr)
        
        //Here we use SORT; which modify the original Array
        names.sort { name1, name2 in
            name1 < name2
        }
        print("\n ------------decending order USING SORT CLOSURE-------------- \n ")
        print(names)
    }
    
    //MARK: - User Defined Closures
    
    func userDefinedClosures() {
        
        var emptyHandler : () -> ()
        var completionHandlerWithParams : (String, Int) -> ()
        var completionHandlerWithReturnType : (Int) -> (Int)
        
        
        self.userDefinedClosureInFuncCallNonEscaping {
            print("Non escaping completion handler")
        }
        
        self.userDefinedClosureInFuncCallEscaping {
            print("Escaping completion handler")
        }
        
        
        func userDefinedClosureInFuncCallInsideFunction(completion: EmptyHandler) {
            print("Empty completion in function call")
        }
        
        userDefinedClosureInFuncCallInsideFunction {
            print("Nested Completion handler")
        }
    }
    
    func userDefinedClosureInFuncCallNonEscaping(completion: EmptyHandler) {
        print("Empty completion in function call")
    }
    
    func userDefinedClosureInFuncCallEscaping(completion: @escaping EmptyHandler) {
        print("Empty completion in function call")
    }
}
