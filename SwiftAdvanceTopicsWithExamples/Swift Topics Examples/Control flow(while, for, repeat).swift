//
//  For loops.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation

// REFERANCE - https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html
extension ExamplesVC {
    
    func loopsExample() {
        self.simpleLoop()
        self.forInLoop()
        self.forInWithIndex()
        self.forLoopWithStride()
        self.whileLoop()
        self.repeatWhileLoops()
    }
    //MARK: - Simple For Loop 
    func simpleLoop() {
        print("\n ------------SIMPLE LOOP - 0 to 4( equal) to EXAMPLE-------------- \n ")
        for name in 0...4 {
            print("Hello, \(name)!")
        }
        print("\n ------------SIMPLE LOOP - 0 to less then 4 to EXAMPLE-------------- \n ")
        for name in 0..<4 {
            print("Hello, \(name)!")
        }
        
    }
    
    //MARK: - For Loop With Index
    func forInLoop() {
        print("\n ------------FOR IN LOOP EXAMPLE-------------- \n ")
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            print("Hello, \(name)!")
        }
    }
    
    //MARK: - For Loop With Index for dict
    func forInWithIndex() {
        print("\n ------------FOR IN LOOP WITH INDEX EXAMPLE-------------- \n ")
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        }
    }
    
    //MARK: - For Loop With Stride
    
    func forLoopWithStride() {
        print("\n ------------FOR STRIDE EXAMPLE-------------- \n ")
        let minuteInterval = 5
        for tickMark in stride(from: 0, to: 60, by: minuteInterval) {
            // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
            print(tickMark)
        }
    }
    
    //MARK: - WHILE LOOP
    func whileLoop() {
        print("\n ------------WHILE LOOP EXAMPLE-------------- \n ")
        var i = 0
        while i < 5 {
            print("i is less then 5; value of i = \(i)")
            i += 1
        }
    }
    
    //MARK: - REPEAT WHILE LOOP
    //The other variation of the while loop, known as the repeat-while loop, performs a single pass through the loop block first, before considering the loop’s condition. It then continues to repeat the loop until the condition is false.
    func repeatWhileLoops() {
        print("\n ------------REPEAT WHILE LOOP EXAMPLE-------------- \n ")
        var i = 0
        
        repeat {
            print("i is less then 5; value of i = \(i)")
            i += 1
        } while i < 5
    }
}
