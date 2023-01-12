//
//  Array and Sets.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation

extension ExamplesVC {
    
    func arrayCall() {
        
        //Array with specific count
        var computeArray: Array<Float> = Array(repeating: 0, count: 12)
        
        //elements that can be inserted allocated to the array
        print(computeArray.count)
        //Space allocated to the array
        print(computeArray.capacity)
        
        
        //Simple Array
        let arrayWithoutDefining = [3, 5, 2, 2, 56, 45]
        let arrayWithDataType: [Int] = [3, 5, 2, 2, 56, 45]
        
        //Array with defined type
        let array: Array<Int> = [3, 5, 2, 2, 56, 45]
        let arrayString: Array<String> = ["A", "C", "k"]
        
        // Optional Array
        let OptionalArray: Array<Int>? = [3, 5, 2, 2, 56, 45]
        
        //Array with Optional type
        let arrayWithOptionalType: Array<String?> = ["A", nil, "k"]
        
        //Sets
        
        let setObj: Set<Int> = [3, 4, 5, 6, 6, 8, 3]
        
        print(setObj)
    }
}
