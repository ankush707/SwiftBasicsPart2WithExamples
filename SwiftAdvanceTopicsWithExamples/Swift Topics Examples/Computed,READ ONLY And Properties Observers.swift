//
//  Computed Properties.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation

//MARK: - Computed Properties

extension ExamplesVC {
    
    func computedReadOnlyPropertiesObserversExample() {
        print("\n ------------Computed Properties EXAMPLE-------------- \n ")
        
        var computedPropertiesObj = ComputedProperties()
        print(computedPropertiesObj.sumOfNumbers)
        computedPropertiesObj.sumOfNumbers = 10
        print(computedPropertiesObj.sumOfNumbers)
        
        print("\n ------------Read-Only Properties EXAMPLE-------------- \n ")
        
        var obj = TriangleStruct()
        print("Area of triangle: \(obj.areaOfTriangle)")
        
        print("\n ------------PROPERTY OBSERVER EXAMPLE-------------- \n ")
        
        let objNew = PrpertyObserverStruct()
        print(objNew.count)
        objNew.count = 15
        print(objNew.count)
    }
}

struct ComputedProperties {
    var first = FirstStruct()
    var second = SecondStruct()
    
    var sumOfNumbers: Int {
        
        get {
            return first.firstVar + second.secondVar
        }
        
        set (val) {
            first.firstVar += val
            second.secondVar += val + 100
        }
    }
}

struct FirstStruct {
    var firstVar: Int = 20
}
struct SecondStruct {
    var secondVar: Int = 10
}

//MARK: - Read-Only Computed Properties

struct TriangleStruct {
    var heightBase = 2.0, hiptenuse = 5.0
    var areaOfTriangle: Double {
        return heightBase*hiptenuse/2
    }
}

//MARK: - PROPERTY OBSERVERS

//willSet is called just before the value is stored.

//didSet is called immediately after the new value is stored.

class PrpertyObserverStruct {
    var count: Int = 5 {
        willSet(newTotalSteps) {
            print("About to set count to \(newTotalSteps)")
        }
        didSet {
            if count > oldValue  {
                print("Added \(count - oldValue) in the existing value")
            }
        }
    }
}
