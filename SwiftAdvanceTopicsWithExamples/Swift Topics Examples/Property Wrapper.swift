//
//  Property Wrapper.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation

extension ExamplesVC {
    
    func properyWrapperExample() {
        print("\n ------------PROPERTY WRAPPER EXAMPLE-------------- \n ")
        var obj = PropertyWrapperStruct()
        //This will define that maximun value of an object of TwelveOrLess will be 12.0
        //So height will automatically will be set to 12.0
        // and width  = 10 at it is less then 12.0
        
        obj.height = 13.0
        obj.width = 10.0
        
        print("Area of rectangle: \(obj.areaOfSquare)")
    }
}

struct PropertyWrapperStruct {
    
    @TwelveOrLess var height: Double
    @TwelveOrLess var width: Double
    
    var areaOfSquare: Double {
        
        get {
            return height * width
        }
    }
}

//MARK: - PROPERTY WRAPPER
//This will define that maximun value of an object of TwelveOrLess will be 12.

@propertyWrapper
struct TwelveOrLess {
    private var number = 0.0
    var wrappedValue: Double {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
