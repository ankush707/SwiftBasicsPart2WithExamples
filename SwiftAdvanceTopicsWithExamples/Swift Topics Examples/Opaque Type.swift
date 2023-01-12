//
//  Opaque Type.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 10/01/23.
//

import Foundation

//OPAQUE TYPES: - A function or method with an opaque return type hides its return value’s type information. Instead of providing a concrete type as the function’s return type, the return value is described in terms of the protocols it supports.

extension ExamplesVC {
    
    func opaqueTypeExample(str : String) -> some Triangle {
        let obj = Triangle()
        obj.create(str: str)
        return obj
    }
    
    func opaqueTypesExample() {
        print("\n ------------OPAQUE TYPES EXAMPLE-------------- \n ")
        let obj = self.opaqueTypeExample(str: "Ankush")
        print(obj)
    }
}


protocol PrintShape {
    
    func create(str: String) -> String
}

class Triangle: PrintShape {
    func create(str: String) -> String {
        return str + " Sharma"
    }
}
