//
//  Type Casting.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 10/01/23.
//

import Foundation


class TypeCasting {
    var firstObj: [Any?]? = []
    var secondObj: String?
}

extension ExamplesVC {
    
    func typeCastingExample() {
        print("\n ------------TYPE CASTING EXAMPLE-------------- \n ")
        
        let classObj = TypeCasting()
        classObj.firstObj?.append(3)
        classObj.firstObj?.append("ankush")
        classObj.secondObj = "Ankush"
        
        //MARK: - Checking type
        for obj in classObj.firstObj! {
            if obj is Int {
                print("This is integer")
            } else if obj is String {
                print("This is String")
            }
        }
        
        //MARK: - Downcasting
        for obj in classObj.firstObj! {
            
            if let new = obj as? Int {
                print("Total value after adding 10 in the initial number \(new+10)")
            }
        }
        
        //MARK: - Upcasting
        
        let obj: UpcastingClass = ChildClass() as UpcastingClass
        
        print(obj.intVal)
        
    }
}


class UpcastingClass {
    var intVal : Int = 2
}

class ChildClass: UpcastingClass {
    
}
