//
//  Generics, In out and stride.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 05/01/23.
//

import Foundation

extension ExamplesVC {
  
    //MARK: - GENERIC METHODS
    //- Here using genrics we are reversing the array of integers, doubles and strings using SINGLE FUNCTION
    
    func simpleGenericExamples() {
        
        var arrayStrings = ["Ankush", "Arun", "Sanjeev", "Ankita", "Suraj"]
        var arrayIntegers = [3, 25, 16, 7, 3, 23, 43]
        var arrayDoubles = [23.34, 23.25, 11.16, 22.7, 33.3, 44.23, 43]
        
        print("\n ------------GENERICS -------------- \n ")
        print("Arrays before reversing")
        print(arrayStrings)
        print(arrayIntegers)
        print(arrayDoubles)
        print("\n Arrays after reversing")
        print(self.reverseArray(arrayData: arrayStrings))
        print(self.reverseArray(arrayData: arrayIntegers))
        print(self.reverseArray(arrayData: arrayDoubles))
        
    }
    
    func reverseArray<T>(arrayData: Array<T>) -> [T] {
        
        var reversedArr = [T]()
        
        for arrayIndex in stride(from: arrayData.count - 1, through: 0, by: -1) {
            reversedArr.append(arrayData[arrayIndex])
        }
        return reversedArr
    }
    
}

extension ExamplesVC {
    
    func genericWithInout() {
        //MARK: - INOUT WITH GENERIC FUNCTION
        //In swap function, we cannot modify the param value directly so we have to define it with 'inout'
        print("\n ------------GENERICS WITH INOUT-------------- \n ")
        
        var firstInt = 13
        var secondInt = 17
        
        var firstStr = "Ankush"
        var secondStr = "Sharma"
        self.swapTwoObjects(firstObj: &firstInt, secondObj: &secondInt)
        self.swapTwoObjects(firstObj: &firstStr, secondObj: &secondStr)
    }
    
    func swapTwoObjects<T>( firstObj: inout T, secondObj: inout T) {
        
        print("\nFirst Object: \(firstObj)")
        print("Second Object: \(secondObj)")
        
        let tempObj = firstObj
        
        firstObj = secondObj
        secondObj = tempObj
        
        print("After Swapping using genric func")
        print("First Object: \(firstObj)")
        print("Second Object: \(secondObj)")
    }
}
